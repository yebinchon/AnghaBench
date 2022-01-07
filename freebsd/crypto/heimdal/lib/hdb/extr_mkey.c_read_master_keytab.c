
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_kt_cursor ;
struct TYPE_6__ {int keyblock; } ;
typedef TYPE_1__ krb5_keytab_entry ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_2__* hdb_master_key ;
struct TYPE_7__ {struct TYPE_7__* next; int crypto; TYPE_1__ keytab; } ;


 scalar_t__ ENOMEM ;
 TYPE_2__* calloc (int,int) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_kt_close (int ,int ) ;
 int krb5_kt_end_seq_get (int ,int ,int *) ;
 scalar_t__ krb5_kt_next_entry (int ,int ,TYPE_1__*,int *) ;
 scalar_t__ krb5_kt_resolve (int ,char const*,int *) ;
 scalar_t__ krb5_kt_start_seq_get (int ,int ,int *) ;

__attribute__((used)) static krb5_error_code
read_master_keytab(krb5_context context, const char *filename,
     hdb_master_key *mkey)
{
    krb5_error_code ret;
    krb5_keytab id;
    krb5_kt_cursor cursor;
    krb5_keytab_entry entry;
    hdb_master_key p;

    ret = krb5_kt_resolve(context, filename, &id);
    if(ret)
 return ret;

    ret = krb5_kt_start_seq_get(context, id, &cursor);
    if(ret)
 goto out;
    *mkey = ((void*)0);
    while(krb5_kt_next_entry(context, id, &entry, &cursor) == 0) {
 p = calloc(1, sizeof(*p));
 if(p == ((void*)0)) {
     krb5_kt_end_seq_get(context, id, &cursor);
     ret = ENOMEM;
     goto out;
 }
 p->keytab = entry;
 ret = krb5_crypto_init(context, &p->keytab.keyblock, 0, &p->crypto);
 p->next = *mkey;
 *mkey = p;
    }
    krb5_kt_end_seq_get(context, id, &cursor);
  out:
    krb5_kt_close(context, id);
    return ret;
}
