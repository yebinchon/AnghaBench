
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int log_assert (int) ;
 scalar_t__ tolower (unsigned char) ;

int
dname_lab_cmp(uint8_t* d1, int labs1, uint8_t* d2, int labs2, int* mlabs)
{
 uint8_t len1, len2;
 int atlabel = labs1;
 int lastmlabs;
 int lastdiff = 0;

 if(labs1 > labs2) {
  while(atlabel > labs2) {
   len1 = *d1++;
   d1 += len1;
   atlabel--;
  }
  log_assert(atlabel == labs2);
 } else if(labs1 < labs2) {
  atlabel = labs2;
  while(atlabel > labs1) {
   len2 = *d2++;
   d2 += len2;
   atlabel--;
  }
  log_assert(atlabel == labs1);
 }
 lastmlabs = atlabel+1;




 while(atlabel > 1) {
  len1 = *d1++;
  len2 = *d2++;
  if(len1 != len2) {
   log_assert(len1 != 0 && len2 != 0);
   if(len1<len2)
    lastdiff = -1;
   else lastdiff = 1;
   lastmlabs = atlabel;
   d1 += len1;
   d2 += len2;
  } else {




   while(len1) {
    if(*d1 != *d2 && tolower((unsigned char)*d1)
     != tolower((unsigned char)*d2)) {
     if(tolower((unsigned char)*d1) <
      tolower((unsigned char)*d2)) {
      lastdiff = -1;
      lastmlabs = atlabel;
      d1 += len1;
      d2 += len1;
      break;
     }
     lastdiff = 1;
     lastmlabs = atlabel;
     d1 += len1;
     d2 += len1;
     break;
    }
    d1++;
    d2++;
    len1--;
   }
  }
  atlabel--;
 }


 *mlabs = lastmlabs-1;
 if(lastdiff == 0) {


  if(labs1 > labs2)
   return 1;
  else if(labs1 < labs2)
   return -1;
 }
 return lastdiff;
}
