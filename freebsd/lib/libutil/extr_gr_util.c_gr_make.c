
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct group {char const** gr_mem; scalar_t__ gr_gid; int gr_passwd; int gr_name; } ;


 char* malloc (size_t) ;
 int snprintf (int *,int ,char const*,int ,int ,int ) ;
 int sprintf (char*,char const*,int ,int ,int ) ;
 char* stpcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *
gr_make(const struct group *gr)
{
 const char *group_line_format = "%s:%s:%ju:";
 const char *sep;
 char *line;
 char *p;
 size_t line_size;
 int ndx;


 line_size = snprintf(((void*)0), 0, group_line_format, gr->gr_name,
     gr->gr_passwd, (uintmax_t)gr->gr_gid) + 1;
 if (gr->gr_mem != ((void*)0)) {
  for (ndx = 0; gr->gr_mem[ndx] != ((void*)0); ndx++)
   line_size += strlen(gr->gr_mem[ndx]) + 1;
  if (ndx > 0)
   line_size--;
 }


 if ((line = p = malloc(line_size)) == ((void*)0))
  return (((void*)0));
 p += sprintf(p, group_line_format, gr->gr_name, gr->gr_passwd,
     (uintmax_t)gr->gr_gid);
 if (gr->gr_mem != ((void*)0)) {
  sep = "";
  for (ndx = 0; gr->gr_mem[ndx] != ((void*)0); ndx++) {
   p = stpcpy(p, sep);
   p = stpcpy(p, gr->gr_mem[ndx]);
   sep = ",";
  }
 }

 return (line);
}
