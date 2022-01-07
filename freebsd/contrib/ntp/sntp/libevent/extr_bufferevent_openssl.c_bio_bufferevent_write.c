
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct evbuffer {int dummy; } ;
struct TYPE_6__ {size_t high; } ;
struct bufferevent {TYPE_1__ wm_write; } ;
struct TYPE_7__ {struct bufferevent* ptr; } ;
typedef TYPE_2__ BIO ;


 int BIO_clear_retry_flags (TYPE_2__*) ;
 int BIO_set_retry_write (TYPE_2__*) ;
 int EVUTIL_ASSERT (int) ;
 struct evbuffer* bufferevent_get_output (struct bufferevent*) ;
 int evbuffer_add (struct evbuffer*,char const*,int) ;
 size_t evbuffer_get_length (struct evbuffer*) ;

__attribute__((used)) static int
bio_bufferevent_write(BIO *b, const char *in, int inlen)
{
 struct bufferevent *bufev = b->ptr;
 struct evbuffer *output;
 size_t outlen;

 BIO_clear_retry_flags(b);

 if (!b->ptr)
  return -1;

 output = bufferevent_get_output(bufev);
 outlen = evbuffer_get_length(output);



 if (bufev->wm_write.high && bufev->wm_write.high <= (outlen+inlen)) {
  if (bufev->wm_write.high <= outlen) {

   BIO_set_retry_write(b);
   return -1;
  }
  inlen = bufev->wm_write.high - outlen;
 }

 EVUTIL_ASSERT(inlen > 0);
 evbuffer_add(output, in, inlen);
 return inlen;
}
