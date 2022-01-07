
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t EIPSEC_MAX ;
 size_t __ipsec_errcode ;
 char const** ipsec_errlist ;

const char *ipsec_strerror(void)
{
 if (__ipsec_errcode < 0 || __ipsec_errcode > EIPSEC_MAX)
  __ipsec_errcode = EIPSEC_MAX;

 return ipsec_errlist[__ipsec_errcode];
}
