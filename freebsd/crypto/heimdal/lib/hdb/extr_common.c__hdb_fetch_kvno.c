
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_3__* krb5_principal ;
typedef int krb5_kvno ;
typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef TYPE_3__* krb5_const_principal ;
struct TYPE_23__ {int entry; } ;
typedef TYPE_5__ hdb_entry_ex ;
struct TYPE_24__ {TYPE_3__* principal; } ;
typedef TYPE_6__ hdb_entry_alias ;
struct TYPE_25__ {int (* hdb__get ) (int ,TYPE_7__*,int ,int *) ;scalar_t__ hdb_master_key_set; } ;
struct TYPE_20__ {int len; int * val; } ;
struct TYPE_21__ {scalar_t__ name_type; TYPE_1__ name_string; } ;
struct TYPE_22__ {TYPE_2__ name; } ;
typedef TYPE_7__ HDB ;


 int ASN1_BAD_ID ;
 int HDB_ERR_NOENTRY ;
 unsigned int HDB_F_CANON ;
 unsigned int HDB_F_DECRYPT ;
 scalar_t__ KRB5_NT_ENTERPRISE_PRINCIPAL ;
 int KRB5_PARSE_MALFORMED ;
 int free_hdb_entry_alias (TYPE_6__*) ;
 int hdb_free_entry (int ,TYPE_5__*) ;
 int hdb_principal2key (int ,TYPE_3__*,int *) ;
 int hdb_unseal_keys (int ,TYPE_7__*,int *) ;
 int hdb_value2entry (int ,int *,int *) ;
 int hdb_value2entry_alias (int ,int *,TYPE_6__*) ;
 int krb5_data_free (int *) ;
 int krb5_free_principal (int ,TYPE_3__*) ;
 int krb5_parse_name (int ,int ,TYPE_3__**) ;
 int krb5_set_error_message (int ,int,char*,int) ;
 int stub1 (int ,TYPE_7__*,int ,int *) ;
 int stub2 (int ,TYPE_7__*,int ,int *) ;

krb5_error_code
_hdb_fetch_kvno(krb5_context context, HDB *db, krb5_const_principal principal,
  unsigned flags, krb5_kvno kvno, hdb_entry_ex *entry)
{
    krb5_principal enterprise_principal = ((void*)0);
    krb5_data key, value;
    krb5_error_code ret;
    int code;

    if (principal->name.name_type == KRB5_NT_ENTERPRISE_PRINCIPAL) {
 if (principal->name.name_string.len != 1) {
     ret = KRB5_PARSE_MALFORMED;
     krb5_set_error_message(context, ret, "malformed principal: "
       "enterprise name with %d name components",
       principal->name.name_string.len);
     return ret;
 }
 ret = krb5_parse_name(context, principal->name.name_string.val[0],
         &enterprise_principal);
 if (ret)
     return ret;
 principal = enterprise_principal;
    }

    hdb_principal2key(context, principal, &key);
    if (enterprise_principal)
 krb5_free_principal(context, enterprise_principal);
    code = db->hdb__get(context, db, key, &value);
    krb5_data_free(&key);
    if(code)
 return code;
    code = hdb_value2entry(context, &value, &entry->entry);
    if (code == ASN1_BAD_ID && (flags & HDB_F_CANON) == 0) {
 krb5_data_free(&value);
 return HDB_ERR_NOENTRY;
    } else if (code == ASN1_BAD_ID) {
 hdb_entry_alias alias;

 code = hdb_value2entry_alias(context, &value, &alias);
 if (code) {
     krb5_data_free(&value);
     return code;
 }
 hdb_principal2key(context, alias.principal, &key);
 krb5_data_free(&value);
 free_hdb_entry_alias(&alias);

 code = db->hdb__get(context, db, key, &value);
 krb5_data_free(&key);
 if (code)
     return code;
 code = hdb_value2entry(context, &value, &entry->entry);
 if (code) {
     krb5_data_free(&value);
     return code;
 }
    }
    krb5_data_free(&value);
    if (db->hdb_master_key_set && (flags & HDB_F_DECRYPT)) {
 code = hdb_unseal_keys (context, db, &entry->entry);
 if (code)
     hdb_free_entry(context, entry);
    }
    return code;
}
