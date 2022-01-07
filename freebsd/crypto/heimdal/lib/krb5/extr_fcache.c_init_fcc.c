
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_8__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef void* krb5_deltat ;
typedef TYPE_1__* krb5_context ;
typedef int krb5_ccache ;
typedef int int8_t ;
typedef void* int32_t ;
typedef int int16_t ;
struct TYPE_10__ {int version; } ;
struct TYPE_9__ {void* kdc_usec_offset; void* kdc_sec_offset; } ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 TYPE_8__* FCACHE (int ) ;

 int FILENAME (int ) ;
 scalar_t__ KRB5_CCACHE_BADVNO ;
 scalar_t__ KRB5_CC_END ;
 scalar_t__ KRB5_CC_FORMAT ;




 int N_ (char*,char*) ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fcc_open (TYPE_1__*,int ,int*,int,int ) ;
 int fcc_unlock (TYPE_1__*,int) ;
 int krb5_clear_error_message (TYPE_1__*) ;
 scalar_t__ krb5_ret_int16 (int *,int*) ;
 scalar_t__ krb5_ret_int32 (int *,void**) ;
 scalar_t__ krb5_ret_int8 (int *,int*) ;
 int krb5_set_error_message (TYPE_1__*,scalar_t__,char*,int,...) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int) ;
 int krb5_storage_set_eof_code (int *,scalar_t__) ;
 int storage_set_flags (TYPE_1__*,int *,int) ;

__attribute__((used)) static krb5_error_code
init_fcc (krb5_context context,
   krb5_ccache id,
   krb5_storage **ret_sp,
   int *ret_fd,
   krb5_deltat *kdc_offset)
{
    int fd;
    int8_t pvno, tag;
    krb5_storage *sp;
    krb5_error_code ret;

    if (kdc_offset)
 *kdc_offset = 0;

    ret = fcc_open(context, id, &fd, O_RDONLY | O_BINARY | O_CLOEXEC, 0);
    if(ret)
 return ret;

    sp = krb5_storage_from_fd(fd);
    if(sp == ((void*)0)) {
 krb5_clear_error_message(context);
 ret = ENOMEM;
 goto out;
    }
    krb5_storage_set_eof_code(sp, KRB5_CC_END);
    ret = krb5_ret_int8(sp, &pvno);
    if(ret != 0) {
 if(ret == KRB5_CC_END) {
     ret = ENOENT;
     krb5_set_error_message(context, ret,
       N_("Empty credential cache file: %s", ""),
       FILENAME(id));
 } else
     krb5_set_error_message(context, ret, N_("Error reading pvno "
          "in cache file: %s", ""),
       FILENAME(id));
 goto out;
    }
    if(pvno != 5) {
 ret = KRB5_CCACHE_BADVNO;
 krb5_set_error_message(context, ret, N_("Bad version number in credential "
      "cache file: %s", ""),
          FILENAME(id));
 goto out;
    }
    ret = krb5_ret_int8(sp, &tag);
    if(ret != 0) {
 ret = KRB5_CC_FORMAT;
 krb5_set_error_message(context, ret, "Error reading tag in "
         "cache file: %s", FILENAME(id));
 goto out;
    }
    FCACHE(id)->version = tag;
    storage_set_flags(context, sp, FCACHE(id)->version);
    switch (tag) {
    case 128: {
 int16_t length;

 ret = krb5_ret_int16 (sp, &length);
 if(ret) {
     ret = KRB5_CC_FORMAT;
     krb5_set_error_message(context, ret,
       N_("Error reading tag length in "
          "cache file: %s", ""), FILENAME(id));
     goto out;
 }
 while(length > 0) {
     int16_t dtag, data_len;
     int i;
     int8_t dummy;

     ret = krb5_ret_int16 (sp, &dtag);
     if(ret) {
  ret = KRB5_CC_FORMAT;
  krb5_set_error_message(context, ret, N_("Error reading dtag in "
       "cache file: %s", ""),
           FILENAME(id));
  goto out;
     }
     ret = krb5_ret_int16 (sp, &data_len);
     if(ret) {
  ret = KRB5_CC_FORMAT;
  krb5_set_error_message(context, ret,
           N_("Error reading dlength "
       "in cache file: %s",""),
           FILENAME(id));
  goto out;
     }
     switch (dtag) {
     case 132 : {
  int32_t offset;

  ret = krb5_ret_int32 (sp, &offset);
  ret |= krb5_ret_int32 (sp, &context->kdc_usec_offset);
  if(ret) {
      ret = KRB5_CC_FORMAT;
      krb5_set_error_message(context, ret,
        N_("Error reading kdc_sec in "
           "cache file: %s", ""),
        FILENAME(id));
      goto out;
  }
  context->kdc_sec_offset = offset;
  if (kdc_offset)
      *kdc_offset = offset;
  break;
     }
     default :
  for (i = 0; i < data_len; ++i) {
      ret = krb5_ret_int8 (sp, &dummy);
      if(ret) {
   ret = KRB5_CC_FORMAT;
   krb5_set_error_message(context, ret,
            N_("Error reading unknown "
        "tag in cache file: %s", ""),
            FILENAME(id));
   goto out;
      }
  }
  break;
     }
     length -= 4 + data_len;
 }
 break;
    }
    case 129:
    case 130:
    case 131:
 break;
    default :
 ret = KRB5_CCACHE_BADVNO;
 krb5_set_error_message(context, ret,
          N_("Unknown version number (%d) in "
      "credential cache file: %s", ""),
          (int)tag, FILENAME(id));
 goto out;
    }
    *ret_sp = sp;
    *ret_fd = fd;

    return 0;
  out:
    if(sp != ((void*)0))
 krb5_storage_free(sp);
    fcc_unlock(context, fd);
    close(fd);
    return ret;
}
