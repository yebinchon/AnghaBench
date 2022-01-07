
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inodesc {struct direct* id_dirp; } ;
struct direct {int d_ino; int d_reclen; size_t d_type; char* d_namlen; int d_name; } ;


 int KEEPON ;
 int diroff ;
 int printf (char*,int ,int,int,int,char*,char*,int ) ;
 int slot ;
 char** typename ;

int
scannames(struct inodesc *idesc)
{
 struct direct *dirp = idesc->id_dirp;

 printf("slot %d off %d ino %d reclen %d: %s, `%.*s'\n",
        slot++, diroff, dirp->d_ino, dirp->d_reclen,
        typename[dirp->d_type], dirp->d_namlen, dirp->d_name);
 diroff += dirp->d_reclen;
 return (KEEPON);
}
