
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


union BIO_sock_info_u {int * addr; } ;
struct TYPE_17__ {int num; int * next_bio; int retry_reason; } ;
struct TYPE_16__ {int state; int accept_sock; int cache_peer_addr; int * cache_peer_serv; int * cache_peer_name; int * bio_chain; int accepted_mode; int cache_accepting_addr; int * cache_accepting_serv; int * cache_accepting_name; int bind_mode; int * addr_iter; int * param_serv; int * param_addr; int * addr_first; int accept_family; } ;
typedef TYPE_1__ BIO_ACCEPT ;
typedef TYPE_2__ BIO ;
 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int BIO_ADDRINFO_address (int *) ;
 int BIO_ADDRINFO_family (int *) ;
 int BIO_ADDRINFO_protocol (int *) ;
 int BIO_ADDRINFO_socktype (int *) ;
 void* BIO_ADDR_hostname_string (int *,int) ;
 void* BIO_ADDR_service_string (int *,int) ;
 int BIO_CLOSE ;



 int BIO_F_ACPT_STATE ;
 int BIO_LOOKUP_SERVER ;
 int BIO_RR_ACCEPT ;
 int BIO_R_LOOKUP_RETURNED_NOTHING ;
 int BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED ;
 int BIO_R_UNABLE_TO_CREATE_SOCKET ;
 int BIO_R_UNAVAILABLE_IP_FAMILY ;
 int BIO_R_UNSUPPORTED_IP_FAMILY ;
 int BIO_SOCK_INFO_ADDRESS ;
 int BIO_accept_ex (int,int *,int ) ;
 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_closesocket (int) ;
 TYPE_2__* BIO_dup_chain (int *) ;
 int BIO_free (TYPE_2__*) ;
 int BIO_get_callback (TYPE_2__*) ;
 int BIO_get_callback_arg (TYPE_2__*) ;
 int BIO_listen (int,int ,int ) ;
 int BIO_lookup (int *,int *,int ,int,int ,int **) ;
 TYPE_2__* BIO_new_socket (int,int ) ;
 int * BIO_push (TYPE_2__*,TYPE_2__*) ;
 int BIO_set_callback (TYPE_2__*,int ) ;
 int BIO_set_callback_arg (TYPE_2__*,int ) ;
 int BIO_set_retry_special (TYPE_2__*) ;
 int BIO_sock_info (int,int ,union BIO_sock_info_u*) ;
 int BIO_sock_should_retry (int) ;
 int BIO_socket (int ,int ,int ,int ) ;
 int BIOerr (int ,int ) ;
 int ERR_add_error_data (int,char*,int *,char*,int *) ;
 scalar_t__ INVALID_SOCKET ;
 int OPENSSL_free (int *) ;
 int SOCK_STREAM ;
 int SYS_F_SOCKET ;
 int SYSerr (int ,int ) ;
 int get_last_socket_error () ;

__attribute__((used)) static int acpt_state(BIO *b, BIO_ACCEPT *c)
{
    BIO *bio = ((void*)0), *dbio;
    int s = -1, ret = -1;

    for (;;) {
        switch (c->state) {
        case 135:
            if (c->param_addr == ((void*)0) && c->param_serv == ((void*)0)) {
                BIOerr(BIO_F_ACPT_STATE, BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED);
                ERR_add_error_data(4,
                                   "hostname=", c->param_addr,
                                   " service=", c->param_serv);
                goto exit_loop;
            }





            OPENSSL_free(c->cache_accepting_name);
            c->cache_accepting_name = ((void*)0);
            OPENSSL_free(c->cache_accepting_serv);
            c->cache_accepting_serv = ((void*)0);
            OPENSSL_free(c->cache_peer_name);
            c->cache_peer_name = ((void*)0);
            OPENSSL_free(c->cache_peer_serv);
            c->cache_peer_serv = ((void*)0);

            c->state = 133;
            break;

        case 133:
            {
                int family = AF_UNSPEC;
                switch (c->accept_family) {
                case 128:
                    if (1) {







                        BIOerr(BIO_F_ACPT_STATE, BIO_R_UNAVAILABLE_IP_FAMILY);
                        goto exit_loop;
                    }
                    break;
                case 129:
                    family = AF_INET;
                    break;
                case 130:
                    family = AF_UNSPEC;
                    break;
                default:
                    BIOerr(BIO_F_ACPT_STATE, BIO_R_UNSUPPORTED_IP_FAMILY);
                    goto exit_loop;
                }
                if (BIO_lookup(c->param_addr, c->param_serv, BIO_LOOKUP_SERVER,
                               family, SOCK_STREAM, &c->addr_first) == 0)
                    goto exit_loop;
            }
            if (c->addr_first == ((void*)0)) {
                BIOerr(BIO_F_ACPT_STATE, BIO_R_LOOKUP_RETURNED_NOTHING);
                goto exit_loop;
            }



            c->addr_iter = c->addr_first;
            c->state = 134;
            break;

        case 134:
            ret = BIO_socket(BIO_ADDRINFO_family(c->addr_iter),
                             BIO_ADDRINFO_socktype(c->addr_iter),
                             BIO_ADDRINFO_protocol(c->addr_iter), 0);
            if (ret == (int)INVALID_SOCKET) {
                SYSerr(SYS_F_SOCKET, get_last_socket_error());
                ERR_add_error_data(4,
                                   "hostname=", c->param_addr,
                                   " service=", c->param_serv);
                BIOerr(BIO_F_ACPT_STATE, BIO_R_UNABLE_TO_CREATE_SOCKET);
                goto exit_loop;
            }
            c->accept_sock = ret;
            b->num = ret;
            c->state = 132;
            break;

        case 132:
            {
                if (!BIO_listen(c->accept_sock,
                                BIO_ADDRINFO_address(c->addr_iter),
                                c->bind_mode)) {
                    BIO_closesocket(c->accept_sock);
                    goto exit_loop;
                }
            }

            {
                union BIO_sock_info_u info;

                info.addr = &c->cache_accepting_addr;
                if (!BIO_sock_info(c->accept_sock, BIO_SOCK_INFO_ADDRESS,
                                   &info)) {
                    BIO_closesocket(c->accept_sock);
                    goto exit_loop;
                }
            }

            c->cache_accepting_name =
                BIO_ADDR_hostname_string(&c->cache_accepting_addr, 1);
            c->cache_accepting_serv =
                BIO_ADDR_service_string(&c->cache_accepting_addr, 1);
            c->state = 136;
            s = -1;
            ret = 1;
            goto end;

        case 136:
            if (b->next_bio != ((void*)0)) {
                c->state = 131;
                break;
            }
            BIO_clear_retry_flags(b);
            b->retry_reason = 0;

            OPENSSL_free(c->cache_peer_name);
            c->cache_peer_name = ((void*)0);
            OPENSSL_free(c->cache_peer_serv);
            c->cache_peer_serv = ((void*)0);

            s = BIO_accept_ex(c->accept_sock, &c->cache_peer_addr,
                              c->accepted_mode);




            if (s < 0) {
                if (BIO_sock_should_retry(s)) {
                    BIO_set_retry_special(b);
                    b->retry_reason = BIO_RR_ACCEPT;
                    goto end;
                }
            }


            if (s < 0) {
                ret = s;
                goto exit_loop;
            }

            bio = BIO_new_socket(s, BIO_CLOSE);
            if (bio == ((void*)0))
                goto exit_loop;

            BIO_set_callback(bio, BIO_get_callback(b));
            BIO_set_callback_arg(bio, BIO_get_callback_arg(b));





            if (c->bio_chain != ((void*)0)) {
                if ((dbio = BIO_dup_chain(c->bio_chain)) == ((void*)0))
                    goto exit_loop;
                if (!BIO_push(dbio, bio))
                    goto exit_loop;
                bio = dbio;
            }
            if (BIO_push(b, bio) == ((void*)0))
                goto exit_loop;

            c->cache_peer_name =
                BIO_ADDR_hostname_string(&c->cache_peer_addr, 1);
            c->cache_peer_serv =
                BIO_ADDR_service_string(&c->cache_peer_addr, 1);
            c->state = 131;
            bio = ((void*)0);
            ret = 1;
            goto end;

        case 131:
            if (b->next_bio == ((void*)0)) {
                c->state = 136;
                break;
            }
            ret = 1;
            goto end;

        default:
            ret = 0;
            goto end;
        }
    }

  exit_loop:
    if (bio != ((void*)0))
        BIO_free(bio);
    else if (s >= 0)
        BIO_closesocket(s);
  end:
    return ret;
}
