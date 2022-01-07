
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char cch_t ;


 int strtoul (char*,char**,int) ;

__attribute__((used)) static unsigned long
str_const_to_ul (cch_t * str, cch_t ** ppz, int base)
{
  char * pz;
  int rv = strtoul (str, &pz, base);
  *ppz = pz;
  return rv;
}
