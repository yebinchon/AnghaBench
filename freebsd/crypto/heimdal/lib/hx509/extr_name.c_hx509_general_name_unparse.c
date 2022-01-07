
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
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct rk_strpool {int dummy; } ;
typedef int dir ;
struct TYPE_24__ {unsigned char* data; int length; } ;
struct TYPE_23__ {scalar_t__ data; scalar_t__ length; } ;
struct TYPE_21__ {int rdnSequence; } ;
struct TYPE_22__ {TYPE_5__ u; int element; } ;
struct TYPE_19__ {scalar_t__ data; scalar_t__ length; } ;
struct TYPE_18__ {scalar_t__ data; scalar_t__ length; } ;
struct TYPE_17__ {int type_id; } ;
struct TYPE_25__ {int registeredID; TYPE_8__ iPAddress; TYPE_7__ uniformResourceIdentifier; TYPE_6__ directoryName; TYPE_3__ dNSName; TYPE_2__ rfc822Name; TYPE_1__ otherName; } ;
struct TYPE_20__ {int rdnSequence; } ;
struct TYPE_16__ {int element; TYPE_9__ u; } ;
struct TYPE_15__ {TYPE_4__ u; int element; } ;
typedef TYPE_10__ Name ;
typedef TYPE_11__ GeneralName ;


 int EINVAL ;
 int ENOMEM ;
 int _hx509_unparse_Name (TYPE_10__*,char**) ;







 int free (char*) ;
 int hx509_oid_sprint (int *,char**) ;
 int memset (TYPE_10__*,int ,int) ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 struct rk_strpool* rk_strpoolprintf (struct rk_strpool*,char*,...) ;

int
hx509_general_name_unparse(GeneralName *name, char **str)
{
    struct rk_strpool *strpool = ((void*)0);

    *str = ((void*)0);

    switch (name->element) {
    case 131: {
 char *oid;
 hx509_oid_sprint(&name->u.otherName.type_id, &oid);
 if (oid == ((void*)0))
     return ENOMEM;
 strpool = rk_strpoolprintf(strpool, "otherName: %s", oid);
 free(oid);
 break;
    }
    case 129:
 strpool = rk_strpoolprintf(strpool, "rfc822Name: %.*s\n",
       (int)name->u.rfc822Name.length,
       (char *)name->u.rfc822Name.data);
 break;
    case 134:
 strpool = rk_strpoolprintf(strpool, "dNSName: %.*s\n",
       (int)name->u.dNSName.length,
       (char *)name->u.dNSName.data);
 break;
    case 133: {
 Name dir;
 char *s;
 int ret;
 memset(&dir, 0, sizeof(dir));
 dir.element = name->u.directoryName.element;
 dir.u.rdnSequence = name->u.directoryName.u.rdnSequence;
 ret = _hx509_unparse_Name(&dir, &s);
 if (ret)
     return ret;
 strpool = rk_strpoolprintf(strpool, "directoryName: %s", s);
 free(s);
 break;
    }
    case 128:
 strpool = rk_strpoolprintf(strpool, "URI: %.*s",
       (int)name->u.uniformResourceIdentifier.length,
       (char *)name->u.uniformResourceIdentifier.data);
 break;
    case 132: {
 unsigned char *a = name->u.iPAddress.data;

 strpool = rk_strpoolprintf(strpool, "IPAddress: ");
 if (strpool == ((void*)0))
     break;
 if (name->u.iPAddress.length == 4)
     strpool = rk_strpoolprintf(strpool, "%d.%d.%d.%d",
           a[0], a[1], a[2], a[3]);
 else if (name->u.iPAddress.length == 16)
     strpool = rk_strpoolprintf(strpool,
           "%02X:%02X:%02X:%02X:"
           "%02X:%02X:%02X:%02X:"
           "%02X:%02X:%02X:%02X:"
           "%02X:%02X:%02X:%02X",
           a[0], a[1], a[2], a[3],
           a[4], a[5], a[6], a[7],
           a[8], a[9], a[10], a[11],
           a[12], a[13], a[14], a[15]);
 else
     strpool = rk_strpoolprintf(strpool,
           "unknown IP address of length %lu",
           (unsigned long)name->u.iPAddress.length);
 break;
    }
    case 130: {
 char *oid;
 hx509_oid_sprint(&name->u.registeredID, &oid);
 if (oid == ((void*)0))
     return ENOMEM;
 strpool = rk_strpoolprintf(strpool, "registeredID: %s", oid);
 free(oid);
 break;
    }
    default:
 return EINVAL;
    }
    if (strpool == ((void*)0))
 return ENOMEM;

    *str = rk_strpoolcollect(strpool);

    return 0;
}
