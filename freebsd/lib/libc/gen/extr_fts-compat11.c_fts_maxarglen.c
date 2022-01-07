
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char* const) ;

__attribute__((used)) static size_t
fts_maxarglen(char * const *argv)
{
 size_t len, max;

 for (max = 0; *argv; ++argv)
  if ((len = strlen(*argv)) > max)
   max = len;
 return (max + 1);
}
