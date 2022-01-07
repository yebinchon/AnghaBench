
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_char ;
struct msghdr {int msg_iovlen; scalar_t__ msg_controllen; int * msg_control; struct iovec* msg_iov; scalar_t__ msg_namelen; int * msg_name; } ;
struct iovec {int iov_len; void* iov_base; } ;
typedef int rk_socket_t ;
typedef int msghdr ;
typedef scalar_t__ krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_10__ {int length; void* data; } ;
typedef TYPE_1__ krb5_data ;
struct TYPE_11__ {int client; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_auth_context ;
typedef int iov ;


 int AP_OPTS_MUTUAL_REQUIRED ;
 int AP_OPTS_USE_SUBKEY ;
 scalar_t__ KRB5_KPASSWD_MALFORMED ;
 scalar_t__ TRUE ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_zero (TYPE_1__*) ;
 scalar_t__ krb5_mk_priv (int ,int ,TYPE_1__*,TYPE_1__*,int *) ;
 scalar_t__ krb5_mk_req_extended (int ,int *,int,int *,TYPE_2__*,TYPE_1__*) ;
 scalar_t__ krb5_principal_compare (int ,int ,scalar_t__) ;
 int krb5_set_error_message (int ,scalar_t__,char*,char const*,int ) ;
 int memset (struct msghdr*,int ,int) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int ) ;
 scalar_t__ rk_SOCK_ERRNO ;
 void* rk_UNCONST (char const*) ;
 int sendmsg (int ,struct msghdr*,int ) ;
 int strerror (scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static krb5_error_code
chgpw_send_request (krb5_context context,
      krb5_auth_context *auth_context,
      krb5_creds *creds,
      krb5_principal targprinc,
      int is_stream,
      rk_socket_t sock,
      const char *passwd,
      const char *host)
{
    krb5_error_code ret;
    krb5_data ap_req_data;
    krb5_data krb_priv_data;
    krb5_data passwd_data;
    size_t len;
    u_char header[6];
    struct iovec iov[3];
    struct msghdr msghdr;

    if (is_stream)
 return KRB5_KPASSWD_MALFORMED;

    if (targprinc &&
 krb5_principal_compare(context, creds->client, targprinc) != TRUE)
 return KRB5_KPASSWD_MALFORMED;

    krb5_data_zero (&ap_req_data);

    ret = krb5_mk_req_extended (context,
    auth_context,
    AP_OPTS_MUTUAL_REQUIRED | AP_OPTS_USE_SUBKEY,
    ((void*)0),
    creds,
    &ap_req_data);
    if (ret)
 return ret;

    passwd_data.data = rk_UNCONST(passwd);
    passwd_data.length = strlen(passwd);

    krb5_data_zero (&krb_priv_data);

    ret = krb5_mk_priv (context,
   *auth_context,
   &passwd_data,
   &krb_priv_data,
   ((void*)0));
    if (ret)
 goto out2;

    len = 6 + ap_req_data.length + krb_priv_data.length;
    header[0] = (len >> 8) & 0xFF;
    header[1] = (len >> 0) & 0xFF;
    header[2] = 0;
    header[3] = 1;
    header[4] = (ap_req_data.length >> 8) & 0xFF;
    header[5] = (ap_req_data.length >> 0) & 0xFF;

    memset(&msghdr, 0, sizeof(msghdr));
    msghdr.msg_name = ((void*)0);
    msghdr.msg_namelen = 0;
    msghdr.msg_iov = iov;
    msghdr.msg_iovlen = sizeof(iov)/sizeof(*iov);





    iov[0].iov_base = (void*)header;
    iov[0].iov_len = 6;
    iov[1].iov_base = ap_req_data.data;
    iov[1].iov_len = ap_req_data.length;
    iov[2].iov_base = krb_priv_data.data;
    iov[2].iov_len = krb_priv_data.length;

    if (rk_IS_SOCKET_ERROR( sendmsg (sock, &msghdr, 0) )) {
 ret = rk_SOCK_ERRNO;
 krb5_set_error_message(context, ret, "sendmsg %s: %s",
          host, strerror(ret));
    }

    krb5_data_free (&krb_priv_data);
out2:
    krb5_data_free (&ap_req_data);
    return ret;
}
