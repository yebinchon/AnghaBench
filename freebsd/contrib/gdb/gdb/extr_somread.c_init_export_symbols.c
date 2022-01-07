
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objfile {unsigned int export_list_size; TYPE_1__* export_list; int objfile_obstack; int obfd; } ;
typedef int asection ;
struct TYPE_2__ {char* name; int address; } ;
typedef TYPE_1__ ExportEntry ;


 int SOM_READ_EXPORTS_CHUNK_SIZE ;
 int SOM_READ_EXPORTS_NUM ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,...) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (unsigned int) ;

int
init_export_symbols (struct objfile *objfile)
{
  unsigned int export_list;
  unsigned int export_list_size;
  unsigned int string_table;
  unsigned int string_table_size;
  char *string_buffer;
  int i;
  int j;
  int k;
  asection *text_section;
  unsigned int dl_header[12];


  typedef struct
    {
      int next;
      int name;
      int value;
      int dont_care1;
      unsigned char type;
      char dont_care2;
      short dont_care3;
    }
  SomExportEntry;




  SomExportEntry buffer[100];


  objfile->export_list = ((void*)0);
  objfile->export_list_size = 0;



  text_section = bfd_get_section_by_name (objfile->obfd, "$SHLIB_INFO$");
  if (!text_section)
    return 0;

  bfd_get_section_contents (objfile->obfd, text_section, dl_header, 0, 12 * sizeof (int));




  if (dl_header[0] != 93092112)
    return 0;

  export_list = dl_header[8];
  export_list_size = dl_header[9];
  if (!export_list_size)
    return 0;
  string_table = dl_header[10];
  string_table_size = dl_header[11];
  if (!string_table_size)
    return 0;


  string_buffer = (char *) xmalloc (string_table_size);
  bfd_get_section_contents (objfile->obfd, text_section, string_buffer,
       string_table, string_table_size);




  objfile->export_list
    = (ExportEntry *) obstack_alloc (&objfile->objfile_obstack,
       export_list_size * sizeof (ExportEntry));


  for (j = 0, k = 0;
       j < (export_list_size / 100);
       j++)
    {
      bfd_get_section_contents (objfile->obfd, text_section, buffer,
         export_list + j * (sizeof (SomExportEntry) * 100),
    (sizeof (SomExportEntry) * 100));
      for (i = 0; i < 100; i++, k++)
 {
   if (buffer[i].type != (unsigned char) 0)
     {
       objfile->export_list[k].name
  = (char *) obstack_alloc (&objfile->objfile_obstack, strlen (string_buffer + buffer[i].name) + 1);
       strcpy (objfile->export_list[k].name, string_buffer + buffer[i].name);
       objfile->export_list[k].address = buffer[i].value;

     }
   else

     {
       objfile->export_list[k].name = ((void*)0);
       objfile->export_list[k].address = 0;
     }
 }
    }


  if (k < export_list_size)
    bfd_get_section_contents (objfile->obfd, text_section, buffer,
         export_list + k * sizeof (SomExportEntry),
     (export_list_size - k) * sizeof (SomExportEntry));
  for (i = 0; k < export_list_size; i++, k++)
    {
      if (buffer[i].type != (unsigned char) 0)
 {
   objfile->export_list[k].name
     = (char *) obstack_alloc (&objfile->objfile_obstack, strlen (string_buffer + buffer[i].name) + 1);
   strcpy (objfile->export_list[k].name, string_buffer + buffer[i].name);

   objfile->export_list[k].address = buffer[i].value;
 }
      else
 {
   objfile->export_list[k].name = ((void*)0);
   objfile->export_list[k].address = 0;
 }
    }

  objfile->export_list_size = export_list_size;
  xfree (string_buffer);
  return export_list_size;
}
