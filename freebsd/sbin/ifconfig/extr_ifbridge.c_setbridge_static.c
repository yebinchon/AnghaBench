
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq {int ifba_vlan; int ifba_flags; int ifba_dst; int ifba_ifsname; } ;
struct ether_addr {int octet; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGSADDR ;
 int IFBAF_STATIC ;
 scalar_t__ do_cmd (int,int ,struct ifbareq*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,char const*) ;
 struct ether_addr* ether_aton (char const*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ifbareq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
setbridge_static(const char *val, const char *mac, int s,
    const struct afswtch *afp)
{
 struct ifbareq req;
 struct ether_addr *ea;

 memset(&req, 0, sizeof(req));
 strlcpy(req.ifba_ifsname, val, sizeof(req.ifba_ifsname));

 ea = ether_aton(mac);
 if (ea == ((void*)0))
  errx(1, "%s: invalid address: %s", val, mac);

 memcpy(req.ifba_dst, ea->octet, sizeof(req.ifba_dst));
 req.ifba_flags = IFBAF_STATIC;
 req.ifba_vlan = 1;

 if (do_cmd(s, BRDGSADDR, &req, sizeof(req), 1) < 0)
  err(1, "BRDGSADDR %s", val);
}
