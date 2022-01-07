
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fkt_data {int filename; } ;
struct TYPE_5__ {int * sp; int fd; } ;
typedef TYPE_1__ krb5_kt_cursor ;
typedef TYPE_2__* krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int int8_t ;
struct TYPE_6__ {int version; struct fkt_data* data; } ;


 scalar_t__ ENOMEM ;
 scalar_t__ KRB5_KEYTAB_BADVNO ;
 int KRB5_KT_END ;
 int N_ (char*,char*) ;
 scalar_t__ _krb5_xlock (int ,int ,int,int ) ;
 int _krb5_xunlock (int ,int ) ;
 int close (int ) ;
 scalar_t__ errno ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_ret_int8 (int *,int*) ;
 int krb5_set_error_message (int ,scalar_t__,int ,...) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int ) ;
 int krb5_storage_set_eof_code (int *,int ) ;
 int open (int ,int) ;
 int rk_cloexec (int ) ;
 int storage_set_flags (int ,int *,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static krb5_error_code
fkt_start_seq_get_int(krb5_context context,
        krb5_keytab id,
        int flags,
        int exclusive,
        krb5_kt_cursor *c)
{
    int8_t pvno, tag;
    krb5_error_code ret;
    struct fkt_data *d = id->data;

    c->fd = open (d->filename, flags);
    if (c->fd < 0) {
 ret = errno;
 krb5_set_error_message(context, ret,
          N_("keytab %s open failed: %s", ""),
          d->filename, strerror(ret));
 return ret;
    }
    rk_cloexec(c->fd);
    ret = _krb5_xlock(context, c->fd, exclusive, d->filename);
    if (ret) {
 close(c->fd);
 return ret;
    }
    c->sp = krb5_storage_from_fd(c->fd);
    if (c->sp == ((void*)0)) {
 _krb5_xunlock(context, c->fd);
 close(c->fd);
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    krb5_storage_set_eof_code(c->sp, KRB5_KT_END);
    ret = krb5_ret_int8(c->sp, &pvno);
    if(ret) {
 krb5_storage_free(c->sp);
 _krb5_xunlock(context, c->fd);
 close(c->fd);
 krb5_clear_error_message(context);
 return ret;
    }
    if(pvno != 5) {
 krb5_storage_free(c->sp);
 _krb5_xunlock(context, c->fd);
 close(c->fd);
 krb5_clear_error_message (context);
 return KRB5_KEYTAB_BADVNO;
    }
    ret = krb5_ret_int8(c->sp, &tag);
    if (ret) {
 krb5_storage_free(c->sp);
 _krb5_xunlock(context, c->fd);
 close(c->fd);
 krb5_clear_error_message(context);
 return ret;
    }
    id->version = tag;
    storage_set_flags(context, c->sp, id->version);
    return 0;
}
