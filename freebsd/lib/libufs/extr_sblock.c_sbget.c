
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs {int dummy; } ;
typedef int off_t ;


 int ffs_sbget (int*,struct fs**,int ,char*,int ) ;
 int use_pread ;

int
sbget(int devfd, struct fs **fsp, off_t sblockloc)
{

 return (ffs_sbget(&devfd, fsp, sblockloc, "user", use_pread));
}
