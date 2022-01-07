
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int log_assert (int) ;
 scalar_t__ tolower (unsigned char) ;

int
query_dname_compare(register uint8_t* d1, register uint8_t* d2)
{
 register uint8_t lab1, lab2;
 log_assert(d1 && d2);
 lab1 = *d1++;
 lab2 = *d2++;
 while( lab1 != 0 || lab2 != 0 ) {


  if(lab1 != lab2) {
   if(lab1 < lab2)
    return -1;
   return 1;
  }
  log_assert(lab1 == lab2 && lab1 != 0);

  while(lab1--) {

   if(*d1 != *d2 &&
    tolower((unsigned char)*d1) != tolower((unsigned char)*d2)) {
    if(tolower((unsigned char)*d1) < tolower((unsigned char)*d2))
     return -1;
    return 1;
   }
   d1++;
   d2++;
  }

  lab1 = *d1++;
  lab2 = *d2++;
 }
 return 0;
}
