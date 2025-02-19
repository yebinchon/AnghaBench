
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct proc_handle {int nmappings; int maparrsz; char* execpath; size_t exec_map; struct map_info* mappings; } ;
struct TYPE_6__ {char* pr_mapname; } ;
struct map_info {struct file_info* file; TYPE_3__ map; } ;
struct file_info {int fd; int refs; int * elf; } ;
struct TYPE_5__ {char* rdl_path; int rdl_prot; } ;
typedef TYPE_1__ rd_loadobj_t ;


 int RD_RDL_X ;
 struct file_info* malloc (int) ;
 int rdl2prmap (TYPE_1__ const*,TYPE_3__*) ;
 struct map_info* reallocarray (struct map_info*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
map_iter(const rd_loadobj_t *lop, void *arg)
{
 struct file_info *file;
 struct map_info *mapping, *tmp;
 struct proc_handle *phdl;
 size_t i;

 phdl = arg;
 if (phdl->nmappings >= phdl->maparrsz) {
  phdl->maparrsz *= 2;
  tmp = reallocarray(phdl->mappings, phdl->maparrsz,
      sizeof(*phdl->mappings));
  if (tmp == ((void*)0))
   return (-1);
  phdl->mappings = tmp;
 }

 mapping = &phdl->mappings[phdl->nmappings];
 rdl2prmap(lop, &mapping->map);
 if (strcmp(lop->rdl_path, phdl->execpath) == 0 &&
     (lop->rdl_prot & RD_RDL_X) != 0)
  phdl->exec_map = phdl->nmappings;

 file = ((void*)0);
 if (lop->rdl_path[0] != '\0') {

  for (i = 0; i < phdl->nmappings; i++)
   if (strcmp(mapping->map.pr_mapname,
       phdl->mappings[i].map.pr_mapname) == 0) {
    file = phdl->mappings[i].file;
    break;
   }

  if (file == ((void*)0)) {
   file = malloc(sizeof(*file));
   if (file == ((void*)0))
    return (-1);
   file->elf = ((void*)0);
   file->fd = -1;
   file->refs = 1;
  } else
   file->refs++;
 }
 mapping->file = file;
 phdl->nmappings++;
 return (0);
}
