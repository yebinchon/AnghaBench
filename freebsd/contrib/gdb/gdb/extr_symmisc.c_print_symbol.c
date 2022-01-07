
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct print_symbol_args {int depth; struct ui_file* outfile; struct symbol* symbol; } ;
struct TYPE_3__ {int owner; } ;


 int BLOCK_END (int ) ;
 int BLOCK_START (int ) ;
 int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 scalar_t__ LABEL_DOMAIN ;
 int LA_PRINT_TYPE (scalar_t__,char*,struct ui_file*,int,int) ;
 scalar_t__ STRUCT_DOMAIN ;
 int SYMBOL_BASEREG (struct symbol*) ;
 TYPE_1__* SYMBOL_BFD_SECTION (struct symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 int SYMBOL_CLASS (struct symbol*) ;
 scalar_t__ SYMBOL_DOMAIN (struct symbol*) ;
 char* SYMBOL_PRINT_NAME (struct symbol*) ;
 scalar_t__ SYMBOL_TYPE (struct symbol*) ;
 int SYMBOL_VALUE (struct symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 int * SYMBOL_VALUE_BYTES (struct symbol*) ;
 scalar_t__ TYPE_CODE (scalar_t__) ;
 scalar_t__ TYPE_CODE_ENUM ;
 scalar_t__ TYPE_CODE_STRUCT ;
 unsigned int TYPE_LENGTH (struct type*) ;
 scalar_t__ TYPE_TAG_NAME (scalar_t__) ;
 int bfd_section_name (int ,TYPE_1__*) ;
 struct type* check_typedef (scalar_t__) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int gdb_print_host_address (int ,struct ui_file*) ;
 int print_address_numeric (int ,int,struct ui_file*) ;
 int print_spaces (int,struct ui_file*) ;

__attribute__((used)) static int
print_symbol (void *args)
{
  struct symbol *symbol = ((struct print_symbol_args *) args)->symbol;
  int depth = ((struct print_symbol_args *) args)->depth;
  struct ui_file *outfile = ((struct print_symbol_args *) args)->outfile;

  print_spaces (depth, outfile);
  if (SYMBOL_DOMAIN (symbol) == LABEL_DOMAIN)
    {
      fprintf_filtered (outfile, "label %s at ", SYMBOL_PRINT_NAME (symbol));
      print_address_numeric (SYMBOL_VALUE_ADDRESS (symbol), 1, outfile);
      if (SYMBOL_BFD_SECTION (symbol))
 fprintf_filtered (outfile, " section %s\n",
         bfd_section_name (SYMBOL_BFD_SECTION (symbol)->owner,
      SYMBOL_BFD_SECTION (symbol)));
      else
 fprintf_filtered (outfile, "\n");
      return 1;
    }
  if (SYMBOL_DOMAIN (symbol) == STRUCT_DOMAIN)
    {
      if (TYPE_TAG_NAME (SYMBOL_TYPE (symbol)))
 {
   LA_PRINT_TYPE (SYMBOL_TYPE (symbol), "", outfile, 1, depth);
 }
      else
 {
   fprintf_filtered (outfile, "%s %s = ",
    (TYPE_CODE (SYMBOL_TYPE (symbol)) == TYPE_CODE_ENUM
     ? "enum"
       : (TYPE_CODE (SYMBOL_TYPE (symbol)) == TYPE_CODE_STRUCT
   ? "struct" : "union")),
       DEPRECATED_SYMBOL_NAME (symbol));
   LA_PRINT_TYPE (SYMBOL_TYPE (symbol), "", outfile, 1, depth);
 }
      fprintf_filtered (outfile, ";\n");
    }
  else
    {
      if (SYMBOL_CLASS (symbol) == 129)
 fprintf_filtered (outfile, "typedef ");
      if (SYMBOL_TYPE (symbol))
 {

   LA_PRINT_TYPE (SYMBOL_TYPE (symbol), SYMBOL_PRINT_NAME (symbol),
    outfile,
    TYPE_CODE (SYMBOL_TYPE (symbol)) != TYPE_CODE_ENUM,
    depth);
   fprintf_filtered (outfile, "; ");
 }
      else
 fprintf_filtered (outfile, "%s ", SYMBOL_PRINT_NAME (symbol));

      switch (SYMBOL_CLASS (symbol))
 {
 case 141:
   fprintf_filtered (outfile, "const %ld (0x%lx)",
       SYMBOL_VALUE (symbol),
       SYMBOL_VALUE (symbol));
   break;

 case 140:
   {
     unsigned i;
     struct type *type = check_typedef (SYMBOL_TYPE (symbol));
     fprintf_filtered (outfile, "const %u hex bytes:",
         TYPE_LENGTH (type));
     for (i = 0; i < TYPE_LENGTH (type); i++)
       fprintf_filtered (outfile, " %02x",
    (unsigned) SYMBOL_VALUE_BYTES (symbol)[i]);
   }
   break;

 case 130:
   fprintf_filtered (outfile, "static at ");
   print_address_numeric (SYMBOL_VALUE_ADDRESS (symbol), 1, outfile);
   if (SYMBOL_BFD_SECTION (symbol))
     fprintf_filtered (outfile, " section %s",
         bfd_section_name
         (SYMBOL_BFD_SECTION (symbol)->owner,
          SYMBOL_BFD_SECTION (symbol)));
   break;

 case 139:
   fprintf_filtered (outfile, "extern global at *(");
   print_address_numeric (SYMBOL_VALUE_ADDRESS (symbol), 1, outfile);
   fprintf_filtered (outfile, "),");
   break;

 case 133:
   fprintf_filtered (outfile, "register %ld", SYMBOL_VALUE (symbol));
   break;

 case 147:
   fprintf_filtered (outfile, "arg at offset 0x%lx",
       SYMBOL_VALUE (symbol));
   break;

 case 136:
   fprintf_filtered (outfile, "arg at offset 0x%lx from fp",
       SYMBOL_VALUE (symbol));
   break;

 case 134:
   fprintf_filtered (outfile, "reference arg at 0x%lx", SYMBOL_VALUE (symbol));
   break;

 case 132:
   fprintf_filtered (outfile, "parameter register %ld", SYMBOL_VALUE (symbol));
   break;

 case 131:
   fprintf_filtered (outfile, "address parameter register %ld", SYMBOL_VALUE (symbol));
   break;

 case 137:
   fprintf_filtered (outfile, "local at offset 0x%lx",
       SYMBOL_VALUE (symbol));
   break;

 case 146:
   fprintf_filtered (outfile, "local at 0x%lx from register %d",
       SYMBOL_VALUE (symbol), SYMBOL_BASEREG (symbol));
   break;

 case 145:
   fprintf_filtered (outfile, "arg at 0x%lx from register %d",
       SYMBOL_VALUE (symbol), SYMBOL_BASEREG (symbol));
   break;

 case 129:
   break;

 case 138:
   fprintf_filtered (outfile, "label at ");
   print_address_numeric (SYMBOL_VALUE_ADDRESS (symbol), 1, outfile);
   if (SYMBOL_BFD_SECTION (symbol))
     fprintf_filtered (outfile, " section %s",
         bfd_section_name
         (SYMBOL_BFD_SECTION (symbol)->owner,
          SYMBOL_BFD_SECTION (symbol)));
   break;

 case 144:
   fprintf_filtered (outfile, "block object ");
   gdb_print_host_address (SYMBOL_BLOCK_VALUE (symbol), outfile);
   fprintf_filtered (outfile, ", ");
   print_address_numeric (BLOCK_START (SYMBOL_BLOCK_VALUE (symbol)),
     1,
     outfile);
   fprintf_filtered (outfile, "..");
   print_address_numeric (BLOCK_END (SYMBOL_BLOCK_VALUE (symbol)),
     1,
     outfile);
   if (SYMBOL_BFD_SECTION (symbol))
     fprintf_filtered (outfile, " section %s",
         bfd_section_name
         (SYMBOL_BFD_SECTION (symbol)->owner,
          SYMBOL_BFD_SECTION (symbol)));
   break;

 case 143:
 case 142:
   fprintf_filtered (outfile, "computed at runtime");
   break;

 case 128:
   fprintf_filtered (outfile, "unresolved");
   break;

 case 135:
   fprintf_filtered (outfile, "optimized out");
   break;

 default:
   fprintf_filtered (outfile, "botched symbol class %x",
       SYMBOL_CLASS (symbol));
   break;
 }
    }
  fprintf_filtered (outfile, "\n");
  return 1;
}
