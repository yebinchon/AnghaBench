
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {char* fullname; char const* dirname; char const* filename; TYPE_1__* objfile; } ;
struct TYPE_2__ {int md; } ;


 char const DIRNAME_SEPARATOR ;
 int OPEN_MODE ;
 scalar_t__ alloca (scalar_t__) ;
 size_t cdir_len ;
 char* lbasename (char const*) ;
 char* mstrsave (int ,char*) ;
 int open (char*,int ) ;
 int openp (char*,int ,char const*,int ,int ,char**) ;
 char const* source_path ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ strstr (char const*,char*) ;
 int xfree (char*) ;
 int xmfree (int ,char*) ;

int
open_source_file (struct symtab *s)
{
  char *path = source_path;
  const char *p;
  int result;
  char *fullname;


  if (s->fullname)
    {
      result = open (s->fullname, OPEN_MODE);
      if (result >= 0)
 return result;

      xmfree (s->objfile->md, s->fullname);
      s->fullname = ((void*)0);
    }

  if (s->dirname != ((void*)0))
    {




      p = (char *) strstr (source_path, "$cdir");
      if (p && (p == path || p[-1] == DIRNAME_SEPARATOR)
   && (p[5] == DIRNAME_SEPARATOR || p[5] == '\0'))
 {
   int len;

   path = (char *)
     alloca (strlen (source_path) + 1 + strlen (s->dirname) + 1);
   len = p - source_path;
   strncpy (path, source_path, len);
   strcpy (path + len, s->dirname);
   strcat (path + len, source_path + len + 5);
 }
    }

  result = openp (path, 0, s->filename, OPEN_MODE, 0, &s->fullname);
  if (result < 0)
    {

      p = lbasename (s->filename);
      if (p != s->filename)
 result = openp (path, 0, p, OPEN_MODE, 0, &s->fullname);
    }

  if (result >= 0)
    {
      fullname = s->fullname;
      s->fullname = mstrsave (s->objfile->md, s->fullname);
      xfree (fullname);
    }
  return result;
}
