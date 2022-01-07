
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ close_table ;
 int fprintf (int *,char*) ;

__attribute__((used)) static void print_events_table_suffix(FILE *outfp)
{
 fprintf(outfp, "{\n");

 fprintf(outfp, "\t.name = 0,\n");
 fprintf(outfp, "\t.event = 0,\n");
 fprintf(outfp, "\t.desc = 0,\n");

 fprintf(outfp, "},\n");
 fprintf(outfp, "};\n");
 close_table = 0;
}
