
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arc_initialized ;
 int arc_reap_zthr ;
 int dprintf (char*) ;
 int zthr_wakeup (int ) ;

__attribute__((used)) static void
hdr_recl(void *unused)
{
 dprintf("hdr_recl called\n");




 if (arc_initialized)
  zthr_wakeup(arc_reap_zthr);
}
