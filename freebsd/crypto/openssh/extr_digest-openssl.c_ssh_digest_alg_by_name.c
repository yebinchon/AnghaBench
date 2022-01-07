
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; int name; } ;


 TYPE_1__* digests ;
 scalar_t__ strcasecmp (char const*,int ) ;

int
ssh_digest_alg_by_name(const char *name)
{
 int alg;

 for (alg = 0; digests[alg].id != -1; alg++) {
  if (strcasecmp(name, digests[alg].name) == 0)
   return digests[alg].id;
 }
 return -1;
}
