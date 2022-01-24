#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
union BIO_sock_info_u {int /*<<< orphan*/ * addr; } ;
struct TYPE_17__ {int num; int /*<<< orphan*/ * next_bio; int /*<<< orphan*/  retry_reason; } ;
struct TYPE_16__ {int state; int accept_sock; int /*<<< orphan*/  cache_peer_addr; int /*<<< orphan*/ * cache_peer_serv; int /*<<< orphan*/ * cache_peer_name; int /*<<< orphan*/ * bio_chain; int /*<<< orphan*/  accepted_mode; int /*<<< orphan*/  cache_accepting_addr; int /*<<< orphan*/ * cache_accepting_serv; int /*<<< orphan*/ * cache_accepting_name; int /*<<< orphan*/  bind_mode; int /*<<< orphan*/ * addr_iter; int /*<<< orphan*/ * param_serv; int /*<<< orphan*/ * param_addr; int /*<<< orphan*/ * addr_first; int /*<<< orphan*/  accept_family; } ;
typedef  TYPE_1__ BIO_ACCEPT ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
#define  ACPT_S_ACCEPT 136 
#define  ACPT_S_BEFORE 135 
#define  ACPT_S_CREATE_SOCKET 134 
#define  ACPT_S_GET_ADDR 133 
#define  ACPT_S_LISTEN 132 
#define  ACPT_S_OK 131 
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  BIO_CLOSE ; 
#define  BIO_FAMILY_IPANY 130 
#define  BIO_FAMILY_IPV4 129 
#define  BIO_FAMILY_IPV6 128 
 int /*<<< orphan*/  BIO_F_ACPT_STATE ; 
 int /*<<< orphan*/  BIO_LOOKUP_SERVER ; 
 int /*<<< orphan*/  BIO_RR_ACCEPT ; 
 int /*<<< orphan*/  BIO_R_LOOKUP_RETURNED_NOTHING ; 
 int /*<<< orphan*/  BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED ; 
 int /*<<< orphan*/  BIO_R_UNABLE_TO_CREATE_SOCKET ; 
 int /*<<< orphan*/  BIO_R_UNAVAILABLE_IP_FAMILY ; 
 int /*<<< orphan*/  BIO_R_UNSUPPORTED_IP_FAMILY ; 
 int /*<<< orphan*/  BIO_SOCK_INFO_ADDRESS ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,union BIO_sock_info_u*) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SYS_F_SOCKET ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 

__attribute__((used)) static int FUNC28(BIO *b, BIO_ACCEPT *c)
{
    BIO *bio = NULL, *dbio;
    int s = -1, ret = -1;

    for (;;) {
        switch (c->state) {
        case ACPT_S_BEFORE:
            if (c->param_addr == NULL && c->param_serv == NULL) {
                FUNC23(BIO_F_ACPT_STATE, BIO_R_NO_ACCEPT_ADDR_OR_SERVICE_SPECIFIED);
                FUNC24(4,
                                   "hostname=", c->param_addr,
                                   " service=", c->param_serv);
                goto exit_loop;
            }

            /* Because we're starting a new bind, any cached name and serv
             * are now obsolete and need to be cleaned out.
             * QUESTION: should this be done in acpt_close_socket() instead?
             */
            FUNC25(c->cache_accepting_name);
            c->cache_accepting_name = NULL;
            FUNC25(c->cache_accepting_serv);
            c->cache_accepting_serv = NULL;
            FUNC25(c->cache_peer_name);
            c->cache_peer_name = NULL;
            FUNC25(c->cache_peer_serv);
            c->cache_peer_serv = NULL;

            c->state = ACPT_S_GET_ADDR;
            break;

        case ACPT_S_GET_ADDR:
            {
                int family = AF_UNSPEC;
                switch (c->accept_family) {
                case BIO_FAMILY_IPV6:
                    if (1) { /* This is a trick we use to avoid bit rot.
                              * at least the "else" part will always be
                              * compiled.
                              */
#ifdef AF_INET6
                        family = AF_INET6;
                    } else {
#endif
                        FUNC23(BIO_F_ACPT_STATE, BIO_R_UNAVAILABLE_IP_FAMILY);
                        goto exit_loop;
                    }
                    break;
                case BIO_FAMILY_IPV4:
                    family = AF_INET;
                    break;
                case BIO_FAMILY_IPANY:
                    family = AF_UNSPEC;
                    break;
                default:
                    FUNC23(BIO_F_ACPT_STATE, BIO_R_UNSUPPORTED_IP_FAMILY);
                    goto exit_loop;
                }
                if (FUNC14(c->param_addr, c->param_serv, BIO_LOOKUP_SERVER,
                               family, SOCK_STREAM, &c->addr_first) == 0)
                    goto exit_loop;
            }
            if (c->addr_first == NULL) {
                FUNC23(BIO_F_ACPT_STATE, BIO_R_LOOKUP_RETURNED_NOTHING);
                goto exit_loop;
            }
            /* We're currently not iterating, but set this as preparation
             * for possible future development in that regard
             */
            c->addr_iter = c->addr_first;
            c->state = ACPT_S_CREATE_SOCKET;
            break;

        case ACPT_S_CREATE_SOCKET:
            ret = FUNC22(FUNC1(c->addr_iter),
                             FUNC3(c->addr_iter),
                             FUNC2(c->addr_iter), 0);
            if (ret == (int)INVALID_SOCKET) {
                FUNC26(SYS_F_SOCKET, FUNC27());
                FUNC24(4,
                                   "hostname=", c->param_addr,
                                   " service=", c->param_serv);
                FUNC23(BIO_F_ACPT_STATE, BIO_R_UNABLE_TO_CREATE_SOCKET);
                goto exit_loop;
            }
            c->accept_sock = ret;
            b->num = ret;
            c->state = ACPT_S_LISTEN;
            break;

        case ACPT_S_LISTEN:
            {
                if (!FUNC13(c->accept_sock,
                                FUNC0(c->addr_iter),
                                c->bind_mode)) {
                    FUNC8(c->accept_sock);
                    goto exit_loop;
                }
            }

            {
                union BIO_sock_info_u info;

                info.addr = &c->cache_accepting_addr;
                if (!FUNC20(c->accept_sock, BIO_SOCK_INFO_ADDRESS,
                                   &info)) {
                    FUNC8(c->accept_sock);
                    goto exit_loop;
                }
            }

            c->cache_accepting_name =
                FUNC4(&c->cache_accepting_addr, 1);
            c->cache_accepting_serv =
                FUNC5(&c->cache_accepting_addr, 1);
            c->state = ACPT_S_ACCEPT;
            s = -1;
            ret = 1;
            goto end;

        case ACPT_S_ACCEPT:
            if (b->next_bio != NULL) {
                c->state = ACPT_S_OK;
                break;
            }
            FUNC7(b);
            b->retry_reason = 0;

            FUNC25(c->cache_peer_name);
            c->cache_peer_name = NULL;
            FUNC25(c->cache_peer_serv);
            c->cache_peer_serv = NULL;

            s = FUNC6(c->accept_sock, &c->cache_peer_addr,
                              c->accepted_mode);

            /* If the returned socket is invalid, this might still be
             * retryable
             */
            if (s < 0) {
                if (FUNC21(s)) {
                    FUNC19(b);
                    b->retry_reason = BIO_RR_ACCEPT;
                    goto end;
                }
            }

            /* If it wasn't retryable, we fail */
            if (s < 0) {
                ret = s;
                goto exit_loop;
            }

            bio = FUNC15(s, BIO_CLOSE);
            if (bio == NULL)
                goto exit_loop;

            FUNC17(bio, FUNC11(b));
            FUNC18(bio, FUNC12(b));

            /*
             * If the accept BIO has an bio_chain, we dup it and put the new
             * socket at the end.
             */
            if (c->bio_chain != NULL) {
                if ((dbio = FUNC9(c->bio_chain)) == NULL)
                    goto exit_loop;
                if (!FUNC16(dbio, bio))
                    goto exit_loop;
                bio = dbio;
            }
            if (FUNC16(b, bio) == NULL)
                goto exit_loop;

            c->cache_peer_name =
                FUNC4(&c->cache_peer_addr, 1);
            c->cache_peer_serv =
                FUNC5(&c->cache_peer_addr, 1);
            c->state = ACPT_S_OK;
            bio = NULL;
            ret = 1;
            goto end;

        case ACPT_S_OK:
            if (b->next_bio == NULL) {
                c->state = ACPT_S_ACCEPT;
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
    if (bio != NULL)
        FUNC10(bio);
    else if (s >= 0)
        FUNC8(s);
  end:
    return ret;
}