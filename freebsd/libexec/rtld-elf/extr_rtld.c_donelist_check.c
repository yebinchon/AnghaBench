
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int num_used; unsigned int num_alloc; int const** objs; } ;
typedef int Obj_Entry ;
typedef TYPE_1__ DoneList ;



__attribute__((used)) static bool
donelist_check(DoneList *dlp, const Obj_Entry *obj)
{
    unsigned int i;

    for (i = 0; i < dlp->num_used; i++)
 if (dlp->objs[i] == obj)
     return 1;






    if (dlp->num_used < dlp->num_alloc)
 dlp->objs[dlp->num_used++] = obj;
    return 0;
}
