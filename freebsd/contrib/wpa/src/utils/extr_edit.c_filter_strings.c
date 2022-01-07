
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (char*) ;
 scalar_t__ os_strncasecmp (char*,char*,size_t) ;

__attribute__((used)) static int filter_strings(char **c, char *str, size_t len)
{
 int i, j;

 for (i = 0, j = 0; c[j]; j++) {
  if (os_strncasecmp(c[j], str, len) == 0) {
   if (i != j) {
    c[i] = c[j];
    c[j] = ((void*)0);
   }
   i++;
  } else {
   os_free(c[j]);
   c[j] = ((void*)0);
  }
 }
 c[i] = ((void*)0);
 return i;
}
