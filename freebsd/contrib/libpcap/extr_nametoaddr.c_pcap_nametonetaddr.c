
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent_data {int dummy; } ;
struct netent {int n_net; } ;
typedef int bpf_u_int32 ;


 struct netent* getnetbyname (char const*) ;
 int getnetbyname_r (char const*,struct netent*,char*,...) ;

bpf_u_int32
pcap_nametonetaddr(const char *name)
{
 struct netent *np;
 np = getnetbyname(name);

 if (np != ((void*)0))
  return np->n_net;
 else
  return 0;

}
