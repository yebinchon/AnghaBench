
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ evutil_socket_t ;


 int TT_BLATHER (char*) ;
 int have_closed ;
 int premature_event ;

__attribute__((used)) static void
record_event_cb(evutil_socket_t s, short what, void *ptr)
{
 short *whatp = ptr;
 if (!have_closed)
  premature_event = 1;
 *whatp = what;
 TT_BLATHER(("Recorded %d on socket %d", (int)what, (int)s));
}
