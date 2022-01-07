
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct descr {scalar_t__ timeout; int len; char* buf; int port; int addr_string; int s; } ;
typedef int krb5_kdc_configuration ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int buf ;


 int KRB5KRB_ERR_FIELD_TOOLONG ;
 int TRUE ;
 int add_new_tcp (int ,int *,struct descr*,int,int) ;
 int clear_descr (struct descr*) ;
 int descr_type (struct descr*) ;
 int do_request (int ,int *,int*,int,int ,struct descr*) ;
 scalar_t__ enable_http ;
 scalar_t__ grow_descr (int ,int *,struct descr*,int) ;
 int handle_http_tcp (int ,int *,struct descr*) ;
 int handle_vanilla_tcp (int ,int *,struct descr*) ;
 int kdc_log (int ,int *,int ,char*,...) ;
 int krb5_data_free (int *) ;
 int krb5_mk_error (int ,int ,int *,int *,int *,int *,int *,int *,int *) ;
 int krb5_warn (int ,int ,char*,int ,int ,int ) ;
 int krb5_warnx (int ,char*,unsigned long,int ,int ,int ) ;
 int memcpy (char*,unsigned char*,int) ;
 int ntohs (int ) ;
 int recvfrom (int ,unsigned char*,int,int ,int *,int *) ;
 scalar_t__ rk_IS_SOCKET_ERROR (int) ;
 int rk_SOCK_ERRNO ;
 int send_reply (int ,int *,int ,struct descr*,int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
handle_tcp(krb5_context context,
    krb5_kdc_configuration *config,
    struct descr *d, int idx, int min_free)
{
    unsigned char buf[1024];
    int n;
    int ret = 0;

    if (d[idx].timeout == 0) {
 add_new_tcp (context, config, d, idx, min_free);
 return;
    }

    n = recvfrom(d[idx].s, buf, sizeof(buf), 0, ((void*)0), ((void*)0));
    if(rk_IS_SOCKET_ERROR(n)){
 krb5_warn(context, rk_SOCK_ERRNO, "recvfrom failed from %s to %s/%d",
    d[idx].addr_string, descr_type(d + idx),
    ntohs(d[idx].port));
 return;
    } else if (n == 0) {
 krb5_warnx(context, "connection closed before end of data after %lu "
     "bytes from %s to %s/%d", (unsigned long)d[idx].len,
     d[idx].addr_string, descr_type(d + idx),
     ntohs(d[idx].port));
 clear_descr (d + idx);
 return;
    }
    if (grow_descr (context, config, &d[idx], n))
 return;
    memcpy(d[idx].buf + d[idx].len, buf, n);
    d[idx].len += n;
    if(d[idx].len > 4 && d[idx].buf[0] == 0) {
 ret = handle_vanilla_tcp (context, config, &d[idx]);
    } else if(enable_http &&
       d[idx].len >= 4 &&
       strncmp((char *)d[idx].buf, "GET ", 4) == 0 &&
       strncmp((char *)d[idx].buf + d[idx].len - 4,
        "\r\n\r\n", 4) == 0) {


        d[idx].buf[d[idx].len - 4] = '\0';

 ret = handle_http_tcp (context, config, &d[idx]);
 if (ret < 0)
     clear_descr (d + idx);
    } else if (d[idx].len > 4) {
 kdc_log (context, config,
   0, "TCP data of strange type from %s to %s/%d",
   d[idx].addr_string, descr_type(d + idx),
   ntohs(d[idx].port));
 if (d[idx].buf[0] & 0x80) {
     krb5_data reply;

     kdc_log (context, config, 0, "TCP extension not supported");

     ret = krb5_mk_error(context,
    KRB5KRB_ERR_FIELD_TOOLONG,
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    ((void*)0),
    &reply);
     if (ret == 0) {
  send_reply(context, config, TRUE, d + idx, &reply);
  krb5_data_free(&reply);
     }
 }
 clear_descr(d + idx);
 return;
    }
    if (ret < 0)
 return;
    else if (ret == 1) {
 do_request(context, config,
     d[idx].buf, d[idx].len, TRUE, &d[idx]);
 clear_descr(d + idx);
    }
}
