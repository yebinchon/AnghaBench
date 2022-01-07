
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sockipproto ;

const char *
sysdecode_socket_protocol(int domain, int protocol)
{

 switch (domain) {
 case 129:
 case 128:
  return (lookup_value(sockipproto, protocol));
 default:
  return (((void*)0));
 }
}
