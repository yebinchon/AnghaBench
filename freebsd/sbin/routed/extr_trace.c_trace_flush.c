
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int * ftrace ;
 int strerror (scalar_t__) ;
 int trace_off (char*,int ) ;

void
trace_flush(void)
{
 if (ftrace != ((void*)0)) {
  fflush(ftrace);
  if (ferror(ftrace))
   trace_off("tracing off: %s", strerror(ferror(ftrace)));
 }
}
