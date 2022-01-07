
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int errx (int,char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
StrToProto (const char* str)
{
 if (!strcmp (str, "tcp"))
  return IPPROTO_TCP;

 if (!strcmp (str, "udp"))
  return IPPROTO_UDP;

 errx (1, "unknown protocol %s. Expected tcp or udp", str);
}
