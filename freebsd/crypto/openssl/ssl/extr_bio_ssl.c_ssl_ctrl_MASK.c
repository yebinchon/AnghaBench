#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {long renegotiate_timeout; unsigned long last_time; long renegotiate_count; long num_renegotiates; TYPE_2__* ssl; int /*<<< orphan*/  byte_count; } ;
struct TYPE_18__ {void* rbio; void* wbio; TYPE_1__* method; int /*<<< orphan*/  handshake_func; } ;
struct TYPE_17__ {int /*<<< orphan*/  ssl_accept; int /*<<< orphan*/  ssl_connect; } ;
typedef  TYPE_2__ SSL ;
typedef  TYPE_3__ BIO_SSL ;
typedef  void BIO ;

/* Variables and functions */
#define  BIO_CTRL_DUP 150 
#define  BIO_CTRL_FLUSH 149 
#define  BIO_CTRL_GET_CLOSE 148 
#define  BIO_CTRL_INFO 147 
#define  BIO_CTRL_PENDING 146 
#define  BIO_CTRL_POP 145 
#define  BIO_CTRL_PUSH 144 
#define  BIO_CTRL_RESET 143 
#define  BIO_CTRL_SET_CALLBACK 142 
#define  BIO_CTRL_SET_CLOSE 141 
#define  BIO_CTRL_WPENDING 140 
#define  BIO_C_DO_STATE_MACHINE 139 
#define  BIO_C_GET_FD 138 
#define  BIO_C_GET_SSL 137 
#define  BIO_C_GET_SSL_NUM_RENEGOTIATES 136 
#define  BIO_C_SET_SSL 135 
#define  BIO_C_SET_SSL_RENEGOTIATE_BYTES 134 
#define  BIO_C_SET_SSL_RENEGOTIATE_TIMEOUT 133 
#define  BIO_C_SSL_MODE 132 
 int BIO_FLAGS_IO_SPECIAL ; 
 int BIO_FLAGS_READ ; 
 int BIO_FLAGS_SHOULD_RETRY ; 
 int BIO_FLAGS_WRITE ; 
 int /*<<< orphan*/  BIO_RR_SSL_X509_LOOKUP ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 long FUNC2 (void*,int,long,void*) ; 
 TYPE_3__* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 long FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 long FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*,int) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
#define  SSL_ERROR_WANT_CONNECT 131 
#define  SSL_ERROR_WANT_READ 130 
#define  SSL_ERROR_WANT_WRITE 129 
#define  SSL_ERROR_WANT_X509_LOOKUP 128 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*) ; 
 TYPE_2__* FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int) ; 
 void* FUNC21 (TYPE_2__*) ; 
 long FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,void*,void*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (void*) ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC30(BIO *b, int cmd, long num, void *ptr)
{
    SSL **sslp, *ssl;
    BIO_SSL *bs, *dbs;
    BIO *dbio, *bio;
    long ret = 1;
    BIO *next;

    bs = FUNC3(b);
    next = FUNC6(b);
    ssl = bs->ssl;
    if ((ssl == NULL) && (cmd != BIO_C_SET_SSL))
        return 0;
    switch (cmd) {
    case BIO_CTRL_RESET:
        FUNC26(ssl);

        if (ssl->handshake_func == ssl->method->ssl_connect)
            FUNC25(ssl);
        else if (ssl->handshake_func == ssl->method->ssl_accept)
            FUNC23(ssl);

        if (!FUNC16(ssl)) {
            ret = 0;
            break;
        }

        if (next != NULL)
            ret = FUNC2(next, cmd, num, ptr);
        else if (ssl->rbio != NULL)
            ret = FUNC2(ssl->rbio, cmd, num, ptr);
        else
            ret = 1;
        break;
    case BIO_CTRL_INFO:
        ret = 0;
        break;
    case BIO_C_SSL_MODE:
        if (num)                /* client mode */
            FUNC25(ssl);
        else
            FUNC23(ssl);
        break;
    case BIO_C_SET_SSL_RENEGOTIATE_TIMEOUT:
        ret = bs->renegotiate_timeout;
        if (num < 60)
            num = 5;
        bs->renegotiate_timeout = (unsigned long)num;
        bs->last_time = (unsigned long)FUNC29(NULL);
        break;
    case BIO_C_SET_SSL_RENEGOTIATE_BYTES:
        ret = bs->renegotiate_count;
        if ((long)num >= 512)
            bs->renegotiate_count = (unsigned long)num;
        break;
    case BIO_C_GET_SSL_NUM_RENEGOTIATES:
        ret = bs->num_renegotiates;
        break;
    case BIO_C_SET_SSL:
        if (ssl != NULL) {
            FUNC27(b);
            if (!FUNC28(b))
                return 0;
        }
        FUNC14(b, num);
        ssl = (SSL *)ptr;
        bs->ssl = ssl;
        bio = FUNC21(ssl);
        if (bio != NULL) {
            if (next != NULL)
                FUNC8(bio, next);
            FUNC11(b, bio);
            FUNC15(bio);
        }
        FUNC10(b, 1);
        break;
    case BIO_C_GET_SSL:
        if (ptr != NULL) {
            sslp = (SSL **)ptr;
            *sslp = ssl;
        } else
            ret = 0;
        break;
    case BIO_CTRL_GET_CLOSE:
        ret = FUNC5(b);
        break;
    case BIO_CTRL_SET_CLOSE:
        FUNC14(b, (int)num);
        break;
    case BIO_CTRL_WPENDING:
        ret = FUNC2(ssl->wbio, cmd, num, ptr);
        break;
    case BIO_CTRL_PENDING:
        ret = FUNC22(ssl);
        if (ret == 0)
            ret = FUNC7(ssl->rbio);
        break;
    case BIO_CTRL_FLUSH:
        FUNC0(b);
        ret = FUNC2(ssl->wbio, cmd, num, ptr);
        FUNC1(b);
        break;
    case BIO_CTRL_PUSH:
        if ((next != NULL) && (next != ssl->rbio)) {
            /*
             * We are going to pass ownership of next to the SSL object...but
             * we don't own a reference to pass yet - so up ref
             */
            FUNC15(next);
            FUNC24(ssl, next, next);
        }
        break;
    case BIO_CTRL_POP:
        /* Only detach if we are the BIO explicitly being popped */
        if (b == ptr) {
            /* This will clear the reference we obtained during push */
            FUNC24(ssl, NULL, NULL);
        }
        break;
    case BIO_C_DO_STATE_MACHINE:
        FUNC0(b);

        FUNC12(b, 0);
        ret = (int)FUNC17(ssl);

        switch (FUNC20(ssl, (int)ret)) {
        case SSL_ERROR_WANT_READ:
            FUNC9(b, BIO_FLAGS_READ | BIO_FLAGS_SHOULD_RETRY);
            break;
        case SSL_ERROR_WANT_WRITE:
            FUNC9(b, BIO_FLAGS_WRITE | BIO_FLAGS_SHOULD_RETRY);
            break;
        case SSL_ERROR_WANT_CONNECT:
            FUNC9(b, BIO_FLAGS_IO_SPECIAL | BIO_FLAGS_SHOULD_RETRY);
            FUNC12(b, FUNC4(next));
            break;
        case SSL_ERROR_WANT_X509_LOOKUP:
            FUNC13(b);
            FUNC12(b, BIO_RR_SSL_X509_LOOKUP);
            break;
        default:
            break;
        }
        break;
    case BIO_CTRL_DUP:
        dbio = (BIO *)ptr;
        dbs = FUNC3(dbio);
        FUNC19(dbs->ssl);
        dbs->ssl = FUNC18(ssl);
        dbs->num_renegotiates = bs->num_renegotiates;
        dbs->renegotiate_count = bs->renegotiate_count;
        dbs->byte_count = bs->byte_count;
        dbs->renegotiate_timeout = bs->renegotiate_timeout;
        dbs->last_time = bs->last_time;
        ret = (dbs->ssl != NULL);
        break;
    case BIO_C_GET_FD:
        ret = FUNC2(ssl->rbio, cmd, num, ptr);
        break;
    case BIO_CTRL_SET_CALLBACK:
        ret = 0; /* use callback ctrl */
        break;
    default:
        ret = FUNC2(ssl->rbio, cmd, num, ptr);
        break;
    }
    return ret;
}