
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int decode_int_internal (int*,struct evbuffer*,int) ;
 int decode_tag_internal (int *,struct evbuffer*,int ) ;

int
evtag_peek_length(struct evbuffer *evbuf, ev_uint32_t *plength)
{
 int res, len;

 len = decode_tag_internal(((void*)0), evbuf, 0 );
 if (len == -1)
  return (-1);

 res = decode_int_internal(plength, evbuf, len);
 if (res == -1)
  return (-1);

 *plength += res + len;

 return (0);
}
