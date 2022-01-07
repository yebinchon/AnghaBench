
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct format_opts {int dummy; } ;
struct cmdline_opts {int dummy; } ;
struct buf_pr {int dummy; } ;
typedef int caddr_t ;


 size_t foreach_state (struct cmdline_opts*,struct format_opts*,int ,size_t,int ,struct buf_pr*) ;
 int list_dyn_state ;

__attribute__((used)) static int
list_dyn_range(struct cmdline_opts *co, struct format_opts *fo,
    struct buf_pr *bp, caddr_t base, size_t sz)
{

 sz = foreach_state(co, fo, base, sz, list_dyn_state, bp);
 return (sz);
}
