
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;

int
subset_compare (char *string_to_compare, char *template_string)
{
  int match;
  if (template_string != (char *) ((void*)0) && string_to_compare != (char *) ((void*)0)
      && strlen (string_to_compare) <= strlen (template_string))
    match =
      (strncmp
       (template_string, string_to_compare, strlen (string_to_compare)) == 0);
  else
    match = 0;
  return match;
}
