
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {void* id_parent; int id_name; int id_fix; void* id_number; int id_func; int id_type; } ;
typedef void* ino_t ;


 int DATA ;
 int DONTKNOW ;
 int chgino ;
 int ckinode (int ,struct inodesc*) ;
 int ginode (void*) ;
 int memset (struct inodesc*,int ,int) ;
 int strdup (char const*) ;

int
changeino(ino_t dir, const char *name, ino_t newnum)
{
 struct inodesc idesc;

 memset(&idesc, 0, sizeof(struct inodesc));
 idesc.id_type = DATA;
 idesc.id_func = chgino;
 idesc.id_number = dir;
 idesc.id_fix = DONTKNOW;
 idesc.id_name = strdup(name);
 idesc.id_parent = newnum;
 return (ckinode(ginode(dir), &idesc));
}
