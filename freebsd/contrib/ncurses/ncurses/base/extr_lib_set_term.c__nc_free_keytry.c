
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sibling; struct TYPE_4__* child; } ;
typedef TYPE_1__ TRIES ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
_nc_free_keytry(TRIES * kt)
{
    if (kt != 0) {
 _nc_free_keytry(kt->child);
 _nc_free_keytry(kt->sibling);
 free(kt);
    }
}
