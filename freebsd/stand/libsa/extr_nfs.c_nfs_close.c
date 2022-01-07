
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct open_file {int * f_fsdata; } ;
struct nfs_iodesc {int dummy; } ;


 scalar_t__ debug ;
 int free (struct nfs_iodesc*) ;
 int printf (char*,int ) ;

int
nfs_close(struct open_file *f)
{
 struct nfs_iodesc *fp = (struct nfs_iodesc *)f->f_fsdata;






 free(fp);
 f->f_fsdata = ((void*)0);

 return (0);
}
