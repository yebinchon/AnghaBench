
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int * val; int len; } ;
struct TYPE_14__ {TYPE_1__ name_string; int name_type; } ;
struct TYPE_12__ {int len; } ;
struct TYPE_11__ {TYPE_3__ name_string; } ;
struct TYPE_13__ {TYPE_2__ name; } ;
typedef TYPE_4__ Principal ;


 int COMPARE_INTEGER (TYPE_4__*,TYPE_4__*,int ) ;
 int COMPARE_STRING (TYPE_4__*,TYPE_4__*,int ) ;
 TYPE_5__ name ;
 int realm ;

__attribute__((used)) static int
cmp_principal (void *a, void *b)
{
    Principal *pa = a;
    Principal *pb = b;
    int i;

    COMPARE_STRING(pa,pb,realm);
    COMPARE_INTEGER(pa,pb,name.name_type);
    COMPARE_INTEGER(pa,pb,name.name_string.len);

    for (i = 0; i < pa->name.name_string.len; i++)
 COMPARE_STRING(pa,pb,name.name_string.val[i]);

    return 0;
}
