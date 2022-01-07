
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent_openssl {scalar_t__ n_errors; scalar_t__* errors; } ;
typedef scalar_t__ ev_uint32_t ;


 scalar_t__ NUM_ERRORS ;

__attribute__((used)) static inline void
put_error(struct bufferevent_openssl *bev_ssl, unsigned long err)
{
 if (bev_ssl->n_errors == NUM_ERRORS)
  return;





 bev_ssl->errors[bev_ssl->n_errors++] = (ev_uint32_t) err;
}
