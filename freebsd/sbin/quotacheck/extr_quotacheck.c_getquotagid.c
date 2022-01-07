
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;


 struct group* getgrnam (int ) ;
 int quotagroup ;

int
getquotagid(void)
{
 struct group *gr;

 if ((gr = getgrnam(quotagroup)) != ((void*)0))
  return (gr->gr_gid);
 return (-1);
}
