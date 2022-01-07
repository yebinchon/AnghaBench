
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_read; int n_written; } ;
struct bufferevent_openssl {int ssl; TYPE_1__ counts; } ;


 int BIO_number_read (int ) ;
 int BIO_number_written (int ) ;
 int SSL_get_rbio (int ) ;
 int SSL_get_wbio (int ) ;

__attribute__((used)) static void
init_bio_counts(struct bufferevent_openssl *bev_ssl)
{
 bev_ssl->counts.n_written =
     BIO_number_written(SSL_get_wbio(bev_ssl->ssl));
 bev_ssl->counts.n_read =
     BIO_number_read(SSL_get_rbio(bev_ssl->ssl));
}
