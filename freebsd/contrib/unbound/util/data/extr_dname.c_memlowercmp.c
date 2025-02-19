
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static int
memlowercmp(uint8_t* p1, uint8_t* p2, uint8_t len)
{
 while(len--) {
  if(*p1 != *p2 && tolower((unsigned char)*p1) != tolower((unsigned char)*p2)) {
   if(tolower((unsigned char)*p1) < tolower((unsigned char)*p2))
    return -1;
   return 1;
  }
  p1++;
  p2++;
 }
 return 0;
}
