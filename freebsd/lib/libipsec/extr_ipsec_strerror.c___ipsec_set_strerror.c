
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t EIPSEC_SYSTEM_ERROR ;
 size_t __ipsec_errcode ;
 char const** ipsec_errlist ;

void __ipsec_set_strerror(const char *str)
{
 __ipsec_errcode = EIPSEC_SYSTEM_ERROR;
 ipsec_errlist[EIPSEC_SYSTEM_ERROR] = str;

 return;
}
