
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_info {int qname; } ;
struct delegpt {scalar_t__ namelabs; int name; } ;


 scalar_t__ dname_count_labels (int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;

int iter_dp_cangodown(struct query_info* qinfo, struct delegpt* dp)
{


 if(!dp) return 0;


 if(query_dname_compare(qinfo->qname, dp->name) == 0)
  return 0;

 if(dname_count_labels(qinfo->qname) == dp->namelabs+1)
  return 0;
 return 1;
}
