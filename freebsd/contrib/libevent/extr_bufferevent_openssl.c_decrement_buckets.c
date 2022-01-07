
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long n_written; unsigned long n_read; } ;
struct bufferevent_openssl {TYPE_1__ counts; int bev; int ssl; } ;


 unsigned long BIO_number_read (int ) ;
 unsigned long BIO_number_written (int ) ;
 int SSL_get_rbio (int ) ;
 int SSL_get_wbio (int ) ;
 int bufferevent_decrement_read_buckets_ (int *,unsigned long) ;
 int bufferevent_decrement_write_buckets_ (int *,unsigned long) ;

__attribute__((used)) static inline void
decrement_buckets(struct bufferevent_openssl *bev_ssl)
{
 unsigned long num_w = BIO_number_written(SSL_get_wbio(bev_ssl->ssl));
 unsigned long num_r = BIO_number_read(SSL_get_rbio(bev_ssl->ssl));

 unsigned long w = num_w - bev_ssl->counts.n_written;
 unsigned long r = num_r - bev_ssl->counts.n_read;
 if (w)
  bufferevent_decrement_write_buckets_(&bev_ssl->bev, w);
 if (r)
  bufferevent_decrement_read_buckets_(&bev_ssl->bev, r);
 bev_ssl->counts.n_written = num_w;
 bev_ssl->counts.n_read = num_r;
}
