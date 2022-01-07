
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int idr; } ;


 int idr_remove (int *,unsigned int) ;

void
ida_simple_remove(struct ida *ida, unsigned int id)
{
 idr_remove(&ida->idr, id);
}
