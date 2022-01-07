
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * val; int len; } ;
struct TYPE_14__ {TYPE_3__ name_string; int name_type; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_11__ {TYPE_1__ name_string; } ;
struct TYPE_13__ {TYPE_2__ cname; } ;
typedef TYPE_4__ Authenticator ;


 int COMPARE_INTEGER (TYPE_4__*,TYPE_4__*,int ) ;
 int COMPARE_STRING (TYPE_4__*,TYPE_4__*,int ) ;
 int authenticator_vno ;
 TYPE_5__ cname ;
 int crealm ;

__attribute__((used)) static int
cmp_authenticator (void *a, void *b)
{
    Authenticator *aa = a;
    Authenticator *ab = b;
    int i;

    COMPARE_INTEGER(aa,ab,authenticator_vno);
    COMPARE_STRING(aa,ab,crealm);

    COMPARE_INTEGER(aa,ab,cname.name_type);
    COMPARE_INTEGER(aa,ab,cname.name_string.len);

    for (i = 0; i < aa->cname.name_string.len; i++)
 COMPARE_STRING(aa,ab,cname.name_string.val[i]);

    return 0;
}
