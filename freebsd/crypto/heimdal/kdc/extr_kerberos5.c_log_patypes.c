
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rk_strpool {int dummy; } ;
typedef int krb5_kdc_configuration ;
typedef int krb5_context ;
struct TYPE_5__ {size_t len; TYPE_1__* val; } ;
struct TYPE_4__ {int padata_type; } ;
typedef TYPE_2__ METHOD_DATA ;






 int free (char*) ;
 int kdc_log (int ,int *,int ,char*,...) ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 struct rk_strpool* rk_strpoolprintf (struct rk_strpool*,char*,...) ;

__attribute__((used)) static void
log_patypes(krb5_context context,
     krb5_kdc_configuration *config,
     METHOD_DATA *padata)
{
    struct rk_strpool *p = ((void*)0);
    char *str;
    size_t i;

    for (i = 0; i < padata->len; i++) {
 switch(padata->val[i].padata_type) {
 case 129:
     p = rk_strpoolprintf(p, "PK-INIT(ietf)");
     break;
 case 128:
     p = rk_strpoolprintf(p, "PK-INIT(win2k)");
     break;
 case 130:
     p = rk_strpoolprintf(p, "OCSP");
     break;
 case 131:
     p = rk_strpoolprintf(p, "encrypted-timestamp");
     break;
 default:
     p = rk_strpoolprintf(p, "%d", padata->val[i].padata_type);
     break;
 }
 if (p && i + 1 < padata->len)
     p = rk_strpoolprintf(p, ", ");
 if (p == ((void*)0)) {
     kdc_log(context, config, 0, "out of memory");
     return;
 }
    }
    if (p == ((void*)0))
 p = rk_strpoolprintf(p, "none");

    str = rk_strpoolcollect(p);
    kdc_log(context, config, 0, "Client sent patypes: %s", str);
    free(str);
}
