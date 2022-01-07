
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int init; int num; long shutdown; int flags; scalar_t__ ptr; } ;
struct TYPE_12__ {char* param_hostname; char* param_service; long connect_family; int connect_mode; int * info_callback; int * addr_iter; int * addr_first; int state; } ;
typedef int BIO_info_cb ;
typedef TYPE_1__ BIO_CONNECT ;
typedef int BIO_ADDR ;
typedef TYPE_2__ BIO ;




 scalar_t__ BIO_ADDRINFO_address (int *) ;
 int BIO_ADDRINFO_family (int *) ;
 int BIO_ADDRINFO_free (int *) ;
 char* BIO_ADDR_hostname_string (int const*,int) ;
 char* BIO_ADDR_service_string (int const*,int) ;
 int BIO_CONN_S_BEFORE ;
 int BIO_CONN_S_OK ;
 long BIO_FAMILY_IPV4 ;
 long BIO_FAMILY_IPV6 ;
 int BIO_PARSE_PRIO_HOST ;
 int BIO_SOCK_NONBLOCK ;
 long BIO_parse_hostserv (void*,char**,char**,int ) ;
 int BIO_set_conn_hostname (TYPE_2__*,char*) ;
 int BIO_set_conn_ip_family (TYPE_2__*,int) ;
 int BIO_set_conn_mode (TYPE_2__*,int) ;
 int BIO_set_conn_port (TYPE_2__*,char*) ;
 int BIO_set_info_callback (TYPE_2__*,int *) ;
 char* BUF_strdup (void*) ;
 int OPENSSL_free (char*) ;
 int conn_close_socket (TYPE_2__*) ;
 scalar_t__ conn_state (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static long conn_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    BIO *dbio;
    int *ip;
    const char **pptr = ((void*)0);
    long ret = 1;
    BIO_CONNECT *data;

    data = (BIO_CONNECT *)b->ptr;

    switch (cmd) {
    case 137:
        ret = 0;
        data->state = BIO_CONN_S_BEFORE;
        conn_close_socket(b);
        BIO_ADDRINFO_free(data->addr_first);
        data->addr_first = ((void*)0);
        b->flags = 0;
        break;
    case 133:

        if (data->state != BIO_CONN_S_OK)
            ret = (long)conn_state(b, data);
        else
            ret = 1;
        break;
    case 132:
        if (ptr != ((void*)0)) {
            pptr = (const char **)ptr;
            if (num == 0) {
                *pptr = data->param_hostname;
            } else if (num == 1) {
                *pptr = data->param_service;
            } else if (num == 2) {
                *pptr = (const char *)BIO_ADDRINFO_address(data->addr_iter);
            } else if (num == 3) {
                switch (BIO_ADDRINFO_family(data->addr_iter)) {

                case 143:
                    ret = BIO_FAMILY_IPV6;
                    break;

                case 144:
                    ret = BIO_FAMILY_IPV4;
                    break;
                case 0:
                    ret = data->connect_family;
                    break;
                default:
                    ret = -1;
                    break;
                }
            } else {
                ret = 0;
            }
        } else {
            ret = 0;
        }
        break;
    case 130:
        if (ptr != ((void*)0)) {
            b->init = 1;
            if (num == 0) {
                char *hold_service = data->param_service;




                OPENSSL_free(data->param_hostname);
                data->param_hostname = ((void*)0);
                ret = BIO_parse_hostserv(ptr,
                                         &data->param_hostname,
                                         &data->param_service,
                                         BIO_PARSE_PRIO_HOST);
                if (hold_service != data->param_service)
                    OPENSSL_free(hold_service);
            } else if (num == 1) {
                OPENSSL_free(data->param_service);
                data->param_service = BUF_strdup(ptr);
            } else if (num == 2) {
                const BIO_ADDR *addr = (const BIO_ADDR *)ptr;
                if (ret) {
                    data->param_hostname = BIO_ADDR_hostname_string(addr, 1);
                    data->param_service = BIO_ADDR_service_string(addr, 1);
                    BIO_ADDRINFO_free(data->addr_first);
                    data->addr_first = ((void*)0);
                    data->addr_iter = ((void*)0);
                }
            } else if (num == 3) {
                data->connect_family = *(int *)ptr;
            } else {
                ret = 0;
            }
        }
        break;
    case 128:
        if (num != 0)
            data->connect_mode |= BIO_SOCK_NONBLOCK;
        else
            data->connect_mode &= ~BIO_SOCK_NONBLOCK;
        break;
    case 129:
        data->connect_mode = (int)num;
        break;
    case 131:
        if (b->init) {
            ip = (int *)ptr;
            if (ip != ((void*)0))
                *ip = b->num;
            ret = b->num;
        } else
            ret = -1;
        break;
    case 139:
        ret = b->shutdown;
        break;
    case 135:
        b->shutdown = (int)num;
        break;
    case 138:
    case 134:
        ret = 0;
        break;
    case 141:
        break;
    case 142:
        {
            dbio = (BIO *)ptr;
            if (data->param_hostname)
                BIO_set_conn_hostname(dbio, data->param_hostname);
            if (data->param_service)
                BIO_set_conn_port(dbio, data->param_service);
            BIO_set_conn_ip_family(dbio, data->connect_family);
            BIO_set_conn_mode(dbio, data->connect_mode);




            (void)BIO_set_info_callback(dbio, data->info_callback);
        }
        break;
    case 136:
        ret = 0;
        break;
    case 140:
        {
            BIO_info_cb **fptr;

            fptr = (BIO_info_cb **)ptr;
            *fptr = data->info_callback;
        }
        break;
    default:
        ret = 0;
        break;
    }
    return ret;
}
