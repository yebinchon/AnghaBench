
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int krb5_salt ;
typedef scalar_t__ krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
struct TYPE_16__ {int principal; } ;
struct TYPE_14__ {TYPE_6__ entry; } ;
typedef TYPE_3__ hdb_entry_ex ;
struct TYPE_12__ {scalar_t__ length; } ;
struct TYPE_13__ {TYPE_1__ keyvalue; } ;
struct TYPE_15__ {TYPE_2__ key; } ;
typedef TYPE_4__ Key ;


 scalar_t__ const ETYPE_NULL ;
 scalar_t__ KRB5KDC_ERR_ETYPE_NOSUPP ;
 scalar_t__ KRB5KDC_ERR_NULL_KEY ;
 int _kdc_is_weak_exception (int ,scalar_t__) ;
 scalar_t__ hdb_enctype2key (int ,TYPE_6__*,scalar_t__ const,TYPE_4__**) ;
 scalar_t__ hdb_next_enctype2key (int ,TYPE_6__*,scalar_t__,TYPE_4__**) ;
 scalar_t__ is_default_salt_p (int *,TYPE_4__*) ;
 scalar_t__ krb5_enctype_valid (int ,scalar_t__ const) ;
 int krb5_free_salt (int ,int ) ;
 scalar_t__ krb5_get_pw_salt (int ,int ,int *) ;
 scalar_t__* krb5_kerberos_enctypes (int ) ;

krb5_error_code
_kdc_find_etype(krb5_context context, krb5_boolean use_strongest_session_key,
  krb5_boolean is_preauth, hdb_entry_ex *princ,
  krb5_enctype *etypes, unsigned len,
  krb5_enctype *ret_enctype, Key **ret_key)
{
    krb5_error_code ret;
    krb5_salt def_salt;
    krb5_enctype enctype = ETYPE_NULL;
    Key *key;
    int i;


    ret = krb5_get_pw_salt(context, princ->entry.principal, &def_salt);
    if (ret)
 return ret;

    ret = KRB5KDC_ERR_ETYPE_NOSUPP;

    if (use_strongest_session_key) {
 const krb5_enctype *p;
 krb5_enctype clientbest = ETYPE_NULL;
 int j;
 p = krb5_kerberos_enctypes(context);
 for (i = 0; p[i] != ETYPE_NULL && enctype == ETYPE_NULL; i++) {
     if (krb5_enctype_valid(context, p[i]) != 0)
  continue;


     for (j = 0; j < len && enctype == ETYPE_NULL; j++) {
  if (p[i] != etypes[j])
      continue;

  if (clientbest == ETYPE_NULL)
      clientbest = p[i];

  ret = hdb_enctype2key(context, &princ->entry, p[i], &key);
  if (ret)
      continue;
  if (is_preauth && !is_default_salt_p(&def_salt, key))
      continue;
  enctype = p[i];
     }
 }
 if (clientbest != ETYPE_NULL && enctype == ETYPE_NULL)
     enctype = clientbest;
 else if (enctype == ETYPE_NULL)
     ret = KRB5KDC_ERR_ETYPE_NOSUPP;
 if (ret == 0 && ret_enctype != ((void*)0))
     *ret_enctype = enctype;
 if (ret == 0 && ret_key != ((void*)0))
     *ret_key = key;
    } else {
 for(key = ((void*)0), i = 0; ret != 0 && i < len; i++, key = ((void*)0)) {

     if (krb5_enctype_valid(context, etypes[i]) != 0 &&
  !_kdc_is_weak_exception(princ->entry.principal, etypes[i]))
  continue;

     while (hdb_next_enctype2key(context, &princ->entry, etypes[i], &key) == 0) {
  if (key->key.keyvalue.length == 0) {
      ret = KRB5KDC_ERR_NULL_KEY;
      continue;
  }
  if (ret_key != ((void*)0))
      *ret_key = key;
  if (ret_enctype != ((void*)0))
      *ret_enctype = etypes[i];
  ret = 0;
  if (is_preauth && is_default_salt_p(&def_salt, key))
      goto out;
     }
 }
    }

out:
    krb5_free_salt (context, def_salt);
    return ret;
}
