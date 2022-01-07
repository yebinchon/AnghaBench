
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt {int dp_type_mlc; int name; int namelen; int namelabs; } ;


 scalar_t__ calloc (int,int) ;
 int dname_count_size_labels (int *,int *) ;
 int free (struct delegpt*) ;
 int memdup (int *,int ) ;

struct delegpt* delegpt_create_mlc(uint8_t* name)
{
 struct delegpt* dp=(struct delegpt*)calloc(1, sizeof(*dp));
 if(!dp)
  return ((void*)0);
 dp->dp_type_mlc = 1;
 if(name) {
  dp->namelabs = dname_count_size_labels(name, &dp->namelen);
  dp->name = memdup(name, dp->namelen);
  if(!dp->name) {
   free(dp);
   return ((void*)0);
  }
 }
 return dp;
}
