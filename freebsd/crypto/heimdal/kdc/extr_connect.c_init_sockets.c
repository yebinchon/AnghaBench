
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct descr {scalar_t__ s; } ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_6__ {int len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;
typedef int a_str ;
struct TYPE_7__ {scalar_t__ type; int port; int family; } ;


 scalar_t__ SOCK_STREAM ;
 TYPE_1__ explicit_addresses ;
 int init_socket (int ,int *,struct descr*,int *,int ,scalar_t__,int ) ;
 int kdc_log (int ,int *,int,char*,char*,int ,char*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*,unsigned long) ;
 int krb5_free_addresses (int ,TYPE_1__*) ;
 scalar_t__ krb5_get_all_server_addrs (int ,TYPE_1__*) ;
 int krb5_print_address (int *,char*,int,size_t*) ;
 struct descr* malloc (int) ;
 int ntohs (int ) ;
 int num_ports ;
 int parse_ports (int ,int *,int ) ;
 int port_str ;
 TYPE_2__* ports ;
 struct descr* realloc (struct descr*,int) ;
 int reinit_descrs (struct descr*,int) ;
 scalar_t__ rk_INVALID_SOCKET ;

__attribute__((used)) static int
init_sockets(krb5_context context,
      krb5_kdc_configuration *config,
      struct descr **desc)
{
    krb5_error_code ret;
    size_t i, j;
    struct descr *d;
    int num = 0;
    krb5_addresses addresses;

    if (explicit_addresses.len) {
 addresses = explicit_addresses;
    } else {
 ret = krb5_get_all_server_addrs (context, &addresses);
 if (ret)
     krb5_err (context, 1, ret, "krb5_get_all_server_addrs");
    }
    parse_ports(context, config, port_str);
    d = malloc(addresses.len * num_ports * sizeof(*d));
    if (d == ((void*)0))
 krb5_errx(context, 1, "malloc(%lu) failed",
    (unsigned long)num_ports * sizeof(*d));

    for (i = 0; i < num_ports; i++){
 for (j = 0; j < addresses.len; ++j) {
     init_socket(context, config, &d[num], &addresses.val[j],
   ports[i].family, ports[i].type, ports[i].port);
     if(d[num].s != rk_INVALID_SOCKET){
  char a_str[80];
  size_t len;

  krb5_print_address (&addresses.val[j], a_str,
        sizeof(a_str), &len);

  kdc_log(context, config, 5, "listening on %s port %u/%s",
   a_str,
   ntohs(ports[i].port),
   (ports[i].type == SOCK_STREAM) ? "tcp" : "udp");

  num++;
     }
 }
    }
    krb5_free_addresses (context, &addresses);
    d = realloc(d, num * sizeof(*d));
    if (d == ((void*)0) && num != 0)
 krb5_errx(context, 1, "realloc(%lu) failed",
    (unsigned long)num * sizeof(*d));
    reinit_descrs (d, num);
    *desc = d;
    return num;
}
