
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {char* id_name; int id_parent; int id_fix; int id_type; int id_func; int id_number; } ;


 int DATA ;
 int FOUND ;
 int IGNORE ;
 int checkactivedir () ;
 int ckinode (int ,struct inodesc*) ;
 int curinode ;
 int curinum ;
 int findino ;
 int ginode (int ) ;
 int printactive (int ) ;
 int warnx (char*,char*) ;

__attribute__((used)) static int
dolookup(char *name)
{
    struct inodesc idesc;

    if (!checkactivedir())
     return 0;
    idesc.id_number = curinum;
    idesc.id_func = findino;
    idesc.id_name = name;
    idesc.id_type = DATA;
    idesc.id_fix = IGNORE;
    if (ckinode(curinode, &idesc) & FOUND) {
 curinum = idesc.id_parent;
 curinode = ginode(curinum);
 printactive(0);
 return 1;
    } else {
 warnx("name `%s' not found in current inode directory", name);
 return 0;
    }
}
