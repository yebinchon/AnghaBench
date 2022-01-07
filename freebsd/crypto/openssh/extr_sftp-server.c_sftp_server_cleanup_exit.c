
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pw_name; } ;


 int _exit (int) ;
 int * client_addr ;
 int handle_log_exit () ;
 int logit (char*,int ,int *) ;
 TYPE_1__* pw ;

void
sftp_server_cleanup_exit(int i)
{
 if (pw != ((void*)0) && client_addr != ((void*)0)) {
  handle_log_exit();
  logit("session closed for local user %s from [%s]",
      pw->pw_name, client_addr);
 }
 _exit(i);
}
