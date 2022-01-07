
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct krb5_krbhst_info {char* hostname; struct addrinfo* ai; int def_port; int port; int proto; } ;
struct krb5_krbhst_data {int dummy; } ;
struct addrinfo {int dummy; } ;
typedef int socklen_t ;
typedef int port ;
typedef int krb5_error_code ;
typedef int host ;


 int ENOMEM ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int append_host_hostinfo (struct krb5_krbhst_data*,struct krb5_krbhst_info*) ;
 struct krb5_krbhst_info* calloc (int,int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (struct sockaddr*,int ,char*,int,char*,int,int) ;
 int krbhst_get_default_proto (struct krb5_krbhst_data*) ;
 int make_hints (struct addrinfo*,int ) ;
 int memmove (char*,char*,size_t) ;
 int socket_get_port (struct sockaddr*) ;
 int socket_sockaddr_size (struct sockaddr*) ;
 size_t strlen (char*) ;

__attribute__((used)) static krb5_error_code
add_locate(void *ctx, int type, struct sockaddr *addr)
{
    struct krb5_krbhst_info *hi;
    struct krb5_krbhst_data *kd = ctx;
    char host[NI_MAXHOST], port[NI_MAXSERV];
    struct addrinfo hints, *ai;
    socklen_t socklen;
    size_t hostlen;
    int ret;

    socklen = socket_sockaddr_size(addr);

    ret = getnameinfo(addr, socklen, host, sizeof(host), port, sizeof(port),
        NI_NUMERICHOST|NI_NUMERICSERV);
    if (ret != 0)
 return 0;

    make_hints(&hints, krbhst_get_default_proto(kd));
    ret = getaddrinfo(host, port, &hints, &ai);
    if (ret)
 return 0;

    hostlen = strlen(host);

    hi = calloc(1, sizeof(*hi) + hostlen);
    if(hi == ((void*)0))
 return ENOMEM;

    hi->proto = krbhst_get_default_proto(kd);
    hi->port = hi->def_port = socket_get_port(addr);
    hi->ai = ai;
    memmove(hi->hostname, host, hostlen);
    hi->hostname[hostlen] = '\0';
    append_host_hostinfo(kd, hi);

    return 0;
}
