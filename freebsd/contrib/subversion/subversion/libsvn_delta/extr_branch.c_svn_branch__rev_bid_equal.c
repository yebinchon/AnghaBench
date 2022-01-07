
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rev; int bid; } ;
typedef TYPE_1__ svn_branch__rev_bid_t ;
typedef int svn_boolean_t ;


 scalar_t__ strcmp (int ,int ) ;

svn_boolean_t
svn_branch__rev_bid_equal(const svn_branch__rev_bid_t *id1,
                          const svn_branch__rev_bid_t *id2)
{
  return (id1->rev == id2->rev
          && strcmp(id1->bid, id2->bid) == 0);
}
