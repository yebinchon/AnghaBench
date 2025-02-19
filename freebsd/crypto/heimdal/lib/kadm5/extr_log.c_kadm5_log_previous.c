
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
typedef int off_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef scalar_t__ int32_t ;
typedef enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;


 scalar_t__ KADM5_BAD_DB ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ krb5_ret_int32 (int *,scalar_t__*) ;
 int krb5_set_error_message (int ,scalar_t__,char*,...) ;
 int krb5_storage_seek (int *,int,int ) ;

kadm5_ret_t
kadm5_log_previous (krb5_context context,
      krb5_storage *sp,
      uint32_t *ver,
      time_t *timestamp,
      enum kadm_ops *op,
      uint32_t *len)
{
    krb5_error_code ret;
    off_t off, oldoff;
    int32_t tmp;

    oldoff = krb5_storage_seek(sp, 0, SEEK_CUR);

    krb5_storage_seek(sp, -8, SEEK_CUR);
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    *len = tmp;
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    *ver = tmp;
    off = 24 + *len;
    krb5_storage_seek(sp, -off, SEEK_CUR);
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    if ((uint32_t)tmp != *ver) {
 krb5_storage_seek(sp, oldoff, SEEK_SET);
 krb5_set_error_message(context, KADM5_BAD_DB,
          "kadm5_log_previous: log entry "
          "have consistency failure, version number wrong "
          "(tmp %lu ver %lu)",
          (unsigned long)tmp,
          (unsigned long)*ver);
 return KADM5_BAD_DB;
    }
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    *timestamp = tmp;
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    *op = tmp;
    ret = krb5_ret_int32 (sp, &tmp);
    if (ret)
 goto end_of_storage;
    if ((uint32_t)tmp != *len) {
 krb5_storage_seek(sp, oldoff, SEEK_SET);
 krb5_set_error_message(context, KADM5_BAD_DB,
          "kadm5_log_previous: log entry "
          "have consistency failure, length wrong");
 return KADM5_BAD_DB;
    }
    return 0;

 end_of_storage:
    krb5_storage_seek(sp, oldoff, SEEK_SET);
    krb5_set_error_message(context, ret, "kadm5_log_previous: end of storage "
      "reached before end");
    return ret;
}
