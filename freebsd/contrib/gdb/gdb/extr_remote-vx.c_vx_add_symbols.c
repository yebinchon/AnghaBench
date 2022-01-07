
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_offsets {void** offsets; } ;
struct objfile {int obfd; int num_sections; int section_offsets; } ;
struct find_sect_args {void* text_start; void* data_start; void* bss_start; } ;
typedef void* CORE_ADDR ;


 size_t SECT_OFF_BSS (struct objfile*) ;
 size_t SECT_OFF_DATA (struct objfile*) ;
 size_t SECT_OFF_TEXT (struct objfile*) ;
 int SIZEOF_N_SECTION_OFFSETS (int ) ;
 scalar_t__ alloca (int ) ;
 int bfd_map_over_sections (int ,int ,struct find_sect_args*) ;
 int find_sect ;
 int memcpy (struct section_offsets*,int ,int ) ;
 int objfile_relocate (struct objfile*,struct section_offsets*) ;
 int objfile_to_front (struct objfile*) ;
 struct objfile* symbol_file_add (char*,int,int *,int ,int ) ;

__attribute__((used)) static void
vx_add_symbols (char *name, int from_tty, CORE_ADDR text_addr,
  CORE_ADDR data_addr, CORE_ADDR bss_addr)
{
  struct section_offsets *offs;
  struct objfile *objfile;
  struct find_sect_args ss;



  objfile = symbol_file_add (name, from_tty, ((void*)0), 0, 0);




  objfile_to_front (objfile);

  offs =
    (struct section_offsets *)
    alloca (SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));
  memcpy (offs, objfile->section_offsets,
          SIZEOF_N_SECTION_OFFSETS (objfile->num_sections));

  ss.text_start = 0;
  ss.data_start = 0;
  ss.bss_start = 0;
  bfd_map_over_sections (objfile->obfd, find_sect, &ss);


  offs->offsets[SECT_OFF_TEXT (objfile)] = text_addr - ss.text_start;
  offs->offsets[SECT_OFF_DATA (objfile)] = data_addr - ss.data_start;
  offs->offsets[SECT_OFF_BSS (objfile)] = bss_addr - ss.bss_start;
  objfile_relocate (objfile, offs);
}
