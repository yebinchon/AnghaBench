
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_13__ {TYPE_1__* val; } ;
struct TYPE_17__ {TYPE_5__* principal; TYPE_2__ keys; } ;
typedef TYPE_6__ hdb_entry ;
struct TYPE_19__ {char* data; } ;
struct TYPE_18__ {void* type; TYPE_8__ salt; } ;
struct TYPE_14__ {size_t len; int * val; } ;
struct TYPE_15__ {TYPE_3__ name_string; } ;
struct TYPE_16__ {int realm; TYPE_4__ name; } ;
struct TYPE_12__ {TYPE_7__* salt; } ;
typedef TYPE_7__ Salt ;
 void* KRB5_PADATA_AFS3_SALT ;
 void* KRB5_PADATA_PW_SALT ;
 int abort () ;
 int krb5_data_alloc (TYPE_8__*,size_t) ;
 int krb5_data_copy (TYPE_8__*,int ,size_t) ;
 int krb5_data_free (TYPE_8__*) ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static krb5_error_code
fix_salt(krb5_context context, hdb_entry *ent, int key_num)
{
    krb5_error_code ret;
    Salt *salt = ent->keys.val[key_num].salt;

    switch((int)salt->type) {
    case 131:
 salt->type = KRB5_PADATA_PW_SALT;
 break;
    case 128:
 krb5_data_free(&salt->salt);
 salt->type = KRB5_PADATA_PW_SALT;
 break;
    case 132:
    {
 size_t len;
 size_t i;
 char *p;

 len = 0;
 for (i = 0; i < ent->principal->name.name_string.len; ++i)
     len += strlen(ent->principal->name.name_string.val[i]);
 ret = krb5_data_alloc (&salt->salt, len);
 if (ret)
     return ret;
 p = salt->salt.data;
 for (i = 0; i < ent->principal->name.name_string.len; ++i) {
     memcpy (p,
      ent->principal->name.name_string.val[i],
      strlen(ent->principal->name.name_string.val[i]));
     p += strlen(ent->principal->name.name_string.val[i]);
 }

 salt->type = KRB5_PADATA_PW_SALT;
 break;
    }
    case 130:
 krb5_data_free(&salt->salt);
 ret = krb5_data_copy(&salt->salt,
        ent->principal->realm,
        strlen(ent->principal->realm));
 if(ret)
     return ret;
 salt->type = KRB5_PADATA_PW_SALT;
 break;
    case 129:
 salt->type = KRB5_PADATA_PW_SALT;
 break;
    case 133:
 krb5_data_free(&salt->salt);
 ret = krb5_data_copy(&salt->salt,
         ent->principal->realm,
         strlen(ent->principal->realm));
 if(ret)
     return ret;
 salt->type = KRB5_PADATA_AFS3_SALT;
 break;
    default:
 abort();
    }
    return 0;
}
