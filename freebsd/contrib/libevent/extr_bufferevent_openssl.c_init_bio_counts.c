
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_read; int n_written; } ;
struct bufferevent_openssl {TYPE_1__ counts; int ssl; } ;
typedef int BIO ;


 int BIO_number_read (int *) ;
 int BIO_number_written (int *) ;
 int * SSL_get_rbio (int ) ;
 int * SSL_get_wbio (int ) ;

__attribute__((used)) static void
init_bio_counts(struct bufferevent_openssl *bev_ssl)
{
 BIO *rbio, *wbio;

 wbio = SSL_get_wbio(bev_ssl->ssl);
 bev_ssl->counts.n_written = wbio ? BIO_number_written(wbio) : 0;
 rbio = SSL_get_rbio(bev_ssl->ssl);
 bev_ssl->counts.n_read = rbio ? BIO_number_read(rbio) : 0;
}
