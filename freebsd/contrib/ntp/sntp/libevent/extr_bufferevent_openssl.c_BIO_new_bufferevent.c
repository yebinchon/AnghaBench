
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bufferevent {int dummy; } ;
struct TYPE_4__ {int init; int shutdown; struct bufferevent* ptr; } ;
typedef TYPE_1__ BIO ;


 TYPE_1__* BIO_new (int ) ;
 int BIO_s_bufferevent () ;

__attribute__((used)) static BIO *
BIO_new_bufferevent(struct bufferevent *bufferevent, int close_flag)
{
 BIO *result;
 if (!bufferevent)
  return ((void*)0);
 if (!(result = BIO_new(BIO_s_bufferevent())))
  return ((void*)0);
 result->init = 1;
 result->ptr = bufferevent;
 result->shutdown = close_flag ? 1 : 0;
 return result;
}
