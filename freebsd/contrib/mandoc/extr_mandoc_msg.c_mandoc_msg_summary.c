
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MANDOCLEVEL_OK ;
 int * fileptr ;
 int fprintf (int *,char*,char*,char*) ;
 char* getprogname () ;
 char** level_name ;
 size_t rc ;

void
mandoc_msg_summary(void)
{
 if (fileptr != ((void*)0) && rc != MANDOCLEVEL_OK)
  fprintf(fileptr,
      "%s: see above the output for %s messages\n",
      getprogname(), level_name[rc]);
}
