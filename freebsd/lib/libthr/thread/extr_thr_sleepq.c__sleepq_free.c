
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue {int dummy; } ;


 int free (struct sleepqueue*) ;

void
_sleepq_free(struct sleepqueue *sq)
{
 free(sq);
}
