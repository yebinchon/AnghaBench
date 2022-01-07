
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 size_t strlen (char*) ;
 char tolower (unsigned char) ;

int
dname_lab_startswith(uint8_t* label, char* prefix, char** endptr)
{
 size_t plen = strlen(prefix);
 size_t orig_plen = plen;
 size_t lablen = (size_t)*label;
 if(plen > lablen)
  return 0;
 label++;
 while(plen--) {
  if(*prefix != tolower((unsigned char)*label)) {
   return 0;
  }
  prefix++; label++;
 }
 if(orig_plen < lablen)
  *endptr = (char *)label;
 else

  *endptr = ((void*)0);
 return 1;
}
