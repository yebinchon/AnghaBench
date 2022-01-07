
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static int
label_compare_lower(uint8_t* lab1, uint8_t* lab2, size_t lablen)
{
 size_t i;
 for(i=0; i<lablen; i++) {
  if(tolower((unsigned char)*lab1) != tolower((unsigned char)*lab2)) {
   if(tolower((unsigned char)*lab1) < tolower((unsigned char)*lab2))
    return -1;
   return 1;
  }
  lab1++;
  lab2++;
 }
 return 0;
}
