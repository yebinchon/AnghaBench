
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static
int cmpsuff(const char *str, const char *suffix)
{
  size_t length_str, length_suffix;

  if ((str == ((void*)0)) || (suffix == ((void*)0)))
    return -1;

  length_str = strlen(str);
  length_suffix = strlen(suffix);

  if (length_str >= length_suffix) {
    return strcmp(str + (length_str - length_suffix), suffix);
  } else {
    return -1;
  }
}
