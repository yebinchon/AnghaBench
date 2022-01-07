
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct delegpt {int dummy; } ;


 int memset (struct delegpt*,int ,int) ;
 scalar_t__ regional_alloc (struct regional*,int) ;

struct delegpt*
delegpt_create(struct regional* region)
{
 struct delegpt* dp=(struct delegpt*)regional_alloc(
  region, sizeof(*dp));
 if(!dp)
  return ((void*)0);
 memset(dp, 0, sizeof(*dp));
 return dp;
}
