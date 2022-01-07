
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int fprintf (scalar_t__,char*,scalar_t__) ;
 scalar_t__ initcount ;
 scalar_t__ mutex_file ;

void
ipf_mutex_clean()
{
 if (initcount != 0) {
  if (mutex_file)
   fprintf(mutex_file, "initcount %d\n", initcount);
  abort();
 }
}
