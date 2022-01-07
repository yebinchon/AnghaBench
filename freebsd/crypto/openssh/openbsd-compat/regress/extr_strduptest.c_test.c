
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail ;
 int free (char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;

void
test(const char *a)
{
 char *b;

 b = strdup(a);
 if (b == 0) {
  fail = 1;
  return;
 }
 if (strcmp(a, b) != 0)
  fail = 1;
 free(b);
}
