
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_12__ {size_t len; TYPE_3__* val; } ;
struct TYPE_15__ {TYPE_6__* extensions; TYPE_5__* generation; int flags; int * max_renew; int * max_life; int * pw_end; int * valid_end; int * valid_start; int * modified_by; int created_by; TYPE_4__ keys; int kvno; int principal; } ;
typedef TYPE_7__ hdb_entry ;
struct TYPE_14__ {size_t len; int * val; } ;
struct TYPE_13__ {int gen; int usec; int time; } ;
struct TYPE_9__ {int keyvalue; int keytype; } ;
struct TYPE_11__ {TYPE_2__* salt; TYPE_1__ key; int * mkvno; } ;
struct TYPE_10__ {int salt; int type; } ;


 int ASN1_MALLOC_ENCODE (int ,void*,size_t,int *,size_t*,scalar_t__) ;
 scalar_t__ ENOMEM ;
 int HDBFlags2int (int ) ;
 int HDB_extension ;
 int append_event (int ,int *,int *) ;
 int append_hex (int ,int *,int *) ;
 int append_string (int ,int *,char*,...) ;
 int free (char*) ;
 scalar_t__ hex_encode (void*,size_t,char**) ;
 int krb5_abortx (int ,char*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int time2str (int ) ;

__attribute__((used)) static krb5_error_code
entry2string_int (krb5_context context, krb5_storage *sp, hdb_entry *ent)
{
    char *p;
    size_t i;
    krb5_error_code ret;


    ret = krb5_unparse_name(context, ent->principal, &p);
    if(ret)
 return ret;
    append_string(context, sp, "%s ", p);
    free(p);

    append_string(context, sp, "%d", ent->kvno);

    for(i = 0; i < ent->keys.len; i++){

 if(ent->keys.val[i].mkvno)
     append_string(context, sp, ":%d:%d:",
     *ent->keys.val[i].mkvno,
     ent->keys.val[i].key.keytype);
 else
     append_string(context, sp, "::%d:",
     ent->keys.val[i].key.keytype);

 append_hex(context, sp, &ent->keys.val[i].key.keyvalue);
 append_string(context, sp, ":");

 if(ent->keys.val[i].salt){
     append_string(context, sp, "%u/", ent->keys.val[i].salt->type);
     append_hex(context, sp, &ent->keys.val[i].salt->salt);
 }else
     append_string(context, sp, "-");
    }
    append_string(context, sp, " ");

    append_event(context, sp, &ent->created_by);

    append_event(context, sp, ent->modified_by);


    if(ent->valid_start)
 append_string(context, sp, "%s ", time2str(*ent->valid_start));
    else
 append_string(context, sp, "- ");


    if(ent->valid_end)
 append_string(context, sp, "%s ", time2str(*ent->valid_end));
    else
 append_string(context, sp, "- ");


    if(ent->pw_end)
 append_string(context, sp, "%s ", time2str(*ent->pw_end));
    else
 append_string(context, sp, "- ");


    if(ent->max_life)
 append_string(context, sp, "%d ", *ent->max_life);
    else
 append_string(context, sp, "- ");


    if(ent->max_renew)
 append_string(context, sp, "%d ", *ent->max_renew);
    else
 append_string(context, sp, "- ");


    append_string(context, sp, "%d ", HDBFlags2int(ent->flags));


    if(ent->generation) {
 append_string(context, sp, "%s:%d:%d ", time2str(ent->generation->time),
        ent->generation->usec,
        ent->generation->gen);
    } else
 append_string(context, sp, "- ");


    if(ent->extensions && ent->extensions->len > 0) {
 for(i = 0; i < ent->extensions->len; i++) {
     void *d;
     size_t size, sz = 0;

     ASN1_MALLOC_ENCODE(HDB_extension, d, size,
          &ent->extensions->val[i], &sz, ret);
     if (ret) {
  krb5_clear_error_message(context);
  return ret;
     }
     if(size != sz)
  krb5_abortx(context, "internal asn.1 encoder error");

     if (hex_encode(d, size, &p) < 0) {
  free(d);
  krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
  return ENOMEM;
     }

     free(d);
     append_string(context, sp, "%s%s", p,
     ent->extensions->len - 1 != i ? ":" : "");
     free(p);
 }
    } else
 append_string(context, sp, "-");


    return 0;
}
