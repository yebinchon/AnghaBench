
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;
typedef int nvpair_t ;


 int VERIFY0 (int ) ;
 int nvpair_value_byte (int *,int *) ;

uchar_t
fnvpair_value_byte(nvpair_t *nvp)
{
 uchar_t rv;
 VERIFY0(nvpair_value_byte(nvp, &rv));
 return (rv);
}
