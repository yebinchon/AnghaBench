
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nsyms; } ;
struct file_info {TYPE_1__ dynsymtab; int elf; TYPE_1__ symtab; } ;


 int SHT_DYNSYM ;
 int SHT_SYMTAB ;
 int load_symtab (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void
load_symtabs(struct file_info *file)
{

 file->symtab.nsyms = file->dynsymtab.nsyms = 0;
 (void)load_symtab(file->elf, &file->symtab, SHT_SYMTAB);
 (void)load_symtab(file->elf, &file->dynsymtab, SHT_DYNSYM);
}
