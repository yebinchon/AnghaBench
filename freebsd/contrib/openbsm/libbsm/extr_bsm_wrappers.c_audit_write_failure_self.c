
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int LOG_ERR ;
 int au_free_token (int *) ;
 int * au_to_me () ;
 int * au_to_text (char*) ;
 int audit_write (short,int *,int *,int,int) ;
 int kAUMakeSubjectTokErr ;
 int kAUMakeTextTokErr ;
 int syslog (int ,char*,char*) ;

int
audit_write_failure_self(short event_code, char *errmsg, int errret)
{
 char *func = "audit_write_failure_self()";
 token_t *subject, *errtok;

 if ((subject = au_to_me()) == ((void*)0)) {
  syslog(LOG_ERR, "%s: au_to_me() failed", func);
  return (kAUMakeSubjectTokErr);
 }

 if ((errtok = au_to_text(errmsg)) == ((void*)0)) {
  au_free_token(subject);
  syslog(LOG_ERR, "%s: au_to_text() failed", func);
  return (kAUMakeTextTokErr);
 }
 return (audit_write(event_code, subject, errtok, -1, errret));
}
