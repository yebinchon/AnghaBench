
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ seen; } ;
typedef TYPE_1__ slave ;


 scalar_t__ time (int *) ;
 scalar_t__ time_before_missing ;

__attribute__((used)) static int
slave_missing_p (slave *s)
{
    if (time(((void*)0)) > s->seen + time_before_missing)
 return 1;
    return 0;
}
