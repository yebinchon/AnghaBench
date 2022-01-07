
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {char const* p_name; } ;





 struct protoent* getprotobynumber (int) ;

__attribute__((used)) static const char *
evutil_unparse_protoname(int proto)
{
 switch (proto) {
 case 0:
  return ((void*)0);
 case 129:
  return "tcp";
 case 128:
  return "udp";

 case 130:
  return "sctp";

 default:







  return ((void*)0);
 }
}
