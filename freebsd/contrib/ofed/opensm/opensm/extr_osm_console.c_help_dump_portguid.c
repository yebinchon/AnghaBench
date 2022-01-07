
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void help_dump_portguid(FILE * out, int detail)
{
 fprintf(out,
  "dump_portguid [file filename] regexp1 [regexp2 [regexp3 ...]] -- Dump port GUID matching a regexp \n");
 if (detail) {
  fprintf(out,
   "getguidgetguid  -- Dump all the port GUID whom node_desc matches one of the provided regexp\n");
  fprintf(out,
   "   [file filename] -- Send the port GUID list to the specified file instead of regular output\n");
 }

}
