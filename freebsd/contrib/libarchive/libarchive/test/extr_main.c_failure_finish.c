
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTRA_DUMP (void*) ;
 int EXTRA_ERRNO (void*) ;
 int abort () ;
 scalar_t__ dump_on_failure ;
 int fprintf (int ,char*) ;
 int logprintf (char*,int ) ;
 int stderr ;

__attribute__((used)) static void
failure_finish(void *extra)
{
 (void)extra;







 if (dump_on_failure) {
  fprintf(stderr,
      " *** forcing core dump so failure can be debugged ***\n");
  abort();
 }
}
