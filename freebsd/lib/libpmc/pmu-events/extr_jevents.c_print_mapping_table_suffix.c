
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

__attribute__((used)) static void print_mapping_table_suffix(FILE *outfp)
{



 fprintf(outfp, "{\n");
 fprintf(outfp, "\t.cpuid = 0,\n");
 fprintf(outfp, "\t.version = 0,\n");
 fprintf(outfp, "\t.type = 0,\n");
 fprintf(outfp, "\t.table = 0,\n");
 fprintf(outfp, "},\n");


 fprintf(outfp, "};\n");
}
