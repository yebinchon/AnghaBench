
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char** optv; int flag; int optc; struct TYPE_5__* next; TYPE_1__* module; } ;
typedef TYPE_2__ pam_chain_t ;
struct TYPE_4__ {char* path; } ;


 int PAM_BUF_ERR ;
 int PAM_SUCCESS ;
 int free (char*) ;
 scalar_t__ isprint (unsigned char) ;
 int printf (char*,...) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;

int
openpam_dump_chain(const char *name, pam_chain_t *chain)
{
 char *modname, **opt, *p;
 int i;

 for (i = 0; chain != ((void*)0); ++i, chain = chain->next) {

  modname = strrchr(chain->module->path, '/');
  modname = strdup(modname ? modname : chain->module->path);
  if (modname == ((void*)0))
   return (PAM_BUF_ERR);
  for (p = modname; *p && *p != '.'; ++p)
                 ;
  *p = '\0';
  printf("extern struct pam_module %s_pam_module;\n", modname);

  printf("static char *%s_%d_optv[] = {\n", name, i);
  for (opt = chain->optv; *opt; ++opt) {
   printf("\t\"");
   for (p = *opt; *p; ++p) {
    if (isprint((unsigned char)*p) && *p != '"')
     printf("%c", *p);
    else
     printf("\\x%02x", (unsigned char)*p);
   }
   printf("\",\n");
  }
  printf("\tNULL,\n");
  printf("};\n");

  if (chain->next != ((void*)0))
   printf("static pam_chain_t %s_%d;\n", name, i + 1);

  printf("static pam_chain_t %s_%d = {\n", name, i);
  printf("\t.module = &%s_pam_module,\n", modname);
  printf("\t.flag = 0x%08x,\n", chain->flag);
  printf("\t.optc = %d,\n", chain->optc);
  printf("\t.optv = %s_%d_optv,\n", name, i);
  if (chain->next)
   printf("\t.next = &%s_%d,\n", name, i + 1);
  else
   printf("\t.next = NULL,\n");
  printf("};\n");
  free(modname);
 }
 return (PAM_SUCCESS);
}
