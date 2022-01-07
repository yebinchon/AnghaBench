
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (unsigned char) ;

__attribute__((used)) static int
validate_urifrag(const char *frag)
{

 while ('\0' != *frag) {
  if ( ! (isalnum((unsigned char)*frag) ||
      '-' == *frag || '.' == *frag ||
      '/' == *frag || '_' == *frag))
   return 0;
  frag++;
 }
 return 1;
}
