
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbareq {int ifba_dst; } ;
struct ether_addr {int octet; } ;
struct afswtch {int dummy; } ;
typedef int req ;


 int BRDGDADDR ;
 scalar_t__ do_cmd (int,int ,struct ifbareq*,int,int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 struct ether_addr* ether_aton (char const*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ifbareq*,int ,int) ;

__attribute__((used)) static void
setbridge_deladdr(const char *val, int d, int s, const struct afswtch *afp)
{
 struct ifbareq req;
 struct ether_addr *ea;

 memset(&req, 0, sizeof(req));

 ea = ether_aton(val);
 if (ea == ((void*)0))
  errx(1, "invalid address: %s", val);

 memcpy(req.ifba_dst, ea->octet, sizeof(req.ifba_dst));

 if (do_cmd(s, BRDGDADDR, &req, sizeof(req), 1) < 0)
  err(1, "BRDGDADDR %s", val);
}
