
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag {unsigned long set; unsigned long clear; int * name; } ;


 struct flag* flags ;
 scalar_t__ memcmp (char const*,int *,size_t) ;
 size_t strlen (int *) ;

__attribute__((used)) static const char *
ae_strtofflags(const char *s, unsigned long *setp, unsigned long *clrp)
{
 const char *start, *end;
 const struct flag *flag;
 unsigned long set, clear;
 const char *failed;

 set = clear = 0;
 start = s;
 failed = ((void*)0);

 while (*start == '\t' || *start == ' ' || *start == ',')
  start++;
 while (*start != '\0') {
  size_t length;

  end = start;
  while (*end != '\0' && *end != '\t' &&
      *end != ' ' && *end != ',')
   end++;
  length = end - start;
  for (flag = flags; flag->name != ((void*)0); flag++) {
   size_t flag_length = strlen(flag->name);
   if (length == flag_length
       && memcmp(start, flag->name, length) == 0) {

    clear |= flag->set;
    set |= flag->clear;
    break;
   } else if (length == flag_length - 2
       && memcmp(start, flag->name + 2, length) == 0) {

    set |= flag->set;
    clear |= flag->clear;
    break;
   }
  }

  if (flag->name == ((void*)0) && failed == ((void*)0))
   failed = start;


  start = end;
  while (*start == '\t' || *start == ' ' || *start == ',')
   start++;

 }

 if (setp)
  *setp = set;
 if (clrp)
  *clrp = clear;


 return (failed);
}
