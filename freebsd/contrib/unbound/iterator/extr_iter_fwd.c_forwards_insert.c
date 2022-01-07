
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {int namelabs; int namelen; int name; } ;


 int forwards_insert_data (struct iter_forwards*,int ,int ,int ,int ,struct delegpt*) ;

__attribute__((used)) static int
forwards_insert(struct iter_forwards* fwd, uint16_t c, struct delegpt* dp)
{
 return forwards_insert_data(fwd, c, dp->name, dp->namelen,
  dp->namelabs, dp);
}
