
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
typedef int krb5_storage ;
typedef int krb5_context ;
struct TYPE_5__ {scalar_t__ version; int log_fd; } ;
struct TYPE_6__ {TYPE_1__ log_context; int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ int32_t ;
typedef enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 int free (void*) ;
 int fsync (int ) ;
 int kadm5_log_replay (TYPE_2__*,int,scalar_t__,scalar_t__,int *) ;
 int krb5_err (int ,int,int ,char*) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_error_message (int ,char const*) ;
 char* krb5_get_error_message (int ,int) ;
 int krb5_ret_int32 (int *,scalar_t__*) ;
 int krb5_storage_read (int *,void*,scalar_t__) ;
 scalar_t__ krb5_storage_seek (int *,scalar_t__,int ) ;
 int krb5_warnx (int ,char*,long,...) ;
 void* malloc (scalar_t__) ;
 scalar_t__ write (int ,void*,scalar_t__) ;

__attribute__((used)) static void
receive_loop (krb5_context context,
       krb5_storage *sp,
       kadm5_server_context *server_context)
{
    int ret;
    off_t left, right;
    void *buf;
    int32_t vers, vers2;
    ssize_t sret;




    do {
 int32_t len, timestamp, tmp;
 enum kadm_ops op;

 if(krb5_ret_int32 (sp, &vers) != 0)
     return;
 krb5_ret_int32 (sp, &timestamp);
 krb5_ret_int32 (sp, &tmp);
 op = tmp;
 krb5_ret_int32 (sp, &len);
 if ((uint32_t)vers <= server_context->log_context.version)
     krb5_storage_seek(sp, len + 8, SEEK_CUR);
    } while((uint32_t)vers <= server_context->log_context.version);




    left = krb5_storage_seek (sp, -16, SEEK_CUR);
    right = krb5_storage_seek (sp, 0, SEEK_END);
    buf = malloc (right - left);
    if (buf == ((void*)0) && (right - left) != 0)
 krb5_errx (context, 1, "malloc: no memory");




    krb5_storage_seek (sp, left, SEEK_SET);
    krb5_storage_read (sp, buf, right - left);
    sret = write (server_context->log_context.log_fd, buf, right-left);
    if (sret != right - left)
 krb5_err(context, 1, errno, "Failed to write log to disk");
    ret = fsync (server_context->log_context.log_fd);
    if (ret)
 krb5_err(context, 1, errno, "Failed to sync log to disk");
    free (buf);





    krb5_storage_seek (sp, left, SEEK_SET);

    for(;;) {
 int32_t len, len2, timestamp, tmp;
 off_t cur, cur2;
 enum kadm_ops op;

 if(krb5_ret_int32 (sp, &vers) != 0)
     break;
 ret = krb5_ret_int32 (sp, &timestamp);
 if (ret) krb5_errx(context, 1, "entry %ld: too short", (long)vers);
 ret = krb5_ret_int32 (sp, &tmp);
 if (ret) krb5_errx(context, 1, "entry %ld: too short", (long)vers);
 op = tmp;
 ret = krb5_ret_int32 (sp, &len);
 if (ret) krb5_errx(context, 1, "entry %ld: too short", (long)vers);
 if (len < 0)
     krb5_errx(context, 1, "log is corrupted, "
        "negative length of entry version %ld: %ld",
        (long)vers, (long)len);
 cur = krb5_storage_seek(sp, 0, SEEK_CUR);

 krb5_warnx (context, "replaying entry %d", (int)vers);

 ret = kadm5_log_replay (server_context,
    op, vers, len, sp);
 if (ret) {
     const char *s = krb5_get_error_message(server_context->context, ret);
     krb5_warnx (context,
   "kadm5_log_replay: %ld. Lost entry entry, "
   "Database out of sync ?: %s (%d)",
   (long)vers, s ? s : "unknown error", ret);
     krb5_free_error_message(context, s);
 }

 {




     cur2 = krb5_storage_seek(sp, 0, SEEK_CUR);
     if (cur + len != cur2)
  krb5_errx(context, 1,
     "kadm5_log_reply version: %ld didn't read the whole entry",
     (long)vers);
 }

 if (krb5_ret_int32 (sp, &len2) != 0)
     krb5_errx(context, 1, "entry %ld: postamble too short", (long)vers);
 if(krb5_ret_int32 (sp, &vers2) != 0)
     krb5_errx(context, 1, "entry %ld: postamble too short", (long)vers);

 if (len != len2)
     krb5_errx(context, 1, "entry %ld: len != len2", (long)vers);
 if (vers != vers2)
     krb5_errx(context, 1, "entry %ld: vers != vers2", (long)vers);
    }





    server_context->log_context.version = vers;
}
