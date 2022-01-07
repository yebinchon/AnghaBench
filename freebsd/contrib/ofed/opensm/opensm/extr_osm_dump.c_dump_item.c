
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dump_context {int cxt; int file; int (* func ) (int *,int ,int ) ;} ;
typedef int cl_map_item_t ;


 int stub1 (int *,int ,int ) ;

__attribute__((used)) static void dump_item(cl_map_item_t * item, void *cxt)
{
 ((struct dump_context *)cxt)->func(item,
        ((struct dump_context *)cxt)->file,
        ((struct dump_context *)cxt)->cxt);
}
