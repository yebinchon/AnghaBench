
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
string_skip_whitespace(char *string)
{

 while (*string && ((*string == ' ') || (*string == '\t')))
  string++;

 return (string);
}
