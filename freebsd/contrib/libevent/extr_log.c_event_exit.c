
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENT_ERR_ABORT_ ;
 int abort () ;
 int exit (int) ;
 int fatal_fn (int) ;

__attribute__((used)) static void
event_exit(int errcode)
{
 if (fatal_fn) {
  fatal_fn(errcode);
  exit(errcode);
 } else if (errcode == EVENT_ERR_ABORT_)
  abort();
 else
  exit(errcode);
}
