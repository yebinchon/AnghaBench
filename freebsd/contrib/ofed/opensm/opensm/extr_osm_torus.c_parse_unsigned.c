
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strtok (int *,char const*) ;
 unsigned int strtoul (char*,char**,int ) ;

__attribute__((used)) static
bool parse_unsigned(unsigned *result, const char *parse_sep)
{
 char *val, *nextchar;

 val = strtok(((void*)0), parse_sep);
 if (!val)
  return 0;
 *result = strtoul(val, &nextchar, 0);
 return 1;
}
