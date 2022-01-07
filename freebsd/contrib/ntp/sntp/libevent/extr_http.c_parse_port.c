
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVUTIL_ISDIGIT_ (char const) ;

__attribute__((used)) static int
parse_port(const char *s, const char *eos)
{
 int portnum = 0;
 while (s < eos) {
  if (! EVUTIL_ISDIGIT_(*s))
   return -1;
  portnum = (portnum * 10) + (*s - '0');
  if (portnum < 0)
   return -1;
  if (portnum > 65535)
   return -1;
  ++s;
 }
 return portnum;
}
