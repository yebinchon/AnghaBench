
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cl_t ;


 scalar_t__ CLUST_BAD ;
 scalar_t__ CLUST_FREE ;

const char *
rsrvdcltype(cl_t cl)
{
 if (cl == CLUST_FREE)
  return "free";
 if (cl < CLUST_BAD)
  return "reserved";
 if (cl > CLUST_BAD)
  return "as EOF";
 return "bad";
}
