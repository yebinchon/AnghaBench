
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct protoent {int p_name; } ;
struct in_addr {void* s_addr; } ;
struct format_opts {scalar_t__ pcwidth; scalar_t__ bcwidth; int tstate; } ;
struct cmdline_opts {scalar_t__ verbose; } ;
struct buf_pr {int dummy; } ;
typedef int rulenum ;
struct TYPE_4__ {int addr_type; char* src_port; char* dst_port; int dst_ip6; int src_ip6; int dst_ip; int src_ip; int proto; } ;
struct TYPE_5__ {scalar_t__ expire; int dyn_type; scalar_t__ kidx; int state; int ack_fwd; char* ack_rev; TYPE_1__ id; int count; int bcnt; int pcnt; int rule; } ;
typedef TYPE_2__ ipfw_dyn_rule ;
typedef int buf ;


 int AF_INET6 ;
 int BOTH_FIN ;
 int BOTH_SYN ;
 int INET6_ADDRSTRLEN ;
 int IPFW_DYN_ORPHANED ;
 int IPFW_TLV_STATE_NAME ;



 int TH_FIN ;
 int TH_SYN ;
 int bcopy (int *,int *,int) ;
 int bprintf (struct buf_pr*,char*,...) ;
 struct protoent* getprotobynumber (int ) ;
 void* htonl (int ) ;
 int inet_ntoa (struct in_addr) ;
 int inet_ntop (int ,int *,char*,int) ;
 int object_search_ctlv (int ,scalar_t__,int ) ;
 int pr_u64 (struct buf_pr*,int *,scalar_t__) ;

__attribute__((used)) static void
show_dyn_state(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, ipfw_dyn_rule *d)
{
 struct protoent *pe;
 struct in_addr a;
 uint16_t rulenum;
 char buf[INET6_ADDRSTRLEN];

 if (d->expire == 0 && d->dyn_type != 128)
  return;

 bcopy(&d->rule, &rulenum, sizeof(rulenum));
 bprintf(bp, "%05d", rulenum);
 if (fo->pcwidth > 0 || fo->bcwidth > 0) {
  bprintf(bp, " ");
  pr_u64(bp, &d->pcnt, fo->pcwidth);
  pr_u64(bp, &d->bcnt, fo->bcwidth);
  bprintf(bp, "(%ds)", d->expire);
 }
 switch (d->dyn_type) {
 case 128:
  bprintf(bp, " PARENT %d", d->count);
  break;
 case 129:
  bprintf(bp, " LIMIT");
  break;
 case 130:
  bprintf(bp, " STATE");
  break;
 }

 if ((pe = getprotobynumber(d->id.proto)) != ((void*)0))
  bprintf(bp, " %s", pe->p_name);
 else
  bprintf(bp, " proto %u", d->id.proto);

 if (d->id.addr_type == 4) {
  a.s_addr = htonl(d->id.src_ip);
  bprintf(bp, " %s %d", inet_ntoa(a), d->id.src_port);

  a.s_addr = htonl(d->id.dst_ip);
  bprintf(bp, " <-> %s %d", inet_ntoa(a), d->id.dst_port);
 } else if (d->id.addr_type == 6) {
  bprintf(bp, " %s %d", inet_ntop(AF_INET6, &d->id.src_ip6, buf,
      sizeof(buf)), d->id.src_port);
  bprintf(bp, " <-> %s %d", inet_ntop(AF_INET6, &d->id.dst_ip6,
      buf, sizeof(buf)), d->id.dst_port);
 } else
  bprintf(bp, " UNKNOWN <-> UNKNOWN");
 if (d->kidx != 0)
  bprintf(bp, " :%s", object_search_ctlv(fo->tstate,
      d->kidx, IPFW_TLV_STATE_NAME));



 if (co->verbose) {
  bprintf(bp, " state 0x%08x%s", d->state,
      d->state ? " ": ",");
  if (d->state & IPFW_DYN_ORPHANED)
   bprintf(bp, "ORPHANED,");
  if ((d->state & (TH_SYN | (TH_SYN << 8))) == (TH_SYN | (TH_SYN << 8)))
   bprintf(bp, "BOTH_SYN,");
  else {
   if (d->state & TH_SYN)
    bprintf(bp, "F_SYN,");
   if (d->state & (TH_SYN << 8))
    bprintf(bp, "R_SYN,");
  }
  if ((d->state & (TH_FIN | (TH_FIN << 8))) == (TH_FIN | (TH_FIN << 8)))
   bprintf(bp, "BOTH_FIN,");
  else {
   if (d->state & TH_FIN)
    bprintf(bp, "F_FIN,");
   if (d->state & (TH_FIN << 8))
    bprintf(bp, "R_FIN,");
  }
  bprintf(bp, " f_ack 0x%x, r_ack 0x%x", d->ack_fwd,
      d->ack_rev);
 }
}
