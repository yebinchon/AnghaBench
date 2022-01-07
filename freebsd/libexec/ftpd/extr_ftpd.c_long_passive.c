
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int on ;
struct TYPE_11__ {int * s6_addr; } ;
struct TYPE_8__ {TYPE_6__ sin6_addr; } ;
struct TYPE_7__ {int sin_addr; } ;
struct TYPE_10__ {int su_family; scalar_t__ su_port; TYPE_2__ su_sin6; TYPE_1__ su_sin; int su_len; } ;
struct TYPE_9__ {int pw_uid; } ;




 int IN6_IS_ADDR_V4MAPPED (TYPE_6__*) ;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_PORTRANGE ;
 int IPV6_PORTRANGE_DEFAULT ;
 int IPV6_PORTRANGE_HIGH ;
 int IP_PORTRANGE ;
 int IP_PORTRANGE_DEFAULT ;
 int IP_PORTRANGE_HIGH ;
 int LOG_WARNING ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int UC (char) ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 int close (int) ;
 TYPE_4__ ctrl_addr ;
 scalar_t__ getsockname (int,struct sockaddr*,int *) ;
 scalar_t__ listen (int,int) ;
 int ntohs (scalar_t__) ;
 TYPE_4__ pasv_addr ;
 int pdata ;
 int perror_reply (int,char*) ;
 TYPE_3__* pw ;
 int reply (int,char*,...) ;
 scalar_t__ restricted_data_ports ;
 int seteuid (int ) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int syslog (int ,char*) ;

void
long_passive(char *cmd, int pf)
{
 socklen_t len;
 int on;
 char *p, *a;

 if (pdata >= 0)
  close(pdata);

 if (pf != PF_UNSPEC) {
  if (ctrl_addr.su_family != pf) {
   switch (ctrl_addr.su_family) {
   case 129:
    pf = 1;
    break;
   case 128:
    pf = 2;
    break;
   default:
    pf = 0;
    break;
   }




   if (strcmp(cmd, "EPSV") == 0 && pf) {
    reply(522, "Network protocol mismatch, "
     "use (%d)", pf);
   } else
    reply(501, "Network protocol mismatch.");

   return;
  }
 }

 pdata = socket(ctrl_addr.su_family, SOCK_STREAM, 0);
 if (pdata < 0) {
  perror_reply(425, "Can't open passive connection");
  return;
 }
 on = 1;
 if (setsockopt(pdata, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0)
  syslog(LOG_WARNING, "pdata setsockopt (SO_REUSEADDR): %m");

 (void) seteuid(0);

 pasv_addr = ctrl_addr;
 pasv_addr.su_port = 0;
 len = pasv_addr.su_len;
 if (bind(pdata, (struct sockaddr *)&pasv_addr, len) < 0)
  goto pasv_error;

 (void) seteuid(pw->pw_uid);

 if (getsockname(pdata, (struct sockaddr *) &pasv_addr, &len) < 0)
  goto pasv_error;
 if (listen(pdata, 1) < 0)
  goto pasv_error;



 if (strcmp(cmd, "LPSV") == 0) {
  p = (char *)&pasv_addr.su_port;
  switch (pasv_addr.su_family) {
  case 129:
   a = (char *) &pasv_addr.su_sin.sin_addr;
  v4_reply:
   reply(228,
"Entering Long Passive Mode (%d,%d,%d,%d,%d,%d,%d,%d,%d)",
         4, 4, (((int) a[0]) & 0xff), (((int) a[1]) & 0xff), (((int) a[2]) & 0xff), (((int) a[3]) & 0xff),
         2, (((int) p[0]) & 0xff), (((int) p[1]) & 0xff));
   return;
  case 128:
   if (IN6_IS_ADDR_V4MAPPED(&pasv_addr.su_sin6.sin6_addr)) {
    a = (char *) &pasv_addr.su_sin6.sin6_addr.s6_addr[12];
    goto v4_reply;
   }
   a = (char *) &pasv_addr.su_sin6.sin6_addr;
   reply(228,
"Entering Long Passive Mode "
"(%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d)",
         6, 16, (((int) a[0]) & 0xff), (((int) a[1]) & 0xff), (((int) a[2]) & 0xff), (((int) a[3]) & 0xff),
         (((int) a[4]) & 0xff), (((int) a[5]) & 0xff), (((int) a[6]) & 0xff), (((int) a[7]) & 0xff),
         (((int) a[8]) & 0xff), (((int) a[9]) & 0xff), (((int) a[10]) & 0xff), (((int) a[11]) & 0xff),
         (((int) a[12]) & 0xff), (((int) a[13]) & 0xff), (((int) a[14]) & 0xff), (((int) a[15]) & 0xff),
         2, (((int) p[0]) & 0xff), (((int) p[1]) & 0xff));
   return;
  }
 } else if (strcmp(cmd, "EPSV") == 0) {
  switch (pasv_addr.su_family) {
  case 129:
  case 128:
   reply(229, "Entering Extended Passive Mode (|||%d|)",
    ntohs(pasv_addr.su_port));
   return;
  }
 } else {

 }

pasv_error:
 (void) seteuid(pw->pw_uid);
 (void) close(pdata);
 pdata = -1;
 perror_reply(425, "Can't open passive connection");
 return;
}
