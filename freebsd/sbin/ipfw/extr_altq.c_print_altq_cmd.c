
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct buf_pr {int dummy; } ;
struct TYPE_3__ {char const* qid; } ;
typedef TYPE_1__ ipfw_insn_altq ;


 char* altq_qid_to_name (char const*) ;
 int bprintf (struct buf_pr*,char*,char const*) ;

void
print_altq_cmd(struct buf_pr *bp, ipfw_insn_altq *altqptr)
{
 if (altqptr) {
  const char *qname;

  qname = altq_qid_to_name(altqptr->qid);
  if (qname == ((void*)0))
   bprintf(bp, " altq ?<%u>", altqptr->qid);
  else
   bprintf(bp, " altq %s", qname);
 }
}
