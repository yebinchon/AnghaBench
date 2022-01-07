
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int d_cg; } ;


 int cgput (struct uufsd*,int *) ;

int
cgwrite(struct uufsd *disk)
{

 return (cgput(disk, &disk->d_cg));
}
