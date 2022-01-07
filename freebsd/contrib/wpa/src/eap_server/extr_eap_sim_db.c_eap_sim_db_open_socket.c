
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr_un {scalar_t__ sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
struct eap_sim_db_data {int sock; int * local_sock; scalar_t__ fname; } ;
typedef int addr ;


 void* AF_UNIX ;
 int MSG_INFO ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int eap_sim_db_receive ;
 int eloop_register_read_sock (int,int ,struct eap_sim_db_data*,int *) ;
 int errno ;
 int getpid () ;
 int os_free (int *) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_snprintf (scalar_t__,int,char*,int ,int ) ;
 int * os_strdup (scalar_t__) ;
 int os_strlcpy (scalar_t__,scalar_t__,int) ;
 int os_strlen (scalar_t__) ;
 scalar_t__ os_strncmp (scalar_t__,char*,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int unlink (int *) ;
 int wpa_hexdump_ascii (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int eap_sim_db_open_socket(struct eap_sim_db_data *data)
{
 struct sockaddr_un addr;
 static int counter = 0;

 if (os_strncmp(data->fname, "unix:", 5) != 0)
  return -1;

 data->sock = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (data->sock < 0) {
  wpa_printf(MSG_INFO, "socket(eap_sim_db): %s", strerror(errno));
  return -1;
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 os_snprintf(addr.sun_path, sizeof(addr.sun_path),
      "/tmp/eap_sim_db_%d-%d", getpid(), counter++);
 os_free(data->local_sock);
 data->local_sock = os_strdup(addr.sun_path);
 if (data->local_sock == ((void*)0)) {
  close(data->sock);
  data->sock = -1;
  return -1;
 }
 if (bind(data->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_INFO, "bind(eap_sim_db): %s", strerror(errno));
  close(data->sock);
  data->sock = -1;
  return -1;
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 os_strlcpy(addr.sun_path, data->fname + 5, sizeof(addr.sun_path));
 if (connect(data->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_INFO, "connect(eap_sim_db): %s",
      strerror(errno));
  wpa_hexdump_ascii(MSG_INFO, "HLR/AuC GW socket",
      (u8 *) addr.sun_path,
      os_strlen(addr.sun_path));
  close(data->sock);
  data->sock = -1;
  unlink(data->local_sock);
  os_free(data->local_sock);
  data->local_sock = ((void*)0);
  return -1;
 }

 eloop_register_read_sock(data->sock, eap_sim_db_receive, data, ((void*)0));

 return 0;
}
