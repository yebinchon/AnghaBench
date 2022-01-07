
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const BIO_ADDRINFO ;
typedef int BIO ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNIX ;
 int AF_UNSPEC ;
 int BIO_ADDRINFO_address (int const*) ;
 int BIO_ADDRINFO_family (int const*) ;
 int BIO_ADDRINFO_free (int const*) ;
 int const* BIO_ADDRINFO_next (int const*) ;
 int BIO_ADDRINFO_protocol (int const*) ;
 int BIO_ADDRINFO_socktype (int const*) ;
 int BIO_LOOKUP_CLIENT ;
 int BIO_NOCLOSE ;
 int BIO_SOCK_NODELAY ;
 int BIO_SOCK_REUSEADDR ;
 int BIO_bind (int,int ,int ) ;
 int BIO_closesocket (int) ;
 int BIO_connect (int,int ,int ) ;
 int BIO_free (int *) ;
 int BIO_lookup_ex (char const*,char const*,int ,int,int,int,int const**) ;
 int * BIO_new_dgram_sctp (int,int ) ;
 int BIO_printf (int ,char*,char*,char const*,char*,char const*) ;
 int BIO_sock_init () ;
 int BIO_socket (int,int,int,int ) ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 int INVALID_SOCKET ;
 int IPPROTO_SCTP ;
 int IPPROTO_TCP ;
 int OPENSSL_assert (int) ;
 int bio_err ;

int init_client(int *sock, const char *host, const char *port,
                const char *bindhost, const char *bindport,
                int family, int type, int protocol)
{
    BIO_ADDRINFO *res = ((void*)0);
    BIO_ADDRINFO *bindaddr = ((void*)0);
    const BIO_ADDRINFO *ai = ((void*)0);
    const BIO_ADDRINFO *bi = ((void*)0);
    int found = 0;
    int ret;

    if (BIO_sock_init() != 1)
        return 0;

    ret = BIO_lookup_ex(host, port, BIO_LOOKUP_CLIENT, family, type, protocol,
                        &res);
    if (ret == 0) {
        ERR_print_errors(bio_err);
        return 0;
    }

    if (bindhost != ((void*)0) || bindport != ((void*)0)) {
        ret = BIO_lookup_ex(bindhost, bindport, BIO_LOOKUP_CLIENT,
                            family, type, protocol, &bindaddr);
        if (ret == 0) {
            ERR_print_errors (bio_err);
            goto out;
        }
    }

    ret = 0;
    for (ai = res; ai != ((void*)0); ai = BIO_ADDRINFO_next(ai)) {



        OPENSSL_assert((family == AF_UNSPEC
                        || family == BIO_ADDRINFO_family(ai))
                       && (type == 0 || type == BIO_ADDRINFO_socktype(ai))
                       && (protocol == 0
                           || protocol == BIO_ADDRINFO_protocol(ai)));

        if (bindaddr != ((void*)0)) {
            for (bi = bindaddr; bi != ((void*)0); bi = BIO_ADDRINFO_next(bi)) {
                if (BIO_ADDRINFO_family(bi) == BIO_ADDRINFO_family(ai))
                    break;
            }
            if (bi == ((void*)0))
                continue;
            ++found;
        }

        *sock = BIO_socket(BIO_ADDRINFO_family(ai), BIO_ADDRINFO_socktype(ai),
                           BIO_ADDRINFO_protocol(ai), 0);
        if (*sock == INVALID_SOCKET) {



            continue;
        }

        if (bi != ((void*)0)) {
            if (!BIO_bind(*sock, BIO_ADDRINFO_address(bi),
                          BIO_SOCK_REUSEADDR)) {
                BIO_closesocket(*sock);
                *sock = INVALID_SOCKET;
                break;
            }
        }


        if (protocol == IPPROTO_SCTP) {






            BIO *tmpbio = BIO_new_dgram_sctp(*sock, BIO_NOCLOSE);

            if (tmpbio == ((void*)0)) {
                ERR_print_errors(bio_err);
                return 0;
            }
            BIO_free(tmpbio);
        }


        if (!BIO_connect(*sock, BIO_ADDRINFO_address(ai),
                         protocol == IPPROTO_TCP ? BIO_SOCK_NODELAY : 0)) {
            BIO_closesocket(*sock);
            *sock = INVALID_SOCKET;
            continue;
        }


        break;
    }

    if (*sock == INVALID_SOCKET) {
        if (bindaddr != ((void*)0) && !found) {
            BIO_printf(bio_err, "Can't bind %saddress for %s%s%s\n",
                       BIO_ADDRINFO_family(res) == AF_INET6 ? "IPv6 " :
                       BIO_ADDRINFO_family(res) == AF_INET ? "IPv4 " :
                       BIO_ADDRINFO_family(res) == AF_UNIX ? "unix " : "",
                       bindhost != ((void*)0) ? bindhost : "",
                       bindport != ((void*)0) ? ":" : "",
                       bindport != ((void*)0) ? bindport : "");
            ERR_clear_error();
            ret = 0;
        }
        ERR_print_errors(bio_err);
    } else {

        ERR_clear_error();
        ret = 1;
    }
out:
    if (bindaddr != ((void*)0)) {
        BIO_ADDRINFO_free (bindaddr);
    }
    BIO_ADDRINFO_free(res);
    return ret;
}
