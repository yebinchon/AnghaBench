
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fg_flags; char* fg_name; struct TYPE_3__* fg_next; } ;
typedef TYPE_1__ frgroup_t ;


 int FR_INQUE ;
 int cfile ;
 int fprintf (int ,char*,...) ;
 TYPE_1__* groups ;

__attribute__((used)) static void emittail()
{
 frgroup_t *g;

 fprintf(cfile, "\nint ipfrule_add()\n{\n	int err;\n\n");




 for (g = groups; g != ((void*)0); g = g->fg_next)
  fprintf(cfile, "	err = ipfrule_add_%s_%s();\n	if (err != 0)\n		return err;\n",



   (g->fg_flags & FR_INQUE) ? "in" : "out", g->fg_name);
 fprintf(cfile, "	return 0;\n");

 fprintf(cfile, "}\n\n");


 fprintf(cfile, "\nint ipfrule_remove()\n{\n	int err;\n\n");




 for (g = groups; g != ((void*)0); g = g->fg_next)
  fprintf(cfile, "	err = ipfrule_remove_%s_%s();\n	if (err != 0)\n		return err;\n",



   (g->fg_flags & FR_INQUE) ? "in" : "out", g->fg_name);
 fprintf(cfile, "	return 0;\n");

 fprintf(cfile, "}\n");
}
