
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int certname ;
struct TYPE_21__ {int rdnSequence; } ;
struct TYPE_22__ {TYPE_1__ u; int element; } ;
struct TYPE_23__ {TYPE_2__ directoryName; } ;
struct TYPE_29__ {TYPE_3__ u; scalar_t__ element; } ;
struct TYPE_28__ {unsigned int len; TYPE_7__* val; } ;
struct TYPE_20__ {scalar_t__ element; } ;
struct TYPE_27__ {TYPE_15__ base; scalar_t__ maximum; scalar_t__ minimum; } ;
struct TYPE_24__ {int rdnSequence; } ;
struct TYPE_25__ {TYPE_4__ u; int element; } ;
struct TYPE_26__ {TYPE_5__ subject; } ;
struct TYPE_19__ {TYPE_6__ tbsCertificate; } ;
typedef TYPE_8__ GeneralSubtrees ;
typedef TYPE_9__ GeneralName ;
typedef TYPE_10__ Certificate ;


 int HX509_RANGE ;
 scalar_t__ choice_GeneralName_directoryName ;
 int match_alt_name (TYPE_15__*,TYPE_10__ const*,int*,int*) ;
 int match_general_name (TYPE_15__*,TYPE_9__*,int*) ;
 int memset (TYPE_9__*,int ,int) ;
 int subject_null_p (TYPE_10__ const*) ;

__attribute__((used)) static int
match_tree(const GeneralSubtrees *t, const Certificate *c, int *match)
{
    int name, alt_name, same;
    unsigned int i;
    int ret = 0;

    name = alt_name = same = *match = 0;
    for (i = 0; i < t->len; i++) {
 if (t->val[i].minimum && t->val[i].maximum)
     return HX509_RANGE;







 if (t->val[i].base.element == choice_GeneralName_directoryName
     && !subject_null_p(c))
 {
     GeneralName certname;

     memset(&certname, 0, sizeof(certname));
     certname.element = choice_GeneralName_directoryName;
     certname.u.directoryName.element =
  c->tbsCertificate.subject.element;
     certname.u.directoryName.u.rdnSequence =
  c->tbsCertificate.subject.u.rdnSequence;

     ret = match_general_name(&t->val[i].base, &certname, &name);
 }






 ret = match_alt_name(&t->val[i].base, c, &same, &alt_name);
    }
    if (name && (!same || alt_name))
 *match = 1;
    return ret;
}
