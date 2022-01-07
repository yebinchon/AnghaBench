
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct setlist {int dummy; } ;


 scalar_t__ Setlist ;
 scalar_t__ genget (char*,char**,int) ;

__attribute__((used)) static struct setlist *
getset(char *name)
{
    return (struct setlist *)
  genget(name, (char **) Setlist, sizeof(struct setlist));
}
