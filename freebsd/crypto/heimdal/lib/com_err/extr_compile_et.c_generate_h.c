
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_code {char* name; int number; struct error_code* next; } ;
typedef int fn ;
typedef int FILE ;


 int base_id ;
 struct error_code* codes ;
 int fclose (int *) ;
 char* filename ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 char* hfn ;
 char* id_str ;
 int isalnum (unsigned char) ;
 char* name ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
generate_h(void)
{
    struct error_code *ec;
    char fn[128];
    FILE *h_file = fopen(hfn, "w");
    char *p;

    if(h_file == ((void*)0))
 return 1;

    snprintf(fn, sizeof(fn), "__%s__", hfn);
    for(p = fn; *p; p++)
 if(!isalnum((unsigned char)*p))
     *p = '_';

    fprintf(h_file, "/* Generated from %s */\n", filename);
    if(id_str)
 fprintf(h_file, "/* %s */\n", id_str);
    fprintf(h_file, "\n");
    fprintf(h_file, "#ifndef %s\n", fn);
    fprintf(h_file, "#define %s\n", fn);
    fprintf(h_file, "\n");
    fprintf(h_file, "struct et_list;\n");
    fprintf(h_file, "\n");
    fprintf(h_file,
     "void initialize_%s_error_table_r(struct et_list **);\n",
     name);
    fprintf(h_file, "\n");
    fprintf(h_file, "void initialize_%s_error_table(void);\n", name);
    fprintf(h_file, "#define init_%s_err_tbl initialize_%s_error_table\n",
     name, name);
    fprintf(h_file, "\n");
    fprintf(h_file, "typedef enum %s_error_number{\n", name);

    for(ec = codes; ec; ec = ec->next) {
 fprintf(h_file, "\t%s = %ld%s\n", ec->name, base_id + ec->number,
  (ec->next != ((void*)0)) ? "," : "");
    }

    fprintf(h_file, "} %s_error_number;\n", name);
    fprintf(h_file, "\n");
    fprintf(h_file, "#define ERROR_TABLE_BASE_%s %ld\n", name, base_id);
    fprintf(h_file, "\n");
    fprintf(h_file, "#define COM_ERR_BINDDOMAIN_%s \"heim_com_err%ld\"\n", name, base_id);
    fprintf(h_file, "\n");
    fprintf(h_file, "#endif /* %s */\n", fn);


    fclose(h_file);
    return 0;
}
