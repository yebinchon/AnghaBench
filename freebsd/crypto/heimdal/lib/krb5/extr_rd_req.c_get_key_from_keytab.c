
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int keyblock; } ;
typedef TYPE_3__ krb5_keytab_entry ;
typedef int * krb5_keytab ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;
struct TYPE_8__ {int* kvno; int etype; } ;
struct TYPE_9__ {TYPE_1__ enc_part; } ;
struct TYPE_11__ {TYPE_2__ ticket; } ;
typedef TYPE_4__ krb5_ap_req ;


 scalar_t__ krb5_copy_keyblock (int ,int *,int **) ;
 int krb5_kt_close (int ,int *) ;
 int krb5_kt_default (int ,int **) ;
 int krb5_kt_free_entry (int ,TYPE_3__*) ;
 scalar_t__ krb5_kt_get_entry (int ,int *,int ,int,int ,TYPE_3__*) ;

__attribute__((used)) static krb5_error_code
get_key_from_keytab(krb5_context context,
      krb5_ap_req *ap_req,
      krb5_const_principal server,
      krb5_keytab keytab,
      krb5_keyblock **out_key)
{
    krb5_keytab_entry entry;
    krb5_error_code ret;
    int kvno;
    krb5_keytab real_keytab;

    if(keytab == ((void*)0))
 krb5_kt_default(context, &real_keytab);
    else
 real_keytab = keytab;

    if (ap_req->ticket.enc_part.kvno)
 kvno = *ap_req->ticket.enc_part.kvno;
    else
 kvno = 0;

    ret = krb5_kt_get_entry (context,
        real_keytab,
        server,
        kvno,
        ap_req->ticket.enc_part.etype,
        &entry);
    if(ret)
 goto out;
    ret = krb5_copy_keyblock(context, &entry.keyblock, out_key);
    krb5_kt_free_entry (context, &entry);
out:
    if(keytab == ((void*)0))
 krb5_kt_close(context, real_keytab);

    return ret;
}
