
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int strtoul (char const*,char**,int ) ;

__attribute__((used)) static int parse_one_unsigned(const char *str, char delim, unsigned *val)
{
 char *end;
 *val = strtoul(str, &end, 0);
 if (*end)
  end++;
 return (int)(end - str);
}
