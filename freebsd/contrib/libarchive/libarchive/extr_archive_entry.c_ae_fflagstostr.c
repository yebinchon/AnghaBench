
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag {char* name; unsigned long set; unsigned long clear; } ;


 struct flag* flags ;
 scalar_t__ malloc (size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
ae_fflagstostr(unsigned long bitset, unsigned long bitclear)
{
 char *string, *dp;
 const char *sp;
 unsigned long bits;
 const struct flag *flag;
 size_t length;

 bits = bitset | bitclear;
 length = 0;
 for (flag = flags; flag->name != ((void*)0); flag++)
  if (bits & (flag->set | flag->clear)) {
   length += strlen(flag->name) + 1;
   bits &= ~(flag->set | flag->clear);
  }

 if (length == 0)
  return (((void*)0));
 string = (char *)malloc(length);
 if (string == ((void*)0))
  return (((void*)0));

 dp = string;
 for (flag = flags; flag->name != ((void*)0); flag++) {
  if (bitset & flag->set || bitclear & flag->clear) {
   sp = flag->name + 2;
  } else if (bitset & flag->clear || bitclear & flag->set) {
   sp = flag->name;
  } else
   continue;
  bitset &= ~(flag->set | flag->clear);
  bitclear &= ~(flag->set | flag->clear);
  if (dp > string)
   *dp++ = ',';
  while ((*dp++ = *sp++) != '\0')
   ;
  dp--;
 }

 *dp = '\0';
 return (string);
}
