
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtfs_file {int dummy; } ;


 struct dtfs_file* emalloc (int) ;
 int memset (struct dtfs_file*,int ,int) ;

struct dtfs_file *
dtfs_newfile()
{
 struct dtfs_file *dff;

 dff = emalloc(sizeof(struct dtfs_file));
 memset(dff, 0, sizeof(struct dtfs_file));

 return dff;
}
