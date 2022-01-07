
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufferevent {int dummy; } ;
typedef int BIO ;


 int * BIO_new (int ) ;
 int BIO_s_bufferevent () ;
 int BIO_set_data (int *,struct bufferevent*) ;
 int BIO_set_init (int *,int) ;
 int BIO_set_shutdown (int *,int) ;

__attribute__((used)) static BIO *
BIO_new_bufferevent(struct bufferevent *bufferevent, int close_flag)
{
 BIO *result;
 if (!bufferevent)
  return ((void*)0);
 if (!(result = BIO_new(BIO_s_bufferevent())))
  return ((void*)0);
 BIO_set_init(result, 1);
 BIO_set_data(result, bufferevent);
 BIO_set_shutdown(result, close_flag ? 1 : 0);
 return result;
}
