
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;


 int PAM_NUM_ERRORS ;
 char const** pam_err_text ;
 int snprintf (char*,int,char*,int) ;

const char *
pam_strerror(const pam_handle_t *pamh,
 int error_number)
{
 static char unknown[16];

 (void)pamh;
 if (error_number >= 0 && error_number < PAM_NUM_ERRORS) {
  return (pam_err_text[error_number]);
 } else {
  snprintf(unknown, sizeof unknown, "#%d", error_number);
  return (unknown);
 }
}
