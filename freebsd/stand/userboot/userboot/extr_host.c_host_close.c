
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {void* f_fsdata; } ;


 int CALLBACK (int ,void*) ;
 int close ;

__attribute__((used)) static int
host_close(struct open_file *f)
{

        CALLBACK(close, f->f_fsdata);
 f->f_fsdata = (void *)0;

 return (0);
}
