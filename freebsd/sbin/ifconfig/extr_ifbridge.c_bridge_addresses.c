
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq {char* ifba_vlan; int ifba_flags; int ifba_expire; int ifba_ifsname; int ifba_dst; } ;
struct ifbaconf {int ifbac_len; char* ifbac_buf; struct ifbareq* ifbac_req; } ;
struct ether_addr {int octet; } ;
typedef int ifbac ;


 int BRDGRTS ;
 int IFBAFBITS ;
 scalar_t__ do_cmd (int,int ,struct ifbaconf*,int,int ) ;
 int err (int,char*) ;
 int ether_ntoa (struct ether_addr*) ;
 int free (char*) ;
 int memcpy (int ,int ,int) ;
 int printb (char*,int ,int ) ;
 int printf (char*,...) ;
 char* realloc (char*,int) ;

__attribute__((used)) static void
bridge_addresses(int s, const char *prefix)
{
 struct ifbaconf ifbac;
 struct ifbareq *ifba;
 char *inbuf = ((void*)0), *ninbuf;
 int i, len = 8192;
 struct ether_addr ea;

 for (;;) {
  ninbuf = realloc(inbuf, len);
  if (ninbuf == ((void*)0))
   err(1, "unable to allocate address buffer");
  ifbac.ifbac_len = len;
  ifbac.ifbac_buf = inbuf = ninbuf;
  if (do_cmd(s, BRDGRTS, &ifbac, sizeof(ifbac), 0) < 0)
   err(1, "unable to get address cache");
  if ((ifbac.ifbac_len + sizeof(*ifba)) < len)
   break;
  len *= 2;
 }

 for (i = 0; i < ifbac.ifbac_len / sizeof(*ifba); i++) {
  ifba = ifbac.ifbac_req + i;
  memcpy(ea.octet, ifba->ifba_dst,
      sizeof(ea.octet));
  printf("%s%s Vlan%d %s %lu ", prefix, ether_ntoa(&ea),
      ifba->ifba_vlan, ifba->ifba_ifsname, ifba->ifba_expire);
  printb("flags", ifba->ifba_flags, IFBAFBITS);
  printf("\n");
 }

 free(inbuf);
}
