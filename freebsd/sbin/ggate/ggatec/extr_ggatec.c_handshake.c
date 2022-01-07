
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ver ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int gs_mediasize; int gc_token; int gc_path; int gv_version; int gv_magic; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct g_gate_version {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int gs_mediasize; int gc_token; int gc_path; int gv_version; int gv_magic; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct g_gate_sinit {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int gs_mediasize; int gc_token; int gc_path; int gv_version; int gv_magic; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct g_gate_cinit {scalar_t__ gv_error; int gc_flags; int gc_nconn; scalar_t__ gs_error; scalar_t__ gs_sectorsize; int gs_mediasize; int gc_token; int gc_path; int gv_version; int gv_magic; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int sinit ;
typedef int serv ;
typedef int cinit ;


 int AF_INET ;
 int GGATE_MAGIC ;
 int GGATE_VERSION ;
 scalar_t__ INADDR_NONE ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MSG_NOSIGNAL ;
 int MSG_WAITALL ;
 int SOCK_STREAM ;
 int assert (int) ;
 int bcopy (int ,int ,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int flags ;
 int g_gate_log (int ,char*,...) ;
 int g_gate_recv (int,struct sockaddr_in*,int,int ) ;
 int g_gate_send (int,struct sockaddr_in*,int,int ) ;
 int g_gate_socket_settings (int) ;
 scalar_t__ g_gate_str2ip (int ) ;
 int g_gate_swap2h_cinit (struct sockaddr_in*) ;
 int g_gate_swap2h_sinit (struct sockaddr_in*) ;
 int g_gate_swap2n_cinit (struct sockaddr_in*) ;
 int g_gate_swap2n_version (struct sockaddr_in*) ;
 int host ;
 int htons (int ) ;
 int mediasize ;
 int path ;
 int port ;
 scalar_t__ sectorsize ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;
 int token ;

__attribute__((used)) static int
handshake(int dir)
{
 struct g_gate_version ver;
 struct g_gate_cinit cinit;
 struct g_gate_sinit sinit;
 struct sockaddr_in serv;
 int sfd;




 bzero(&serv, sizeof(serv));
 serv.sin_family = AF_INET;
 serv.sin_addr.s_addr = g_gate_str2ip(host);
 if (serv.sin_addr.s_addr == INADDR_NONE) {
  g_gate_log(LOG_DEBUG, "Invalid IP/host name: %s.", host);
  return (-1);
 }
 serv.sin_port = htons(port);
 sfd = socket(AF_INET, SOCK_STREAM, 0);
 if (sfd == -1) {
  g_gate_log(LOG_DEBUG, "Cannot open socket: %s.",
      strerror(errno));
  return (-1);
 }

 g_gate_socket_settings(sfd);

 if (connect(sfd, (struct sockaddr *)&serv, sizeof(serv)) == -1) {
  g_gate_log(LOG_DEBUG, "Cannot connect to server: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }

 g_gate_log(LOG_INFO, "Connected to the server: %s:%d.", host, port);




 g_gate_log(LOG_DEBUG, "Sending version packet.");
 assert(strlen(GGATE_MAGIC) == sizeof(ver.gv_magic));
 bcopy(GGATE_MAGIC, ver.gv_magic, sizeof(ver.gv_magic));
 ver.gv_version = GGATE_VERSION;
 ver.gv_error = 0;
 g_gate_swap2n_version(&ver);
 if (g_gate_send(sfd, &ver, sizeof(ver), MSG_NOSIGNAL) == -1) {
  g_gate_log(LOG_DEBUG, "Error while sending version packet: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }
 bzero(&ver, sizeof(ver));
 if (g_gate_recv(sfd, &ver, sizeof(ver), MSG_WAITALL) == -1) {
  g_gate_log(LOG_DEBUG, "Error while receiving data: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }
 if (ver.gv_error != 0) {
  g_gate_log(LOG_DEBUG, "Version verification problem: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }




 g_gate_log(LOG_DEBUG, "Sending initial packet.");
 if (strlcpy(cinit.gc_path, path, sizeof(cinit.gc_path)) >=
     sizeof(cinit.gc_path)) {
  g_gate_log(LOG_DEBUG, "Path name too long.");
  close(sfd);
  return (-1);
 }
 cinit.gc_flags = flags | dir;
 cinit.gc_token = token;
 cinit.gc_nconn = 2;
 g_gate_swap2n_cinit(&cinit);
 if (g_gate_send(sfd, &cinit, sizeof(cinit), MSG_NOSIGNAL) == -1) {
         g_gate_log(LOG_DEBUG, "Error while sending initial packet: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }
 g_gate_swap2h_cinit(&cinit);




 g_gate_log(LOG_DEBUG, "Receiving initial packet.");
 if (g_gate_recv(sfd, &sinit, sizeof(sinit), MSG_WAITALL) == -1) {
  g_gate_log(LOG_DEBUG, "Error while receiving data: %s.",
      strerror(errno));
  close(sfd);
  return (-1);
 }
 g_gate_swap2h_sinit(&sinit);
 if (sinit.gs_error != 0) {
         g_gate_log(LOG_DEBUG, "Error from server: %s.",
      strerror(sinit.gs_error));
  close(sfd);
  return (-1);
 }
 g_gate_log(LOG_DEBUG, "Received initial packet.");

 mediasize = sinit.gs_mediasize;
 if (sectorsize == 0)
  sectorsize = sinit.gs_sectorsize;

 return (sfd);
}
