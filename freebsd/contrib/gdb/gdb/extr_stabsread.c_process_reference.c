
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static int
process_reference (char **string)
{
  char *p;
  int refnum = 0;

  if (**string != '#')
    return 0;


  p = *string + 1;


  while (*p && isdigit (*p))
    {
      refnum = refnum * 10 + *p - '0';
      p++;
    }
  *string = p;
  return refnum;
}
