
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int ENTERS (char const*) ;
 int PAM_HOST ;
 int PAM_RHOST ;
 int PAM_RUSER ;
 int PAM_SERVICE ;
 int PAM_SUCCESS ;
 int PAM_TRY_AGAIN ;
 int PAM_TTY ;
 int PAM_USER ;
 int RETURNC (int) ;
 int subst_char (char const) ;
 int subst_item (int ) ;

int
openpam_subst(const pam_handle_t *pamh,
    char *buf, size_t *bufsize, const char *template)
{
 size_t len;
 int ret;

 ENTERS(template);
 if (template == ((void*)0))
  template = "(null)";

 len = 1;
 ret = PAM_SUCCESS;
 while (*template && ret == PAM_SUCCESS) {
  if (template[0] == '%') {
   ++template;
   switch (*template) {
   case 's':
    subst_item(PAM_SERVICE);
    break;
   case 't':
    subst_item(PAM_TTY);
    break;
   case 'h':
    subst_item(PAM_HOST);
    break;
   case 'u':
    subst_item(PAM_USER);
    break;
   case 'H':
    subst_item(PAM_RHOST);
    break;
   case 'U':
    subst_item(PAM_RUSER);
    break;
   case '\0':
    subst_char('%');
    break;
   default:
    subst_char('%');
    subst_char(*template);
   }
   ++template;
  } else {
   subst_char(*template++);
  }
 }
 if (buf)
  *buf = '\0';
 if (ret == PAM_SUCCESS) {
  if (len > *bufsize)
   ret = PAM_TRY_AGAIN;
  *bufsize = len;
 }
 RETURNC(ret);
}
