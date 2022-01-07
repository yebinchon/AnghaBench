
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;


 int AU_TO_NO_WRITE ;
 int AU_TO_WRITE ;
 int LOG_ERR ;
 scalar_t__ au_close (int,int ,short) ;
 int au_free_token (int *) ;
 int au_open () ;
 int * au_to_return32 (char,int) ;
 int au_write (int,int *) ;
 int kAUCloseErr ;
 int kAUMakeReturnTokErr ;
 int kAUNoErr ;
 int kAUOpenErr ;
 int kAUWriteCallerTokErr ;
 int kAUWriteReturnTokErr ;
 int kAUWriteSubjectTokErr ;
 int syslog (int ,char*,char*) ;

int
audit_write(short event_code, token_t *subject, token_t *misctok, char retval,
    int errcode)
{
 int aufd;
 char *func = "audit_write()";
 token_t *rettok;

 if ((aufd = au_open()) == -1) {
  au_free_token(subject);
  au_free_token(misctok);
  syslog(LOG_ERR, "%s: au_open() failed", func);
  return (kAUOpenErr);
 }


 if (subject && au_write(aufd, subject) == -1) {
  au_free_token(subject);
  au_free_token(misctok);
  (void)au_close(aufd, AU_TO_NO_WRITE, event_code);
  syslog(LOG_ERR, "%s: write of subject failed", func);
  return (kAUWriteSubjectTokErr);
 }


 if (misctok && au_write(aufd, misctok) == -1) {
  au_free_token(misctok);
  (void)au_close(aufd, AU_TO_NO_WRITE, event_code);
  syslog(LOG_ERR, "%s: write of caller token failed", func);
  return (kAUWriteCallerTokErr);
 }


 if ((rettok = au_to_return32(retval, errcode)) == ((void*)0)) {
  (void)au_close(aufd, AU_TO_NO_WRITE, event_code);
  syslog(LOG_ERR, "%s: au_to_return32() failed", func);
  return (kAUMakeReturnTokErr);
 }

 if (au_write(aufd, rettok) == -1) {
  au_free_token(rettok);
  (void)au_close(aufd, AU_TO_NO_WRITE, event_code);
  syslog(LOG_ERR, "%s: write of return code failed", func);
  return (kAUWriteReturnTokErr);
 }





 if (au_close(aufd, AU_TO_WRITE, event_code) < 0) {
  syslog(LOG_ERR, "%s: au_close() failed", func);
  return (kAUCloseErr);
 }

 return (kAUNoErr);
}
