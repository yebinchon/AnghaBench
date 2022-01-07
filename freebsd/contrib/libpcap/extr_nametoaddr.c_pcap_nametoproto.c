
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent_data {int dummy; } ;
struct protoent {int p_proto; } ;


 int PROTO_UNDEF ;
 struct protoent* getprotobyname (char const*) ;
 int getprotobyname_r (char const*,struct protoent*,char*,...) ;

int
pcap_nametoproto(const char *str)
{
 struct protoent *p;
 p = getprotobyname(str);

 if (p != 0)
  return p->p_proto;
 else
  return PROTO_UNDEF;
}
