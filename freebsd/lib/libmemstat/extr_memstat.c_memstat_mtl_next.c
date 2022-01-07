
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type {int dummy; } ;


 struct memory_type* LIST_NEXT (struct memory_type*,int ) ;
 int mt_list ;

struct memory_type *
memstat_mtl_next(struct memory_type *mtp)
{

 return (LIST_NEXT(mtp, mt_list));
}
