
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int len; TYPE_1__* val; } ;
struct TYPE_8__ {int salt; int type; } ;
struct TYPE_7__ {int padata_value; int padata_type; } ;
typedef TYPE_2__ Salt ;
typedef TYPE_3__ METHOD_DATA ;


 int der_copy_octet_string (int *,int *) ;
 int realloc_method_data (TYPE_3__*) ;

__attribute__((used)) static void
set_salt_padata(METHOD_DATA *md, Salt *salt)
{
    if (salt) {
       realloc_method_data(md);
       md->val[md->len - 1].padata_type = salt->type;
       der_copy_octet_string(&salt->salt,
                             &md->val[md->len - 1].padata_value);
    }
}
