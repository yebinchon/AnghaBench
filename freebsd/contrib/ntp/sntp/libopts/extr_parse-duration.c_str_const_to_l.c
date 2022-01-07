
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char cch_t ;


 int strtol (char*,char**,int) ;

__attribute__((used)) static long
str_const_to_l (cch_t * str, cch_t ** ppz, int base)
{
  char * pz;
  int rv = strtol (str, &pz, base);
  *ppz = pz;
  return rv;
}
