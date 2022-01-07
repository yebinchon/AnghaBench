
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int visfun_t ;


 int VIS_HTTPSTYLE ;
 int VIS_MIMESTYLE ;
 int do_hvis ;
 int do_mvis ;
 int do_svis ;

__attribute__((used)) static visfun_t
getvisfun(int flags)
{
 if (flags & VIS_HTTPSTYLE)
  return do_hvis;
 if (flags & VIS_MIMESTYLE)
  return do_mvis;
 return do_svis;
}
