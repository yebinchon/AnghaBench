
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_mem; } ;


 int __gr_scan (char*,struct group*) ;
 int free (char*) ;
 struct group* gr_dup (struct group*) ;
 char* strdup (char const*) ;

struct group *
gr_scan(const char *line)
{
 struct group gr;
 char *line_copy;
 struct group *new_gr;

 if ((line_copy = strdup(line)) == ((void*)0))
  return (((void*)0));
 if (!__gr_scan(line_copy, &gr)) {
  free(line_copy);
  return (((void*)0));
 }
 new_gr = gr_dup(&gr);
 free(line_copy);
 if (gr.gr_mem != ((void*)0))
  free(gr.gr_mem);

 return (new_gr);
}
