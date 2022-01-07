
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPPROTO_SCTP ;
 int SOL_SOCKET ;
 int cmsgtypeip ;
 int cmsgtypeipv6 ;
 int cmsgtypesctp ;
 int cmsgtypesocket ;
 char const* lookup_value (int ,int) ;

const char *
sysdecode_cmsg_type(int cmsg_level, int cmsg_type)
{

 if (cmsg_level == SOL_SOCKET)
  return (lookup_value(cmsgtypesocket, cmsg_type));
 if (cmsg_level == IPPROTO_IP)
  return (lookup_value(cmsgtypeip, cmsg_type));
 if (cmsg_level == IPPROTO_IPV6)
  return (lookup_value(cmsgtypeipv6, cmsg_type));
 if (cmsg_level == IPPROTO_SCTP)
  return (lookup_value(cmsgtypesctp, cmsg_type));
 return (((void*)0));
}
