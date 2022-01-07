
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct inodesc {int id_number; int id_func; int id_type; } ;
typedef int ino_t ;
struct TYPE_2__ {int ino_state; } ;


 int ADDR ;
 int USTATE ;
 int ckinode (union dinode*,struct inodesc*) ;
 int clearinode (union dinode*) ;
 union dinode* ginode (int ) ;
 int inodirty (union dinode*) ;
 TYPE_1__* inoinfo (int ) ;
 int memset (struct inodesc*,int ,int) ;
 int n_files ;
 int pass4check ;

void
freeino(ino_t ino)
{
 struct inodesc idesc;
 union dinode *dp;

 memset(&idesc, 0, sizeof(struct inodesc));
 idesc.id_type = ADDR;
 idesc.id_func = pass4check;
 idesc.id_number = ino;
 dp = ginode(ino);
 (void)ckinode(dp, &idesc);
 clearinode(dp);
 inodirty(dp);
 inoinfo(ino)->ino_state = USTATE;
 n_files--;
}
