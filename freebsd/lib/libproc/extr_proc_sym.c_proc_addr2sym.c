
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
struct TYPE_7__ {uintptr_t pr_mapname; uintptr_t pr_vaddr; uintptr_t pr_offset; } ;
struct map_info {TYPE_2__ map; struct file_info* file; } ;
struct TYPE_6__ {scalar_t__ e_type; } ;
struct file_info {int symtab; int elf; int dynsymtab; TYPE_1__ ehdr; } ;
struct TYPE_8__ {uintptr_t st_value; } ;
typedef TYPE_3__ GElf_Sym ;


 int DPRINTFX (char*,uintptr_t) ;
 int ENOENT ;
 scalar_t__ ET_DYN ;
 struct map_info* _proc_addr2map (struct proc_handle*,uintptr_t) ;
 int demangle (char const*,char*,size_t) ;
 int lookup_symbol_by_addr (int ,int *,uintptr_t,char const**,TYPE_3__*) ;
 scalar_t__ open_object (struct map_info*) ;

int
proc_addr2sym(struct proc_handle *p, uintptr_t addr, char *name,
    size_t namesz, GElf_Sym *symcopy)
{
 struct file_info *file;
 struct map_info *mapping;
 const char *s;
 uintptr_t off;
 int error;

 if ((mapping = _proc_addr2map(p, addr)) == ((void*)0)) {
  DPRINTFX("ERROR: proc_addr2map failed to resolve 0x%jx", addr);
  return (-1);
 }
 if (open_object(mapping) != 0) {
  DPRINTFX("ERROR: failed to open object %s",
      mapping->map.pr_mapname);
  return (-1);
 }

 file = mapping->file;
 off = file->ehdr.e_type == ET_DYN ?
     mapping->map.pr_vaddr - mapping->map.pr_offset : 0;
 if (addr < off)
  return (ENOENT);
 addr -= off;

 error = lookup_symbol_by_addr(file->elf, &file->dynsymtab, addr, &s,
     symcopy);
 if (error == ENOENT)
  error = lookup_symbol_by_addr(file->elf, &file->symtab, addr,
      &s, symcopy);
 if (error == 0) {
  symcopy->st_value += off;
  demangle(s, name, namesz);
 }
 return (error);
}
