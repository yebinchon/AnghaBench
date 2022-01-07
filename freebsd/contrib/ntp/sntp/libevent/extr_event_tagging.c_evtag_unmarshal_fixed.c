
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_uint32_t ;


 int evbuffer_remove (struct evbuffer*,void*,size_t) ;
 int evtag_unmarshal_header (struct evbuffer*,scalar_t__*) ;

int
evtag_unmarshal_fixed(struct evbuffer *src, ev_uint32_t need_tag, void *data,
    size_t len)
{
 ev_uint32_t tag;
 int tag_len;


 if ((tag_len = evtag_unmarshal_header(src, &tag)) < 0 ||
     tag != need_tag)
  return (-1);

 if ((size_t)tag_len != len)
  return (-1);

 evbuffer_remove(src, data, len);
 return (0);
}
