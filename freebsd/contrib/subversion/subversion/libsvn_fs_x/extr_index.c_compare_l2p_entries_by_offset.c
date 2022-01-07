
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ offset; } ;
typedef TYPE_1__ l2p_page_entry_t ;



__attribute__((used)) static int
compare_l2p_entries_by_offset(const l2p_page_entry_t *lhs,
                              const l2p_page_entry_t *rhs)
{
  return lhs->offset > rhs->offset ? 1
                                   : lhs->offset == rhs->offset ? 0 : -1;
}
