
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct buf_pr {int dummy; } ;
struct _s_x {int x; int s; } ;
struct TYPE_3__ {int limit_mask; int conn_limit; } ;
typedef TYPE_1__ ipfw_insn_limit ;


 int bprint_uint_arg (struct buf_pr*,char*,int ) ;
 int bprintf (struct buf_pr*,char*,char const*,int ) ;
 struct _s_x* limit_masks ;

__attribute__((used)) static void
print_limit_mask(struct buf_pr *bp, const ipfw_insn_limit *limit)
{
 struct _s_x *p = limit_masks;
 char const *comma = " ";
 uint8_t x;

 for (x = limit->limit_mask; p->x != 0; p++) {
  if ((x & p->x) == p->x) {
   x &= ~p->x;
   bprintf(bp, "%s%s", comma, p->s);
   comma = ",";
  }
 }
 bprint_uint_arg(bp, " ", limit->conn_limit);
}
