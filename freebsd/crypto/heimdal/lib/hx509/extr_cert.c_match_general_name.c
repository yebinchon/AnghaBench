
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_21__ {int rdnSequence; } ;
struct TYPE_22__ {TYPE_5__ u; int element; } ;
struct TYPE_18__ {size_t length; char* data; } ;
struct TYPE_16__ {char* data; size_t length; } ;
struct TYPE_17__ {int value; int type_id; } ;
struct TYPE_23__ {TYPE_6__ directoryName; TYPE_2__ dNSName; TYPE_14__ rfc822Name; TYPE_1__ otherName; } ;
struct TYPE_25__ {int element; TYPE_7__ u; } ;
struct TYPE_20__ {int rdnSequence; } ;
struct TYPE_19__ {int length; int * data; } ;
struct TYPE_24__ {TYPE_4__ u; int element; TYPE_3__ _save; } ;
typedef TYPE_8__ Name ;
typedef TYPE_9__ GeneralName ;


 int HX509_NAME_CONSTRAINT_ERROR ;
 int assert (int) ;







 int der_heim_oid_cmp (int *,int *) ;
 int der_printable_string_cmp (TYPE_14__*,TYPE_14__*) ;
 int heim_any_cmp (int *,int *) ;
 int match_X501Name (TYPE_8__*,TYPE_8__*) ;
 char* memchr (char*,char,size_t) ;
 int memcmp (char const*,char*,size_t) ;

__attribute__((used)) static int
match_general_name(const GeneralName *c, const GeneralName *n, int *match)
{




    assert(c->element == n->element);

    switch(c->element) {
    case 131:
 if (der_heim_oid_cmp(&c->u.otherName.type_id,
    &n->u.otherName.type_id) != 0)
     return HX509_NAME_CONSTRAINT_ERROR;
 if (heim_any_cmp(&c->u.otherName.value,
    &n->u.otherName.value) != 0)
     return HX509_NAME_CONSTRAINT_ERROR;
 *match = 1;
 return 0;
    case 129: {
 const char *s;
 size_t len1, len2;
 s = memchr(c->u.rfc822Name.data, '@', c->u.rfc822Name.length);
 if (s) {
     if (der_printable_string_cmp(&c->u.rfc822Name, &n->u.rfc822Name) != 0)
  return HX509_NAME_CONSTRAINT_ERROR;
 } else {
     s = memchr(n->u.rfc822Name.data, '@', n->u.rfc822Name.length);
     if (s == ((void*)0))
  return HX509_NAME_CONSTRAINT_ERROR;
     len1 = c->u.rfc822Name.length;
     len2 = n->u.rfc822Name.length -
  (s - ((char *)n->u.rfc822Name.data));
     if (len1 > len2)
  return HX509_NAME_CONSTRAINT_ERROR;
     if (memcmp(s + 1 + len2 - len1, c->u.rfc822Name.data, len1) != 0)
  return HX509_NAME_CONSTRAINT_ERROR;
     if (len1 < len2 && s[len2 - len1 + 1] != '.')
  return HX509_NAME_CONSTRAINT_ERROR;
 }
 *match = 1;
 return 0;
    }
    case 134: {
 size_t lenc, lenn;
 char *ptr;

 lenc = c->u.dNSName.length;
 lenn = n->u.dNSName.length;
 if (lenc > lenn)
     return HX509_NAME_CONSTRAINT_ERROR;
 ptr = n->u.dNSName.data;
 if (memcmp(&ptr[lenn - lenc], c->u.dNSName.data, lenc) != 0)
     return HX509_NAME_CONSTRAINT_ERROR;
 if (lenn != lenc && ptr[lenn - lenc - 1] != '.')
     return HX509_NAME_CONSTRAINT_ERROR;
 *match = 1;
 return 0;
    }
    case 133: {
 Name c_name, n_name;
 int ret;

 c_name._save.data = ((void*)0);
 c_name._save.length = 0;
 c_name.element = c->u.directoryName.element;
 c_name.u.rdnSequence = c->u.directoryName.u.rdnSequence;

 n_name._save.data = ((void*)0);
 n_name._save.length = 0;
 n_name.element = n->u.directoryName.element;
 n_name.u.rdnSequence = n->u.directoryName.u.rdnSequence;

 ret = match_X501Name(&c_name, &n_name);
 if (ret == 0)
     *match = 1;
 return ret;
    }
    case 128:
    case 132:
    case 130:
    default:
 return HX509_NAME_CONSTRAINT_ERROR;
    }
}
