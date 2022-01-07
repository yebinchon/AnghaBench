
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int evtag_marshal (struct evbuffer*,int ,char const*,int ) ;
 scalar_t__ strlen (char const*) ;

void
evtag_marshal_string(struct evbuffer *buf, ev_uint32_t tag, const char *string)
{

 evtag_marshal(buf, tag, string, (ev_uint32_t)strlen(string));
}
