
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; int members; struct TYPE_6__* subtype; } ;
typedef TYPE_1__ Type ;


 int ASN1_TAILQ_EMPTY (int ) ;


 int generate_2int (TYPE_1__ const*,char const*) ;
 int generate_int2 (TYPE_1__ const*,char const*) ;
 int generate_units (TYPE_1__ const*,char const*) ;

void
generate_glue (const Type *t, const char *gen_name)
{
    switch(t->type) {
    case 128:
 generate_glue(t->subtype, gen_name);
 break;
    case 129 :
 if (!ASN1_TAILQ_EMPTY(t->members)) {
     generate_2int (t, gen_name);
     generate_int2 (t, gen_name);
     generate_units (t, gen_name);
 }
 break;
    default :
 break;
    }
}
