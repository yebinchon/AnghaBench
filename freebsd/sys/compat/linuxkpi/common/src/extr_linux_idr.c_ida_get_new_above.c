
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int idr; } ;


 int idr_get_new_above (int *,int *,int,int*) ;

int
ida_get_new_above(struct ida *ida, int starting_id, int *p_id)
{
 return (idr_get_new_above(&ida->idr, ((void*)0), starting_id, p_id));
}
