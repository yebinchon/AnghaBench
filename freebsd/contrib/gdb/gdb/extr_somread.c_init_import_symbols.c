
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {char** import_list; unsigned int import_list_size; int objfile_obstack; int obfd; } ;
typedef int asection ;
typedef char* ImportEntry ;


 int SOM_READ_IMPORTS_CHUNK_SIZE ;
 int SOM_READ_IMPORTS_NUM ;
 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,...) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static int
init_import_symbols (struct objfile *objfile)
{
  unsigned int import_list;
  unsigned int import_list_size;
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
      int name;
      short dont_care1;
      unsigned char type;
      unsigned int reserved2:8;
    }
  SomImportEntry;




  SomImportEntry buffer[100];


  objfile->import_list = ((void*)0);
  objfile->import_list_size = 0;



  text_section = bfd_get_section_by_name (objfile->obfd, "$SHLIB_INFO$");
  if (!text_section)
    return 0;

  bfd_get_section_contents (objfile->obfd, text_section, dl_header, 0, 12 * sizeof (int));




  if (dl_header[0] != 93092112)
    return 0;

  import_list = dl_header[4];
  import_list_size = dl_header[5];
  if (!import_list_size)
    return 0;
  string_table = dl_header[10];
  string_table_size = dl_header[11];
  if (!string_table_size)
    return 0;


  string_buffer = (char *) xmalloc (string_table_size);
  bfd_get_section_contents (objfile->obfd, text_section, string_buffer,
       string_table, string_table_size);




  objfile->import_list
    = (ImportEntry *) obstack_alloc (&objfile->objfile_obstack,
       import_list_size * sizeof (ImportEntry));


  for (j = 0, k = 0;
       j < (import_list_size / 100);
       j++)
    {
      bfd_get_section_contents (objfile->obfd, text_section, buffer,
         import_list + j * (sizeof (SomImportEntry) * 100),
    (sizeof (SomImportEntry) * 100));
      for (i = 0; i < 100; i++, k++)
 {
   if (buffer[i].type != (unsigned char) 0)
     {
       objfile->import_list[k]
  = (char *) obstack_alloc (&objfile->objfile_obstack, strlen (string_buffer + buffer[i].name) + 1);
       strcpy (objfile->import_list[k], string_buffer + buffer[i].name);

     }
   else
     objfile->import_list[k] = ((void*)0);

 }
    }


  if (k < import_list_size)
    bfd_get_section_contents (objfile->obfd, text_section, buffer,
         import_list + k * sizeof (SomImportEntry),
     (import_list_size - k) * sizeof (SomImportEntry));
  for (i = 0; k < import_list_size; i++, k++)
    {
      if (buffer[i].type != (unsigned char) 0)
 {
   objfile->import_list[k]
     = (char *) obstack_alloc (&objfile->objfile_obstack, strlen (string_buffer + buffer[i].name) + 1);
   strcpy (objfile->import_list[k], string_buffer + buffer[i].name);

 }
      else
 objfile->import_list[k] = ((void*)0);
    }

  objfile->import_list_size = import_list_size;
  xfree (string_buffer);
  return import_list_size;
}
