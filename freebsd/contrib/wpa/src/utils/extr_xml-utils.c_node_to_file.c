
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct xml_node_ctx {int dummy; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* xml_node_to_str (struct xml_node_ctx*,int *) ;

int node_to_file(struct xml_node_ctx *ctx, const char *fname, xml_node_t *node)
{
 FILE *f;
 char *str;

 str = xml_node_to_str(ctx, node);
 if (str == ((void*)0))
  return -1;

 f = fopen(fname, "w");
 if (!f) {
  os_free(str);
  return -1;
 }

 fprintf(f, "%s\n", str);
 os_free(str);
 fclose(f);

 return 0;
}
