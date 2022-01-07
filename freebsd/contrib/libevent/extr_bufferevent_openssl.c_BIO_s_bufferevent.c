
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_LIBEVENT ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_create (int *,int ) ;
 int BIO_meth_set_ctrl (int *,int ) ;
 int BIO_meth_set_destroy (int *,int ) ;
 int BIO_meth_set_puts (int *,int ) ;
 int BIO_meth_set_read (int *,int ) ;
 int BIO_meth_set_write (int *,int ) ;
 int bio_bufferevent_ctrl ;
 int bio_bufferevent_free ;
 int bio_bufferevent_new ;
 int bio_bufferevent_puts ;
 int bio_bufferevent_read ;
 int bio_bufferevent_write ;
 int * methods_bufferevent ;

__attribute__((used)) static BIO_METHOD *
BIO_s_bufferevent(void)
{
 if (methods_bufferevent == ((void*)0)) {
  methods_bufferevent = BIO_meth_new(BIO_TYPE_LIBEVENT, "bufferevent");
  if (methods_bufferevent == ((void*)0))
   return ((void*)0);
  BIO_meth_set_write(methods_bufferevent, bio_bufferevent_write);
  BIO_meth_set_read(methods_bufferevent, bio_bufferevent_read);
  BIO_meth_set_puts(methods_bufferevent, bio_bufferevent_puts);
  BIO_meth_set_ctrl(methods_bufferevent, bio_bufferevent_ctrl);
  BIO_meth_set_create(methods_bufferevent, bio_bufferevent_new);
  BIO_meth_set_destroy(methods_bufferevent, bio_bufferevent_free);
 }
 return methods_bufferevent;
}
