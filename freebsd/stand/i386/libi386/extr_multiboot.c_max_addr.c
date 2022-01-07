
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct preloaded_file {scalar_t__ f_addr; scalar_t__ f_size; struct preloaded_file* f_next; } ;


 struct preloaded_file* file_findfile (int *,int *) ;

__attribute__((used)) static vm_offset_t
max_addr(void)
{
 struct preloaded_file *fp;
 vm_offset_t addr = 0;

 for (fp = file_findfile(((void*)0), ((void*)0)); fp != ((void*)0); fp = fp->f_next) {
  if (addr < (fp->f_addr + fp->f_size))
   addr = fp->f_addr + fp->f_size;
 }

 return (addr);
}
