
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_uint32_t ;


 int decode_int_internal (scalar_t__*,struct evbuffer*,int ) ;
 int decode_tag_internal (scalar_t__*,struct evbuffer*,int) ;
 int evbuffer_drain (struct evbuffer*,scalar_t__) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evtag_decode_int (scalar_t__*,struct evbuffer*) ;

int
evtag_unmarshal_int(struct evbuffer *evbuf, ev_uint32_t need_tag,
    ev_uint32_t *pinteger)
{
 ev_uint32_t tag;
 ev_uint32_t len;
 int result;

 if (decode_tag_internal(&tag, evbuf, 1 ) == -1)
  return (-1);
 if (need_tag != tag)
  return (-1);
 if (evtag_decode_int(&len, evbuf) == -1)
  return (-1);

 if (evbuffer_get_length(evbuf) < len)
  return (-1);

 result = decode_int_internal(pinteger, evbuf, 0);
 evbuffer_drain(evbuf, len);
 if (result < 0 || (size_t)result > len)
  return (-1);
 else
  return result;
}
