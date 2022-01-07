
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct TYPE_6__ {scalar_t__ gss_cleanup_creds; scalar_t__ kerberos_ticket_cleanup; scalar_t__ use_pam; } ;
struct TYPE_5__ {int pw; scalar_t__ krb5_ctx; int authenticated; } ;
typedef TYPE_1__ Authctxt ;


 int * auth_info_file ;
 int auth_sock_cleanup_proc (int ) ;
 int debug (char*) ;
 int free (int *) ;
 scalar_t__ is_child ;
 int krb5_cleanup_proc (TYPE_1__*) ;
 scalar_t__ mm_is_monitor () ;
 TYPE_2__ options ;
 int restore_uid () ;
 int session_destroy_all (struct ssh*,int ) ;
 int session_pty_cleanup2 ;
 int ssh_gssapi_cleanup_creds () ;
 int sshpam_cleanup () ;
 int sshpam_thread_cleanup () ;
 int temporarily_use_uid (int ) ;
 int unlink (int *) ;
 int use_privsep ;

void
do_cleanup(struct ssh *ssh, Authctxt *authctxt)
{
 static int called = 0;

 debug("do_cleanup");


 if (is_child)
  return;


 if (called)
  return;
 called = 1;

 if (authctxt == ((void*)0))
  return;
 if (!authctxt->authenticated)
  return;
 auth_sock_cleanup_proc(authctxt->pw);


 if (auth_info_file != ((void*)0)) {
  temporarily_use_uid(authctxt->pw);
  unlink(auth_info_file);
  restore_uid();
  free(auth_info_file);
  auth_info_file = ((void*)0);
 }





 if (!use_privsep || mm_is_monitor())
  session_destroy_all(ssh, session_pty_cleanup2);
}
