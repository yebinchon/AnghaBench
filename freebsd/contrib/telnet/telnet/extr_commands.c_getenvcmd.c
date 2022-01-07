
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envlist {int dummy; } ;


 scalar_t__ EnvList ;
 scalar_t__ genget (char*,char**,int) ;

__attribute__((used)) static struct envlist *
getenvcmd(char *name)
{
    return (struct envlist *)
  genget(name, (char **) EnvList, sizeof(struct envlist));
}
