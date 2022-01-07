
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* gai_strerror (int) ;
 char const* gai_strerrorA (int) ;

const char *
evutil_gai_strerror(int err)
{



 switch (err) {
 case 136:
  return "Request canceled";
 case 0:
  return "No error";

 case 139:
  return "address family for nodename not supported";
 case 138:
  return "temporary failure in name resolution";
 case 137:
  return "invalid value for ai_flags";
 case 135:
  return "non-recoverable failure in name resolution";
 case 134:
  return "ai_family not supported";
 case 133:
  return "memory allocation failure";
 case 132:
  return "no address associated with nodename";
 case 131:
  return "nodename nor servname provided, or not known";
 case 130:
  return "servname not supported for ai_socktype";
 case 129:
  return "ai_socktype not supported";
 case 128:
  return "system error";
 default:





  return "Unknown error code";

 }
}
