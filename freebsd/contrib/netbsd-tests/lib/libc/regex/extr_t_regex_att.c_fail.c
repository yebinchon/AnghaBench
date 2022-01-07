
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,size_t,char const*,char const*) ;
 int stderr ;

__attribute__((used)) static void
fail(const char *pattern, const char *input, size_t lineno) {
 fprintf(stderr,
     "skipping failed test at line %zu (pattern=%s, input=%s)\n",
     lineno, pattern, input);
}
