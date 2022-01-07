
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct descr {int type; int port; void* s; } ;
typedef int one ;
typedef int krb5_socklen_t ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int a_str ;
typedef int __ss ;


 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOMAXCONN ;
 int SO_REUSEADDR ;
 int bind (void*,struct sockaddr*,int) ;
 int errno ;
 int init_descr (struct descr*) ;
 scalar_t__ krb5_addr2sockaddr (int ,int *,struct sockaddr*,int*,int) ;
 int krb5_print_address (int *,char*,int,size_t*) ;
 int krb5_warn (int ,int ,char*,...) ;
 int listen (void*,int ) ;
 int ntohs (int) ;
 void* rk_INVALID_SOCKET ;
 scalar_t__ rk_IS_BAD_SOCKET (void*) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int ) ;
 int rk_closesocket (void*) ;
 int setsockopt (void*,int ,int ,void*,int) ;
 void* socket (int,int,int ) ;

__attribute__((used)) static void
init_socket(krb5_context context,
     krb5_kdc_configuration *config,
     struct descr *d, krb5_address *a, int family, int type, int port)
{
    krb5_error_code ret;
    struct sockaddr_storage __ss;
    struct sockaddr *sa = (struct sockaddr *)&__ss;
    krb5_socklen_t sa_size = sizeof(__ss);

    init_descr (d);

    ret = krb5_addr2sockaddr (context, a, sa, &sa_size, port);
    if (ret) {
 krb5_warn(context, ret, "krb5_addr2sockaddr");
 rk_closesocket(d->s);
 d->s = rk_INVALID_SOCKET;
 return;
    }

    if (sa->sa_family != family)
 return;

    d->s = socket(family, type, 0);
    if(rk_IS_BAD_SOCKET(d->s)){
 krb5_warn(context, errno, "socket(%d, %d, 0)", family, type);
 d->s = rk_INVALID_SOCKET;
 return;
    }






    d->type = type;
    d->port = port;

    if(rk_IS_SOCKET_ERROR(bind(d->s, sa, sa_size))){
 char a_str[256];
 size_t len;

 krb5_print_address (a, a_str, sizeof(a_str), &len);
 krb5_warn(context, errno, "bind %s/%d", a_str, ntohs(port));
 rk_closesocket(d->s);
 d->s = rk_INVALID_SOCKET;
 return;
    }
    if(type == SOCK_STREAM && rk_IS_SOCKET_ERROR(listen(d->s, SOMAXCONN))){
 char a_str[256];
 size_t len;

 krb5_print_address (a, a_str, sizeof(a_str), &len);
 krb5_warn(context, errno, "listen %s/%d", a_str, ntohs(port));
 rk_closesocket(d->s);
 d->s = rk_INVALID_SOCKET;
 return;
    }
}
