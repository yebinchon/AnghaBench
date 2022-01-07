
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int BIO_get_data (int *) ;
 int BIO_set_retry_read (int *) ;
 struct evbuffer* bufferevent_get_input (int ) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_remove (struct evbuffer*,char*,int) ;

__attribute__((used)) static int
bio_bufferevent_read(BIO *b, char *out, int outlen)
{
 int r = 0;
 struct evbuffer *input;

 BIO_clear_retry_flags(b);

 if (!out)
  return 0;
 if (!BIO_get_data(b))
  return -1;

 input = bufferevent_get_input(BIO_get_data(b));
 if (evbuffer_get_length(input) == 0) {

  BIO_set_retry_read(b);
  return -1;
 } else {
  r = evbuffer_remove(input, out, outlen);
 }

 return r;
}
