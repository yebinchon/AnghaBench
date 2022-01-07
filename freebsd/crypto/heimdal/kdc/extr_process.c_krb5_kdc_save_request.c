
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct sockaddr {int dummy; } ;
typedef int krb5_storage ;
struct TYPE_5__ {size_t length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int a ;
struct TYPE_6__ {unsigned int tv_sec; } ;
typedef int Der_type ;
typedef int Der_class ;


 int ENOMEM ;
 unsigned int MAKE_TAG (int ,int ,int ) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 TYPE_4__ _kdc_now ;
 int close (int) ;
 int der_get_tag (int ,size_t,int *,int *,unsigned int*,int *) ;
 int errno ;
 int krb5_free_address (int ,int *) ;
 int krb5_set_error_message (int ,int,char*,...) ;
 int krb5_sockaddr2address (int ,struct sockaddr const*,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int) ;
 int krb5_store_address (int *,int ) ;
 int krb5_store_data (int *,TYPE_1__) ;
 int krb5_store_uint32 (int *,unsigned int) ;
 int memset (int *,int ,int) ;
 int open (char const*,int,int) ;
 int rk_UNCONST (unsigned char const*) ;

int
krb5_kdc_save_request(krb5_context context,
        const char *fn,
        const unsigned char *buf,
        size_t len,
        const krb5_data *reply,
        const struct sockaddr *sa)
{
    krb5_storage *sp;
    krb5_address a;
    int fd, ret;
    uint32_t t;
    krb5_data d;

    memset(&a, 0, sizeof(a));

    d.data = rk_UNCONST(buf);
    d.length = len;
    t = _kdc_now.tv_sec;

    fd = open(fn, O_WRONLY|O_CREAT|O_APPEND, 0600);
    if (fd < 0) {
 int saved_errno = errno;
 krb5_set_error_message(context, saved_errno, "Failed to open: %s", fn);
 return saved_errno;
    }

    sp = krb5_storage_from_fd(fd);
    close(fd);
    if (sp == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "Storage failed to open fd");
 return ENOMEM;
    }

    ret = krb5_sockaddr2address(context, sa, &a);
    if (ret)
 goto out;

    krb5_store_uint32(sp, 1);
    krb5_store_uint32(sp, t);
    krb5_store_address(sp, a);
    krb5_store_data(sp, d);
    {
 Der_class cl;
 Der_type ty;
 unsigned int tag;
 ret = der_get_tag (reply->data, reply->length,
      &cl, &ty, &tag, ((void*)0));
 if (ret) {
     krb5_store_uint32(sp, 0xffffffff);
     krb5_store_uint32(sp, 0xffffffff);
 } else {
     krb5_store_uint32(sp, MAKE_TAG(cl, ty, 0));
     krb5_store_uint32(sp, tag);
 }
    }

    krb5_free_address(context, &a);
out:
    krb5_storage_free(sp);

    return 0;
}
