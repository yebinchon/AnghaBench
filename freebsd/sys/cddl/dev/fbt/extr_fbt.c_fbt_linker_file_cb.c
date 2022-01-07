
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_file_t ;


 int fbt_provide_module (void*,int ) ;

__attribute__((used)) static int
fbt_linker_file_cb(linker_file_t lf, void *arg)
{

 fbt_provide_module(arg, lf);

 return (0);
}
