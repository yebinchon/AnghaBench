
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct delegpt {scalar_t__ name; int namelen; int namelabs; int dp_type_mlc; } ;


 int dname_count_size_labels (int *,int *) ;
 int log_assert (int) ;
 scalar_t__ regional_alloc_init (struct regional*,int *,int ) ;

int
delegpt_set_name(struct delegpt* dp, struct regional* region, uint8_t* name)
{
 log_assert(!dp->dp_type_mlc);
 dp->namelabs = dname_count_size_labels(name, &dp->namelen);
 dp->name = regional_alloc_init(region, name, dp->namelen);
 return dp->name != 0;
}
