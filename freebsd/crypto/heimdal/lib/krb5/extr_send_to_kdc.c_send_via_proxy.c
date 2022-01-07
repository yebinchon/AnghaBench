
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct addrinfo {int ai_socktype; int ai_addrlen; int ai_addr; int ai_protocol; int ai_family; struct addrinfo* ai_next; } ;
typedef int portstr ;
typedef scalar_t__ krb5_socket_t ;
struct TYPE_10__ {int hostname; } ;
typedef TYPE_1__ krb5_krbhst_info ;
struct TYPE_11__ {scalar_t__ length; } ;
typedef TYPE_2__ krb5_data ;
typedef TYPE_3__* krb5_context ;
typedef int hints ;
struct TYPE_12__ {int kdc_timeout; int http_proxy; } ;


 int ENOMEM ;
 int NI_MAXSERV ;
 int PF_UNSPEC ;
 int SOCK_CLOEXEC ;
 int SOCK_STREAM ;
 int asprintf (char**,char*,int ) ;
 int close (scalar_t__) ;
 scalar_t__ connect (scalar_t__,int ,int ) ;
 int errno ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int htons (int) ;
 int init_port (char*,int ) ;
 int krb5_eai_to_heim_errno (int,int ) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohs (int ) ;
 scalar_t__ rk_INVALID_SOCKET ;
 int rk_cloexec (scalar_t__) ;
 int rk_closesocket (scalar_t__) ;
 int send_and_recv_http (scalar_t__,int ,char*,TYPE_2__ const*,TYPE_2__*) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ socket (int ,int,int ) ;
 char* strchr (char*,char) ;
 char* strdup (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
send_via_proxy (krb5_context context,
  const krb5_krbhst_info *hi,
  const krb5_data *send_data,
  krb5_data *receive)
{
    char *proxy2 = strdup(context->http_proxy);
    char *proxy = proxy2;
    char *prefix = ((void*)0);
    char *colon;
    struct addrinfo hints;
    struct addrinfo *ai, *a;
    int ret;
    krb5_socket_t s = rk_INVALID_SOCKET;
    char portstr[NI_MAXSERV];

    if (proxy == ((void*)0))
 return ENOMEM;
    if (strncmp (proxy, "http://", 7) == 0)
 proxy += 7;

    colon = strchr(proxy, ':');
    if(colon != ((void*)0))
 *colon++ = '\0';
    memset (&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    snprintf (portstr, sizeof(portstr), "%d",
       ntohs(init_port (colon, htons(80))));
    ret = getaddrinfo (proxy, portstr, &hints, &ai);
    free (proxy2);
    if (ret)
 return krb5_eai_to_heim_errno(ret, errno);

    for (a = ai; a != ((void*)0); a = a->ai_next) {
 s = socket (a->ai_family, a->ai_socktype | SOCK_CLOEXEC, a->ai_protocol);
 if (s < 0)
     continue;
 rk_cloexec(s);
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     rk_closesocket (s);
     continue;
 }
 break;
    }
    if (a == ((void*)0)) {
 freeaddrinfo (ai);
 return 1;
    }
    freeaddrinfo (ai);

    ret = asprintf(&prefix, "http://%s/", hi->hostname);
    if(ret < 0 || prefix == ((void*)0)) {
 close(s);
 return 1;
    }
    ret = send_and_recv_http(s, context->kdc_timeout,
        prefix, send_data, receive);
    rk_closesocket (s);
    free(prefix);
    if(ret == 0 && receive->length != 0)
 return 0;
    return 1;
}
