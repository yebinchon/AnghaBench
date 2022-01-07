
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int data_addr ;
struct TYPE_6__ {int pw_name; } ;
struct TYPE_5__ {int sa_family; } ;


 int AUTH_OTP ;
 int LOG_NOTICE ;
 scalar_t__ askpasswd ;
 int auth_level ;
 int curname ;
 int do_login (int,char*) ;
 int end_login () ;
 int exit (int ) ;
 int guest ;
 TYPE_1__* his_addr ;
 int * inet_ntop (int ,int ,char*,int) ;
 int krb5_verify (TYPE_2__*,char*) ;
 scalar_t__ logged_in ;
 scalar_t__ logging ;
 int login_attempts ;
 int lreply (int,char*,char*) ;
 int memset (char*,int ,int ) ;
 int otp_ctx ;
 char* otp_error (int *) ;
 scalar_t__ otp_verify_user (int *,char*) ;
 TYPE_2__* pw ;
 int remotehost ;
 int reply (int,char*) ;
 int socket_get_address (TYPE_1__*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int syslog (int ,char*,int ,char*,...) ;
 int unix_verify_user (int ,char*) ;

void
pass(char *passwd)
{
 int rval;


 if (logged_in && askpasswd == 0){
     reply(230, "Password not necessary");
     return;
 }

 if (logged_in || askpasswd == 0) {
  reply(503, "Login with USER first.");
  return;
 }
 askpasswd = 0;
 rval = 1;
 if (!guest) {
  if (pw == ((void*)0))
   rval = 1;





  else if((auth_level & AUTH_OTP) == 0) {



      if (rval)
   rval = unix_verify_user(pw->pw_name, passwd);
  } else {





  }
  memset (passwd, 0, strlen(passwd));






  if (rval) {
   char data_addr[256];

   if (inet_ntop (his_addr->sa_family,
           socket_get_address(his_addr),
           data_addr, sizeof(data_addr)) == ((void*)0))
    strlcpy (data_addr, "unknown address",
       sizeof(data_addr));

   reply(530, "Login incorrect.");
   if (logging)
    syslog(LOG_NOTICE,
        "FTP LOGIN FAILED FROM %s(%s), %s",
           remotehost,
           data_addr,
           curname);
   pw = ((void*)0);
   if (login_attempts++ >= 5) {
    syslog(LOG_NOTICE,
           "repeated login failures from %s(%s)",
           remotehost,
           data_addr);
    exit(0);
   }
   return;
  }
 }
 if(!do_login(230, passwd))
   return;


 end_login();
}
