
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int d_cg; } ;


 scalar_t__ cgget (struct uufsd*,int,int *) ;

int
cgread1(struct uufsd *disk, int c)
{

 if ((cgget(disk, c, &disk->d_cg)) == 0)
  return (1);
 return (-1);
}
