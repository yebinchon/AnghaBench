
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slclist {int dummy; } ;


 scalar_t__ SlcList ;
 scalar_t__ genget (char*,char**,int) ;

__attribute__((used)) static struct slclist *
getslc(char *name)
{
    return (struct slclist *)
  genget(name, (char **) SlcList, sizeof(struct slclist));
}
