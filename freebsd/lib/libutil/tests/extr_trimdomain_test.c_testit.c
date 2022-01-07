
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 int tests ;
 int trimdomain (char*,int) ;

void
testit(const char *input, int hostsize, const char *output, const char *test)
{
 char *testhost;
 const char *expected = (output == ((void*)0)) ? input : output;

 testhost = strdup(input);
 trimdomain(testhost, hostsize < 0 ? (int)strlen(testhost) : hostsize);
 tests++;
 if (strcmp(testhost, expected) != 0) {
  printf("not ok %d - %s\n", tests, test);
  printf("# %s -> %s (expected %s)\n", input, testhost, expected);
 } else
  printf("ok %d - %s\n", tests, test);
 free(testhost);
 return;
}
