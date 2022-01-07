
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int flags; TYPE_1__* separate_debug_objfile; int num_sections; int section_offsets; } ;
struct TYPE_3__ {struct objfile* separate_debug_objfile_backlink; int name; } ;


 int OBJF_READNOW ;
 int OBJF_REORDERED ;
 int OBJF_SHARED ;
 int OBJF_USERLOADED ;
 char* find_separate_debug_file (struct objfile*) ;
 int free_objfile (TYPE_1__*) ;
 int info_verbose ;
 scalar_t__ strcmp (char*,int ) ;
 TYPE_1__* symbol_file_add_with_addrs_or_offsets (char*,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
reread_separate_symbols (struct objfile *objfile)
{
  char *debug_file;
  unsigned long crc32;



  debug_file = find_separate_debug_file (objfile);

  if (objfile->separate_debug_objfile)
    {
      if (! debug_file
          || strcmp (debug_file, objfile->separate_debug_objfile->name) != 0)
        free_objfile (objfile->separate_debug_objfile);
    }



  if (debug_file
      && ! objfile->separate_debug_objfile)
    {


      objfile->separate_debug_objfile
        = (symbol_file_add_with_addrs_or_offsets
           (debug_file,
            info_verbose,
            0,
            objfile->section_offsets, objfile->num_sections,
            0,
            objfile->flags & (OBJF_REORDERED | OBJF_SHARED | OBJF_READNOW
                              | OBJF_USERLOADED)));
      objfile->separate_debug_objfile->separate_debug_objfile_backlink
        = objfile;
    }
}
