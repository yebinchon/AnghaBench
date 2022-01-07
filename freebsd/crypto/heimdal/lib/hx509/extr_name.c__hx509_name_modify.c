
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_15__ {int len; TYPE_5__* val; } ;
struct TYPE_16__ {TYPE_3__ rdnSequence; } ;
struct TYPE_18__ {TYPE_4__ u; } ;
struct TYPE_17__ {int len; TYPE_10__* val; } ;
struct TYPE_13__ {int * utf8String; } ;
struct TYPE_14__ {TYPE_1__ u; int element; } ;
struct TYPE_12__ {TYPE_2__ value; int type; } ;
typedef TYPE_5__ RelativeDistinguishedName ;
typedef TYPE_6__ Name ;


 int ENOMEM ;
 int choice_DirectoryString_utf8String ;
 int der_copy_oid (int const*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 TYPE_10__* malloc (int) ;
 int memmove (TYPE_5__*,TYPE_5__*,int) ;
 void* realloc (TYPE_5__*,int) ;
 int * strdup (char const*) ;

int
_hx509_name_modify(hx509_context context,
     Name *name,
     int append,
     const heim_oid *oid,
     const char *str)
{
    RelativeDistinguishedName *rdn;
    int ret;
    void *ptr;

    ptr = realloc(name->u.rdnSequence.val,
    sizeof(name->u.rdnSequence.val[0]) *
    (name->u.rdnSequence.len + 1));
    if (ptr == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "Out of memory");
 return ENOMEM;
    }
    name->u.rdnSequence.val = ptr;

    if (append) {
 rdn = &name->u.rdnSequence.val[name->u.rdnSequence.len];
    } else {
 memmove(&name->u.rdnSequence.val[1],
  &name->u.rdnSequence.val[0],
  name->u.rdnSequence.len *
  sizeof(name->u.rdnSequence.val[0]));

 rdn = &name->u.rdnSequence.val[0];
    }
    rdn->val = malloc(sizeof(rdn->val[0]));
    if (rdn->val == ((void*)0))
 return ENOMEM;
    rdn->len = 1;
    ret = der_copy_oid(oid, &rdn->val[0].type);
    if (ret)
 return ret;
    rdn->val[0].value.element = choice_DirectoryString_utf8String;
    rdn->val[0].value.u.utf8String = strdup(str);
    if (rdn->val[0].value.u.utf8String == ((void*)0))
 return ENOMEM;
    name->u.rdnSequence.len += 1;

    return 0;
}
