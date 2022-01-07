
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* der; int derlen; int id; scalar_t__ idlen; struct TYPE_3__* next; } ;
typedef TYPE_1__ simple_ssl_session ;
typedef int SSL_SESSION ;
typedef int SSL ;


 int BIO_printf (int ,char*) ;
 int bio_err ;
 int * d2i_SSL_SESSION (int *,unsigned char const**,int ) ;
 TYPE_1__* first ;
 int memcmp (int ,unsigned char const*,int) ;

__attribute__((used)) static SSL_SESSION *get_session(SSL *ssl, const unsigned char *id, int idlen,
                                int *do_copy)
{
    simple_ssl_session *sess;
    *do_copy = 0;
    for (sess = first; sess; sess = sess->next) {
        if (idlen == (int)sess->idlen && !memcmp(sess->id, id, idlen)) {
            const unsigned char *p = sess->der;
            BIO_printf(bio_err, "Lookup session: cache hit\n");
            return d2i_SSL_SESSION(((void*)0), &p, sess->derlen);
        }
    }
    BIO_printf(bio_err, "Lookup session: cache miss\n");
    return ((void*)0);
}
