
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* REGISTER_NAME (int) ;
 int toupper (char const) ;

__attribute__((used)) static char *
get_reg_name (int regno)
{
  static char buf[50];
  const char *p;
  char *b;

  b = buf;

  for (p = REGISTER_NAME (regno); *p; p++)
    *b++ = toupper (*p);
  *b = '\000';

  return buf;
}
