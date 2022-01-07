
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dumpout (int) ;
 int resolve_ccdname (char*) ;

__attribute__((used)) static int
dump_ccd(int argc, char **argv)
{
 int i, error;

 if (argc == 0) {
  error = dumpout(-1);
 } else {
  error = 0;
  for (i = 0; error == 0 && i < argc; i++)
   error = dumpout(resolve_ccdname(argv[i]));
 }
 return (error);
}
