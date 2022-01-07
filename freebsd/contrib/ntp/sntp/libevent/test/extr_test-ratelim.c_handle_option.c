
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int* ptr; long min; scalar_t__ isbool; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
handle_option(int argc, char **argv, int *i, const struct option *opt)
{
 long val;
 char *endptr = ((void*)0);
 if (opt->isbool) {
  *opt->ptr = 1;
  return 0;
 }
 if (*i + 1 == argc) {
  fprintf(stderr, "Too few arguments to '%s'\n",argv[*i]);
  return -1;
 }
 val = strtol(argv[*i+1], &endptr, 10);
 if (*argv[*i+1] == '\0' || !endptr || *endptr != '\0') {
  fprintf(stderr, "Couldn't parse numeric value '%s'\n",
      argv[*i+1]);
  return -1;
 }
 if (val < opt->min || val > 0x7fffffff) {
  fprintf(stderr, "Value '%s' is out-of-range'\n",
      argv[*i+1]);
  return -1;
 }
 *opt->ptr = (int)val;
 ++*i;
 return 0;
}
