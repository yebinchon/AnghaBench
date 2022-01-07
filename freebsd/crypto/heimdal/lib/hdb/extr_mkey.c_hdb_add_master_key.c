
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_2__* hdb_master_key ;
struct TYPE_5__ {int vno; } ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__ keytab; } ;


 scalar_t__ hdb_process_master_key (int ,int,int *,int ,TYPE_2__**) ;
 int max (int,int ) ;

krb5_error_code
hdb_add_master_key(krb5_context context, krb5_keyblock *key,
     hdb_master_key *inout)
{
    int vno = 0;
    hdb_master_key p;
    krb5_error_code ret;

    for(p = *inout; p; p = p->next)
 vno = max(vno, p->keytab.vno);
    vno++;
    ret = hdb_process_master_key(context, vno, key, 0, &p);
    if(ret)
 return ret;
    p->next = *inout;
    *inout = p;
    return 0;
}
