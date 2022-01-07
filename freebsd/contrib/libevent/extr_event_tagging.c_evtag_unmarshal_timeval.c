
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct evbuffer {int dummy; } ;
typedef scalar_t__ ev_uint32_t ;


 int decode_int_internal (scalar_t__*,struct evbuffer*,int) ;
 int evbuffer_drain (struct evbuffer*,int) ;
 int evtag_unmarshal_header (struct evbuffer*,scalar_t__*) ;

int
evtag_unmarshal_timeval(struct evbuffer *evbuf, ev_uint32_t need_tag,
    struct timeval *ptv)
{
 ev_uint32_t tag;
 ev_uint32_t integer;
 int len, offset, offset2;
 int result = -1;

 if ((len = evtag_unmarshal_header(evbuf, &tag)) == -1)
  return (-1);
 if (tag != need_tag)
  goto done;
 if ((offset = decode_int_internal(&integer, evbuf, 0)) == -1)
  goto done;
 ptv->tv_sec = integer;
 if ((offset2 = decode_int_internal(&integer, evbuf, offset)) == -1)
  goto done;
 ptv->tv_usec = integer;
 if (offset + offset2 > len)
  goto done;

 result = 0;
 done:
 evbuffer_drain(evbuf, len);
 return result;
}
