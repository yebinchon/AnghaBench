
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* tfff_p1 ;
 int tfff_p1_freed ;
 void* tfff_p2 ;
 int tfff_p2_freed ;

__attribute__((used)) static void
tfff_free(void *p)
{
 if (! p)
  return;
 if (p == tfff_p1)
  ++tfff_p1_freed;
 if (p == tfff_p2)
  ++tfff_p2_freed;
 free(p);
}
