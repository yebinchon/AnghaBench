
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip_fw_rule {scalar_t__ rulenum; int set; } ;
struct ip_fw_bcounter {scalar_t__ size; } ;
struct format_opts {int show_counters; int show_time; scalar_t__ last; scalar_t__ first; } ;
struct cmdline_opts {int use_set; } ;
struct buf_pr {char* buf; } ;
struct TYPE_3__ {scalar_t__ length; } ;
typedef TYPE_1__ ipfw_obj_tlv ;
typedef scalar_t__ caddr_t ;


 int bp_flush (struct buf_pr*) ;
 int printf (char*,char*) ;
 int show_static_rule (struct cmdline_opts*,struct format_opts*,struct buf_pr*,struct ip_fw_rule*,struct ip_fw_bcounter*) ;

__attribute__((used)) static int
list_static_range(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, ipfw_obj_tlv *rtlv, int rcnt)
{
 int n, seen;
 struct ip_fw_rule *r;
 struct ip_fw_bcounter *cntr;
 int c = 0;

 for (n = seen = 0; n < rcnt; n++,
     rtlv = (ipfw_obj_tlv *)((caddr_t)rtlv + rtlv->length)) {

  if ((fo->show_counters | fo->show_time) != 0) {
   cntr = (struct ip_fw_bcounter *)(rtlv + 1);
   r = (struct ip_fw_rule *)((caddr_t)cntr + cntr->size);
  } else {
   cntr = ((void*)0);
   r = (struct ip_fw_rule *)(rtlv + 1);
  }
  if (r->rulenum > fo->last)
   break;
  if (co->use_set && r->set != co->use_set - 1)
   continue;
  if (r->rulenum >= fo->first && r->rulenum <= fo->last) {
   show_static_rule(co, fo, bp, r, cntr);
   printf("%s", bp->buf);
   c += rtlv->length;
   bp_flush(bp);
   seen++;
  }
 }

 return (seen);
}
