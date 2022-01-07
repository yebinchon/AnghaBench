
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int u_char ;
typedef int rk_socket_t ;
typedef int reply ;
typedef int krb5_error_code ;
struct TYPE_16__ {int* data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_auth_context ;
typedef int krb5_ap_rep_enc_part ;
typedef int error ;
struct TYPE_17__ {TYPE_1__* e_data; } ;
struct TYPE_15__ {int length; int* data; } ;
typedef TYPE_3__ KRB_ERROR ;


 int ENOMEM ;
 int KRB5_KPASSWD_MALFORMED ;
 size_t KRB5_KPASSWD_VERS_CHANGEPW ;
 int N_ (char*,char*) ;
 int _krb5_get_int (int*,unsigned long*,int) ;
 int decode_KRB_ERROR (int*,size_t,TYPE_3__*,size_t*) ;
 int free_KRB_ERROR (TYPE_3__*) ;
 int krb5_data_copy (TYPE_2__*,...) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_free_ap_rep_enc_part (int ,int *) ;
 int krb5_rd_priv (int ,int ,TYPE_2__*,TYPE_2__*,int *) ;
 int krb5_rd_rep (int ,int ,TYPE_2__*,int **) ;
 int krb5_set_error_message (int ,int,char*,char const*,...) ;
 int krb5_warnx (int ,char*) ;
 int memmove (int*,int*,unsigned long) ;
 int memset (TYPE_3__*,int ,int) ;
 int recvfrom (int ,int*,int,int ,int *,int *) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int) ;
 int rk_SOCK_ERRNO ;
 int str2data (TYPE_2__*,char*,...) ;
 int strerror (int) ;

__attribute__((used)) static krb5_error_code
process_reply (krb5_context context,
        krb5_auth_context auth_context,
        int is_stream,
        rk_socket_t sock,
        int *result_code,
        krb5_data *result_code_string,
        krb5_data *result_string,
        const char *host)
{
    krb5_error_code ret;
    u_char reply[1024 * 3];
    size_t len;
    uint16_t pkt_len, pkt_ver;
    krb5_data ap_rep_data;
    int save_errno;

    len = 0;
    if (is_stream) {
 while (len < sizeof(reply)) {
     unsigned long size;

     ret = recvfrom (sock, reply + len, sizeof(reply) - len,
       0, ((void*)0), ((void*)0));
     if (rk_IS_SOCKET_ERROR(ret)) {
  save_errno = rk_SOCK_ERRNO;
  krb5_set_error_message(context, save_errno,
           "recvfrom %s: %s",
           host, strerror(save_errno));
  return save_errno;
     } else if (ret == 0) {
  krb5_set_error_message(context, 1,"recvfrom timeout %s", host);
  return 1;
     }
     len += ret;
     if (len < 4)
  continue;
     _krb5_get_int(reply, &size, 4);
     if (size + 4 < len)
  continue;
     memmove(reply, reply + 4, size);
     len = size;
     break;
 }
 if (len == sizeof(reply)) {
     krb5_set_error_message(context, ENOMEM,
       N_("Message too large from %s", "host"),
       host);
     return ENOMEM;
 }
    } else {
 ret = recvfrom (sock, reply, sizeof(reply), 0, ((void*)0), ((void*)0));
 if (rk_IS_SOCKET_ERROR(ret)) {
     save_errno = rk_SOCK_ERRNO;
     krb5_set_error_message(context, save_errno,
       "recvfrom %s: %s",
       host, strerror(save_errno));
     return save_errno;
 }
 len = ret;
    }

    if (len < 6) {
 str2data (result_string, "server %s sent to too short message "
    "(%zu bytes)", host, len);
 *result_code = KRB5_KPASSWD_MALFORMED;
 return 0;
    }

    pkt_len = (reply[0] << 8) | (reply[1]);
    pkt_ver = (reply[2] << 8) | (reply[3]);

    if ((pkt_len != len) || (reply[1] == 0x7e || reply[1] == 0x5e)) {
 KRB_ERROR error;
 size_t size;
 u_char *p;

 memset(&error, 0, sizeof(error));

 ret = decode_KRB_ERROR(reply, len, &error, &size);
 if (ret)
     return ret;

 if (error.e_data->length < 2) {
     str2data(result_string, "server %s sent too short "
       "e_data to print anything usable", host);
     free_KRB_ERROR(&error);
     *result_code = KRB5_KPASSWD_MALFORMED;
     return 0;
 }

 p = error.e_data->data;
 *result_code = (p[0] << 8) | p[1];
 if (error.e_data->length == 2)
     str2data(result_string, "server only sent error code");
 else
     krb5_data_copy (result_string,
       p + 2,
       error.e_data->length - 2);
 free_KRB_ERROR(&error);
 return 0;
    }

    if (pkt_len != len) {
 str2data (result_string, "client: wrong len in reply");
 *result_code = KRB5_KPASSWD_MALFORMED;
 return 0;
    }
    if (pkt_ver != KRB5_KPASSWD_VERS_CHANGEPW) {
 str2data (result_string,
    "client: wrong version number (%d)", pkt_ver);
 *result_code = KRB5_KPASSWD_MALFORMED;
 return 0;
    }

    ap_rep_data.data = reply + 6;
    ap_rep_data.length = (reply[4] << 8) | (reply[5]);

    if (reply + len < (u_char *)ap_rep_data.data + ap_rep_data.length) {
 str2data (result_string, "client: wrong AP len in reply");
 *result_code = KRB5_KPASSWD_MALFORMED;
 return 0;
    }

    if (ap_rep_data.length) {
 krb5_ap_rep_enc_part *ap_rep;
 krb5_data priv_data;
 u_char *p;

 priv_data.data = (u_char*)ap_rep_data.data + ap_rep_data.length;
 priv_data.length = len - ap_rep_data.length - 6;

 ret = krb5_rd_rep (context,
      auth_context,
      &ap_rep_data,
      &ap_rep);
 if (ret)
     return ret;

 krb5_free_ap_rep_enc_part (context, ap_rep);

 ret = krb5_rd_priv (context,
       auth_context,
       &priv_data,
       result_code_string,
       ((void*)0));
 if (ret) {
     krb5_data_free (result_code_string);
     return ret;
 }

 if (result_code_string->length < 2) {
     *result_code = KRB5_KPASSWD_MALFORMED;
     str2data (result_string,
        "client: bad length in result");
     return 0;
 }

        p = result_code_string->data;

        *result_code = (p[0] << 8) | p[1];
        krb5_data_copy (result_string,
                        (unsigned char*)result_code_string->data + 2,
                        result_code_string->length - 2);
        return 0;
    } else {
 KRB_ERROR error;
 size_t size;
 u_char *p;

 ret = decode_KRB_ERROR(reply + 6, len - 6, &error, &size);
 if (ret) {
     return ret;
 }
 if (error.e_data->length < 2) {
     krb5_warnx (context, "too short e_data to print anything usable");
     return 1;
 }

 p = error.e_data->data;
 *result_code = (p[0] << 8) | p[1];
 krb5_data_copy (result_string,
   p + 2,
   error.e_data->length - 2);
 return 0;
    }
}
