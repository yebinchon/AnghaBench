
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ tolower (unsigned char) ;

__attribute__((used)) static void
ldns_tolower_str(char* s)
{
 if(s) {
  while(*s) {
   *s = (char)tolower((unsigned char)*s);
   s++;
  }
 }
}
