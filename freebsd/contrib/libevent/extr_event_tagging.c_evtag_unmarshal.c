
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int evbuffer_add (struct evbuffer*,int ,int) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 int evbuffer_pullup (struct evbuffer*,int) ;
 int evtag_unmarshal_header (struct evbuffer*,int *) ;

int
evtag_unmarshal(struct evbuffer *src, ev_uint32_t *ptag, struct evbuffer *dst)
{
 int len;

 if ((len = evtag_unmarshal_header(src, ptag)) == -1)
  return (-1);

 if (evbuffer_add(dst, evbuffer_pullup(src, len), len) == -1)
  return (-1);

 evbuffer_drain(src, len);

 return (len);
}
