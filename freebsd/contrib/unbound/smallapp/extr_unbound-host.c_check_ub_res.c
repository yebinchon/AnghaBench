
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* ub_strerror (int) ;

__attribute__((used)) static void
check_ub_res(int r)
{
 if(r != 0) {
  fprintf(stderr, "error: %s\n", ub_strerror(r));
  exit(1);
 }
}
