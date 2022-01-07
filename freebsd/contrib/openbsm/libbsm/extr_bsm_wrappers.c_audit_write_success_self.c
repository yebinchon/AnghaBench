
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int LOG_ERR ;
 int * au_to_me () ;
 int audit_write (short,int *,int *,int ,int ) ;
 int kAUMakeSubjectTokErr ;
 int syslog (int ,char*,char*) ;

int
audit_write_success_self(short event_code, token_t *tok)
{
 token_t *subject;
 char *func = "audit_write_success_self()";

 if ((subject = au_to_me()) == ((void*)0)) {
  syslog(LOG_ERR, "%s: au_to_me() failed", func);
  return (kAUMakeSubjectTokErr);
 }

 return (audit_write(event_code, subject, tok, 0, 0));
}
