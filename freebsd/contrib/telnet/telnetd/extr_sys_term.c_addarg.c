
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (int ,char*) ;
 scalar_t__ malloc (int) ;
 int net ;
 scalar_t__ realloc (char**,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static char **
addarg(char **argv, const char *val)
{
 char **cpp;

 if (argv == ((void*)0)) {



  argv = (char **)malloc(sizeof(*argv) * 12);
  if (argv == ((void*)0))
   fatal(net, "failure allocating argument space");
  *argv++ = (char *)10;
  *argv = (char *)0;
 }
 for (cpp = argv; *cpp; cpp++)
  ;
 if (cpp == &argv[(long)argv[-1]]) {
  --argv;
  *argv = (char *)((long)(*argv) + 10);
  argv = (char **)realloc(argv, sizeof(*argv)*((long)(*argv) + 2));
  if (argv == ((void*)0))
   fatal(net, "failure allocating argument space");
  argv++;
  cpp = &argv[(long)argv[-1] - 10];
 }
 if ((*cpp++ = strdup(val)) == ((void*)0))
  fatal(net, "failure allocating argument space");
 *cpp = 0;
 return(argv);
}
