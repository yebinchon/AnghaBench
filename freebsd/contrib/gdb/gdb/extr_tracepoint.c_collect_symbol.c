
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct collection_list {int dummy; } ;
typedef void* bfd_signed_vma ;


 unsigned long DEPRECATED_REGISTER_RAW_SIZE (unsigned int) ;
 unsigned int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 unsigned int SYMBOL_BASEREG (struct symbol*) ;
 int SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 void* SYMBOL_VALUE (struct symbol*) ;
 void* SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 int TYPE_CODE (int ) ;
 int TYPE_CODE_FLT ;
 unsigned long TYPE_LENGTH (int ) ;
 int add_memrange (struct collection_list*,unsigned int,void*,unsigned long) ;
 int add_register (struct collection_list*,unsigned int) ;
 int check_typedef (int ) ;
 int info_verbose ;
 int printf_filtered (char*,...) ;
 int printf_vma (void*) ;
 int sprintf_vma (char*,void*) ;

__attribute__((used)) static void
collect_symbol (struct collection_list *collect, struct symbol *sym,
  long frame_regno, long frame_offset)
{
  unsigned long len;
  unsigned int reg;
  bfd_signed_vma offset;

  len = TYPE_LENGTH (check_typedef (SYMBOL_TYPE (sym)));
  switch (SYMBOL_CLASS (sym))
    {
    default:
      printf_filtered ("%s: don't know symbol class %d\n",
         DEPRECATED_SYMBOL_NAME (sym), SYMBOL_CLASS (sym));
      break;
    case 137:
      printf_filtered ("constant %s (value %ld) will not be collected.\n",
         DEPRECATED_SYMBOL_NAME (sym), SYMBOL_VALUE (sym));
      break;
    case 129:
      offset = SYMBOL_VALUE_ADDRESS (sym);
      if (info_verbose)
 {
   char tmp[40];

   sprintf_vma (tmp, offset);
   printf_filtered ("LOC_STATIC %s: collect %ld bytes at %s.\n",
      DEPRECATED_SYMBOL_NAME (sym), len, tmp );
 }
      add_memrange (collect, -1, offset, len);
      break;
    case 132:
    case 131:
      reg = SYMBOL_VALUE (sym);
      if (info_verbose)
 printf_filtered ("LOC_REG[parm] %s: ", DEPRECATED_SYMBOL_NAME (sym));
      add_register (collect, reg);


      if (TYPE_CODE (SYMBOL_TYPE (sym)) == TYPE_CODE_FLT &&
   len > DEPRECATED_REGISTER_RAW_SIZE (reg))
 add_register (collect, reg + 1);
      break;
    case 133:
      printf_filtered ("Sorry, don't know how to do LOC_REF_ARG yet.\n");
      printf_filtered ("       (will not collect %s)\n",
         DEPRECATED_SYMBOL_NAME (sym));
      break;
    case 140:
      reg = frame_regno;
      offset = frame_offset + SYMBOL_VALUE (sym);
      if (info_verbose)
 {
   printf_filtered ("LOC_LOCAL %s: Collect %ld bytes at offset ",
      DEPRECATED_SYMBOL_NAME (sym), len);
   printf_vma (offset);
   printf_filtered (" from frame ptr reg %d\n", reg);
 }
      add_memrange (collect, reg, offset, len);
      break;
    case 130:
      reg = SYMBOL_VALUE (sym);
      offset = 0;
      if (info_verbose)
 {
   printf_filtered ("LOC_REGPARM_ADDR %s: Collect %ld bytes at offset ",
      DEPRECATED_SYMBOL_NAME (sym), len);
   printf_vma (offset);
   printf_filtered (" from reg %d\n", reg);
 }
      add_memrange (collect, reg, offset, len);
      break;
    case 136:
    case 135:
      reg = frame_regno;
      offset = frame_offset + SYMBOL_VALUE (sym);
      if (info_verbose)
 {
   printf_filtered ("LOC_LOCAL %s: Collect %ld bytes at offset ",
      DEPRECATED_SYMBOL_NAME (sym), len);
   printf_vma (offset);
   printf_filtered (" from frame ptr reg %d\n", reg);
 }
      add_memrange (collect, reg, offset, len);
      break;
    case 139:
    case 138:
      reg = SYMBOL_BASEREG (sym);
      offset = SYMBOL_VALUE (sym);
      if (info_verbose)
 {
   printf_filtered ("LOC_BASEREG %s: collect %ld bytes at offset ",
      DEPRECATED_SYMBOL_NAME (sym), len);
   printf_vma (offset);
   printf_filtered (" from basereg %d\n", reg);
 }
      add_memrange (collect, reg, offset, len);
      break;
    case 128:
      printf_filtered ("Don't know LOC_UNRESOLVED %s\n", DEPRECATED_SYMBOL_NAME (sym));
      break;
    case 134:
      printf_filtered ("%s has been optimized out of existence.\n",
         DEPRECATED_SYMBOL_NAME (sym));
      break;
    }
}
