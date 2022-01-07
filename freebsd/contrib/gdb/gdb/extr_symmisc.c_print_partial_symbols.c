
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct partial_symbol {int dummy; } ;


 int DEPRECATED_SYMBOL_NAME (struct partial_symbol*) ;
 int SYMBOL_CLASS (struct partial_symbol*) ;
 int * SYMBOL_DEMANGLED_NAME (struct partial_symbol*) ;
 int SYMBOL_DOMAIN (struct partial_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct partial_symbol*) ;


 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 int print_address_numeric (int ,int,struct ui_file*) ;

__attribute__((used)) static void
print_partial_symbols (struct partial_symbol **p, int count, char *what,
         struct ui_file *outfile)
{
  fprintf_filtered (outfile, "  %s partial symbols:\n", what);
  while (count-- > 0)
    {
      fprintf_filtered (outfile, "    `%s'", DEPRECATED_SYMBOL_NAME (*p));
      if (SYMBOL_DEMANGLED_NAME (*p) != ((void*)0))
 {
   fprintf_filtered (outfile, "  `%s'", SYMBOL_DEMANGLED_NAME (*p));
 }
      fputs_filtered (", ", outfile);
      switch (SYMBOL_DOMAIN (*p))
 {
 case 129:
   fputs_filtered ("undefined domain, ", outfile);
   break;
 case 128:

   break;
 case 130:
   fputs_filtered ("struct domain, ", outfile);
   break;
 case 150:
   fputs_filtered ("label domain, ", outfile);
   break;
 default:
   fputs_filtered ("<invalid domain>, ", outfile);
   break;
 }
      switch (SYMBOL_CLASS (*p))
 {
 case 132:
   fputs_filtered ("undefined", outfile);
   break;
 case 145:
   fputs_filtered ("constant int", outfile);
   break;
 case 134:
   fputs_filtered ("static", outfile);
   break;
 case 143:
   fputs_filtered ("extern global", outfile);
   break;
 case 137:
   fputs_filtered ("register", outfile);
   break;
 case 149:
   fputs_filtered ("pass by value", outfile);
   break;
 case 138:
   fputs_filtered ("pass by reference", outfile);
   break;
 case 136:
   fputs_filtered ("register parameter", outfile);
   break;
 case 135:
   fputs_filtered ("register address parameter", outfile);
   break;
 case 141:
   fputs_filtered ("stack parameter", outfile);
   break;
 case 133:
   fputs_filtered ("type", outfile);
   break;
 case 142:
   fputs_filtered ("label", outfile);
   break;
 case 148:
   fputs_filtered ("function", outfile);
   break;
 case 144:
   fputs_filtered ("constant bytes", outfile);
   break;
 case 140:
   fputs_filtered ("shuffled arg", outfile);
   break;
 case 131:
   fputs_filtered ("unresolved", outfile);
   break;
 case 139:
   fputs_filtered ("optimized out", outfile);
   break;
 case 147:
 case 146:
   fputs_filtered ("computed at runtime", outfile);
   break;
 default:
   fputs_filtered ("<invalid location>", outfile);
   break;
 }
      fputs_filtered (", ", outfile);
      print_address_numeric (SYMBOL_VALUE_ADDRESS (*p), 1, outfile);
      fprintf_filtered (outfile, "\n");
      p++;
    }
}
