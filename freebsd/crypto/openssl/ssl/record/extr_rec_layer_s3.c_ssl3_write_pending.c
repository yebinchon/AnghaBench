
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t wpend_tot; unsigned char const* wpend_buf; int wpend_type; int numwpipes; size_t wpend_ret; int * wbuf; } ;
struct TYPE_7__ {int mode; TYPE_1__ rlayer; int rwstate; int * wbio; } ;
typedef int SSL3_BUFFER ;
typedef TYPE_2__ SSL ;


 int BIO_write (int *,char*,unsigned int) ;
 int SSL3_BUFFER_add_offset (int *,size_t) ;
 int * SSL3_BUFFER_get_buf (int *) ;
 size_t SSL3_BUFFER_get_left (int *) ;
 size_t SSL3_BUFFER_get_offset (int *) ;
 int SSL3_BUFFER_set_left (int *,int ) ;
 int SSL3_BUFFER_sub_left (int *,size_t) ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_F_SSL3_WRITE_PENDING ;
 scalar_t__ SSL_IS_DTLS (TYPE_2__*) ;
 int SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER ;
 int SSL_NOTHING ;
 int SSL_R_BAD_WRITE_RETRY ;
 int SSL_R_BIO_NOT_SET ;
 int SSL_WRITING ;
 int SSLfatal (TYPE_2__*,int ,int ,int ) ;
 int clear_sys_error () ;

int ssl3_write_pending(SSL *s, int type, const unsigned char *buf, size_t len,
                       size_t *written)
{
    int i;
    SSL3_BUFFER *wb = s->rlayer.wbuf;
    size_t currbuf = 0;
    size_t tmpwrit = 0;

    if ((s->rlayer.wpend_tot > len)
        || (!(s->mode & SSL_MODE_ACCEPT_MOVING_WRITE_BUFFER)
            && (s->rlayer.wpend_buf != buf))
        || (s->rlayer.wpend_type != type)) {
        SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                 SSL_R_BAD_WRITE_RETRY);
        return -1;
    }

    for (;;) {

        if (SSL3_BUFFER_get_left(&wb[currbuf]) == 0
            && currbuf < s->rlayer.numwpipes - 1) {
            currbuf++;
            continue;
        }
        clear_sys_error();
        if (s->wbio != ((void*)0)) {
            s->rwstate = SSL_WRITING;

            i = BIO_write(s->wbio, (char *)
                          &(SSL3_BUFFER_get_buf(&wb[currbuf])
                            [SSL3_BUFFER_get_offset(&wb[currbuf])]),
                          (unsigned int)SSL3_BUFFER_get_left(&wb[currbuf]));
            if (i >= 0)
                tmpwrit = i;
        } else {
            SSLfatal(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_WRITE_PENDING,
                     SSL_R_BIO_NOT_SET);
            i = -1;
        }
        if (i > 0 && tmpwrit == SSL3_BUFFER_get_left(&wb[currbuf])) {
            SSL3_BUFFER_set_left(&wb[currbuf], 0);
            SSL3_BUFFER_add_offset(&wb[currbuf], tmpwrit);
            if (currbuf + 1 < s->rlayer.numwpipes)
                continue;
            s->rwstate = SSL_NOTHING;
            *written = s->rlayer.wpend_ret;
            return 1;
        } else if (i <= 0) {
            if (SSL_IS_DTLS(s)) {




                SSL3_BUFFER_set_left(&wb[currbuf], 0);
            }
            return i;
        }
        SSL3_BUFFER_add_offset(&wb[currbuf], tmpwrit);
        SSL3_BUFFER_sub_left(&wb[currbuf], tmpwrit);
    }
}
