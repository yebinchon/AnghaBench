
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct objfile {int minimal_symbol_count; int obfd; struct minimal_symbol* msymbols; int name; } ;
struct minimal_symbol {int type; int filename; } ;


 int * DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 scalar_t__ SYMBOL_BFD_SECTION (struct minimal_symbol*) ;
 int * SYMBOL_DEMANGLED_NAME (struct minimal_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int bfd_section_name (int ,scalar_t__) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int warning (char*,int,int) ;

__attribute__((used)) static void
dump_msymbols (struct objfile *objfile, struct ui_file *outfile)
{
  struct minimal_symbol *msymbol;
  int index;
  char ms_type;

  fprintf_filtered (outfile, "\nObject file %s:\n\n", objfile->name);
  if (objfile->minimal_symbol_count == 0)
    {
      fprintf_filtered (outfile, "No minimal symbols found.\n");
      return;
    }
  for (index = 0, msymbol = objfile->msymbols;
       DEPRECATED_SYMBOL_NAME (msymbol) != ((void*)0); msymbol++, index++)
    {
      switch (msymbol->type)
 {
 case 128:
   ms_type = 'u';
   break;
 case 129:
   ms_type = 'T';
   break;
 case 130:
   ms_type = 'S';
   break;
 case 134:
   ms_type = 'D';
   break;
 case 135:
   ms_type = 'B';
   break;
 case 136:
   ms_type = 'A';
   break;
 case 131:
   ms_type = 't';
   break;
 case 132:
   ms_type = 'd';
   break;
 case 133:
   ms_type = 'b';
   break;
 default:
   ms_type = '?';
   break;
 }
      fprintf_filtered (outfile, "[%2d] %c ", index, ms_type);
      print_address_numeric (SYMBOL_VALUE_ADDRESS (msymbol), 1, outfile);
      fprintf_filtered (outfile, " %s", DEPRECATED_SYMBOL_NAME (msymbol));
      if (SYMBOL_BFD_SECTION (msymbol))
 fprintf_filtered (outfile, " section %s",
     bfd_section_name (objfile->obfd,
         SYMBOL_BFD_SECTION (msymbol)));
      if (SYMBOL_DEMANGLED_NAME (msymbol) != ((void*)0))
 {
   fprintf_filtered (outfile, "  %s", SYMBOL_DEMANGLED_NAME (msymbol));
 }




      fputs_filtered ("\n", outfile);
    }
  if (objfile->minimal_symbol_count != index)
    {
      warning ("internal error:  minimal symbol count %d != %d",
        objfile->minimal_symbol_count, index);
    }
  fprintf_filtered (outfile, "\n");
}
