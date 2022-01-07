
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int f_fsdata; } ;
typedef int off_t ;


 int CALLBACK (int ,int ,int ,int) ;
 int seek ;

__attribute__((used)) static off_t
host_seek(struct open_file *f, off_t offset, int where)
{

 return (CALLBACK(seek, f->f_fsdata, offset, where));
}
