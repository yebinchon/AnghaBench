
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct doall_sorted {scalar_t__ type; int n; TYPE_1__ const** names; } ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ OBJ_NAME ;



__attribute__((used)) static void do_all_sorted_fn(const OBJ_NAME *name, void *d_)
{
    struct doall_sorted *d = d_;

    if (name->type != d->type)
        return;

    d->names[d->n++] = name;
}
