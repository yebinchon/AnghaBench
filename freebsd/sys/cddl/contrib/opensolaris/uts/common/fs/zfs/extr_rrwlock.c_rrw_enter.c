
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rrwlock_t ;
typedef scalar_t__ krw_t ;


 scalar_t__ RW_READER ;
 int rrw_enter_read (int *,void*) ;
 int rrw_enter_write (int *) ;

void
rrw_enter(rrwlock_t *rrl, krw_t rw, void *tag)
{
 if (rw == RW_READER)
  rrw_enter_read(rrl, tag);
 else
  rrw_enter_write(rrl);
}
