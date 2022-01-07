
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_wc_conflict_action_t ;
typedef int svn_client_conflict_t ;
struct TYPE_2__ {int action; } ;


 TYPE_1__* get_conflict_desc2_t (int *) ;

svn_wc_conflict_action_t
svn_client_conflict_get_incoming_change(svn_client_conflict_t *conflict)
{
  return get_conflict_desc2_t(conflict)->action;
}
