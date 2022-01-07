
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;


 size_t evbuffer_get_length (struct evbuffer*) ;
 unsigned char* evbuffer_pullup (struct evbuffer*,size_t) ;
 int memcmp (unsigned char*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
evbuffer_datacmp(struct evbuffer *buf, const char *s)
{
 size_t b_sz = evbuffer_get_length(buf);
 size_t s_sz = strlen(s);
 unsigned char *d;
 int r;

 if (b_sz < s_sz)
  return -1;

 d = evbuffer_pullup(buf, s_sz);
 if ((r = memcmp(d, s, s_sz)))
  return r;

 if (b_sz > s_sz)
  return 1;
 else
  return 0;
}
