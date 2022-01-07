
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt {int * name; int namelen; int namelabs; int dp_type_mlc; } ;


 int dname_count_size_labels (int *,int *) ;
 int log_assert (int ) ;
 int * memdup (int *,int ) ;

int delegpt_set_name_mlc(struct delegpt* dp, uint8_t* name)
{
 log_assert(dp->dp_type_mlc);
 dp->namelabs = dname_count_size_labels(name, &dp->namelen);
 dp->name = memdup(name, dp->namelen);
 return (dp->name != ((void*)0));
}
