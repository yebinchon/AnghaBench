
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ dname_lab_cmp (int *,int,int *,int,int*) ;

int
dname_strict_subdomain(uint8_t* d1, int labs1, uint8_t* d2, int labs2)
{
 int m;

 if(labs2 >= labs1)
  return 0;
 if(dname_lab_cmp(d1, labs1, d2, labs2, &m) > 0) {

  return (m == labs2);
 }
 return 0;
}
