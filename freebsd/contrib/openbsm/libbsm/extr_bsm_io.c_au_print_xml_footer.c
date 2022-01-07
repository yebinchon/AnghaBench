
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;

void
au_print_xml_footer(FILE *outfp)
{

 fprintf(outfp, "</audit>\n");
}
