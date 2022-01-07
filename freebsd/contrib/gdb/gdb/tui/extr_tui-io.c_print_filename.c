
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PUTX (char) ;

__attribute__((used)) static int
print_filename (char *to_print, char *full_pathname)
{
  int printed_len = 0;
  char *s;

  for (s = to_print; *s; s++)
    {
      PUTX (*s);
    }
  return printed_len;
}
