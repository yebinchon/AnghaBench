
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int objsize; int count; } ;
typedef TYPE_1__ ipfw_obj_ctlv ;


 int compare_ntlv ;
 int qsort (TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static void
object_sort_ctlv(ipfw_obj_ctlv *ctlv)
{

 qsort(ctlv + 1, ctlv->count, ctlv->objsize, compare_ntlv);
}
