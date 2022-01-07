
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 scalar_t__ initcount ;

void ipf_rwlock_clean()
{
 if (initcount != 0)
  abort();
}
