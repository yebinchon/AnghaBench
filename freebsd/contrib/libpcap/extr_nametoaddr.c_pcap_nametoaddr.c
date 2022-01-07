
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {scalar_t__ h_addr_list; scalar_t__ h_addr; } ;
typedef scalar_t__ bpf_u_int32 ;


 int NTOHL (scalar_t__) ;
 struct hostent* gethostbyname (char const*) ;

bpf_u_int32 **
pcap_nametoaddr(const char *name)
{

 static bpf_u_int32 *hlist[2];

 bpf_u_int32 **p;
 struct hostent *hp;

 if ((hp = gethostbyname(name)) != ((void*)0)) {

  hlist[0] = (bpf_u_int32 *)hp->h_addr;
  NTOHL(hp->h_addr);
  return hlist;





 }
 else
  return 0;
}
