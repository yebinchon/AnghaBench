
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int txt ;
struct sockaddr_in {int sin_port; } ;
struct query_info {int qclass; int qtype; int qname; } ;
struct local_zone {int type; int name; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int ip ;


 int LDNS_MAX_DOMAINLEN ;
 int addr_to_str (int *,int ,char*,int) ;
 int dname_str (int ,char*) ;
 char* local_zone_type2str (int ) ;
 int log_nametypeclass (int ,char*,int ,int ,int ) ;
 scalar_t__ ntohs (int ) ;
 int snprintf (char*,int,char*,char*,char*,char*,unsigned int) ;

__attribute__((used)) static void
lz_inform_print(struct local_zone* z, struct query_info* qinfo,
 struct comm_reply* repinfo)
{
 char ip[128], txt[512];
 char zname[LDNS_MAX_DOMAINLEN+1];
 uint16_t port = ntohs(((struct sockaddr_in*)&repinfo->addr)->sin_port);
 dname_str(z->name, zname);
 addr_to_str(&repinfo->addr, repinfo->addrlen, ip, sizeof(ip));
 snprintf(txt, sizeof(txt), "%s %s %s@%u", zname, local_zone_type2str(z->type), ip,
  (unsigned)port);
 log_nametypeclass(0, txt, qinfo->qname, qinfo->qtype, qinfo->qclass);
}
