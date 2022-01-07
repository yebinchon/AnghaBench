
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nsyms; struct proc_handle* index; } ;
struct TYPE_3__ {scalar_t__ nsyms; struct proc_handle* index; } ;
struct proc_handle {size_t nmappings; scalar_t__ refs; scalar_t__ maparrsz; int * rdap; int * procstat; struct proc_handle* mappings; TYPE_2__ dynsymtab; TYPE_1__ symtab; int fd; int * elf; struct proc_handle* file; } ;
struct file_info {size_t nmappings; scalar_t__ refs; scalar_t__ maparrsz; int * rdap; int * procstat; struct file_info* mappings; TYPE_2__ dynsymtab; TYPE_1__ symtab; int fd; int * elf; struct file_info* file; } ;


 int close (int ) ;
 int elf_end (int *) ;
 int free (struct proc_handle*) ;
 int procstat_close (int *) ;
 int rd_delete (int *) ;

void
proc_free(struct proc_handle *phdl)
{
 struct file_info *file;
 size_t i;

 for (i = 0; i < phdl->nmappings; i++) {
  file = phdl->mappings[i].file;
  if (file != ((void*)0) && --file->refs == 0) {
   if (file->elf != ((void*)0)) {
    (void)elf_end(file->elf);
    (void)close(file->fd);
    if (file->symtab.nsyms > 0)
     free(file->symtab.index);
    if (file->dynsymtab.nsyms > 0)
     free(file->dynsymtab.index);
   }
   free(file);
  }
 }
 if (phdl->maparrsz > 0)
  free(phdl->mappings);
 if (phdl->procstat != ((void*)0))
  procstat_close(phdl->procstat);
 if (phdl->rdap != ((void*)0))
  rd_delete(phdl->rdap);
 free(phdl);
}
