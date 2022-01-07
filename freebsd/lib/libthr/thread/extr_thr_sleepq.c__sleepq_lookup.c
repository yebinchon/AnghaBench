
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int dummy; } ;


 int SC_LOOKUP (void*) ;
 struct sleepqueue* lookup (int ,void*) ;

struct sleepqueue *
_sleepq_lookup(void *wchan)
{
 return (lookup(SC_LOOKUP(wchan), wchan));
}
