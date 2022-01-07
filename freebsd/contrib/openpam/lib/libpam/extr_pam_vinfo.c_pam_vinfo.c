
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int pam_handle_t ;


 int FREE (char*) ;
 int PAM_TEXT_INFO ;
 int pam_vprompt (int const*,int ,char**,char const*,int ) ;

int
pam_vinfo(const pam_handle_t *pamh,
 const char *fmt,
 va_list ap)
{
 char *rsp;
 int r;

 r = pam_vprompt(pamh, PAM_TEXT_INFO, &rsp, fmt, ap);
 FREE(rsp);
 return (r);
}
