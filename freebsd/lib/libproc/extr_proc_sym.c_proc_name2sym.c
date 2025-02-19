
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
struct TYPE_7__ {char const* pr_mapname; uintptr_t pr_vaddr; uintptr_t pr_offset; } ;
struct map_info {TYPE_2__ map; struct file_info* file; } ;
struct TYPE_6__ {scalar_t__ e_type; } ;
struct file_info {int symtab; int elf; int dynsymtab; TYPE_1__ ehdr; } ;
typedef int prsyminfo_t ;
struct TYPE_8__ {uintptr_t st_value; } ;
typedef TYPE_3__ GElf_Sym ;


 int DPRINTFX (char*,char const*) ;
 int ENOENT ;
 scalar_t__ ET_DYN ;
 struct map_info* _proc_name2map (struct proc_handle*,char const*) ;
 int lookup_symbol_by_name (int ,int *,char const*,TYPE_3__*,int *) ;
 scalar_t__ open_object (struct map_info*) ;

int
proc_name2sym(struct proc_handle *p, const char *object, const char *symbol,
    GElf_Sym *symcopy, prsyminfo_t *si)
{
 struct file_info *file;
 struct map_info *mapping;
 uintptr_t off;
 int error;

 if ((mapping = _proc_name2map(p, object)) == ((void*)0)) {
  DPRINTFX("ERROR: proc_name2map failed to resolve %s", object);
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

 error = lookup_symbol_by_name(file->elf, &file->dynsymtab, symbol,
     symcopy, si);
 if (error == ENOENT)
  error = lookup_symbol_by_name(file->elf, &file->symtab, symbol,
      symcopy, si);
 if (error == 0)
  symcopy->st_value += off;
 return (error);
}
