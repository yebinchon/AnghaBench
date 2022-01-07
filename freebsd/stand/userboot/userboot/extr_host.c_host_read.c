
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int f_fsdata; } ;


 int CALLBACK (int ,int ,void*,size_t,size_t*) ;
 int read ;

__attribute__((used)) static int
host_read(struct open_file *f, void *start, size_t size, size_t *resid)
{

 return (CALLBACK(read, f->f_fsdata, start, size, resid));
}
