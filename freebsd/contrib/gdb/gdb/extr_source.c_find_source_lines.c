
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {int nlines; int* line_charpos; TYPE_1__* objfile; int filename; } ;
struct stat {long st_mtime; scalar_t__ st_size; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int md; scalar_t__ obfd; } ;


 int SEEK_CUR ;
 long bfd_get_mtime (scalar_t__) ;
 int do_cleanups (struct cleanup*) ;
 scalar_t__ exec_bfd ;
 scalar_t__ fstat (int,struct stat*) ;
 int lseek (int,int ,int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 scalar_t__ myread (int,char*,int) ;
 int perror_with_name (int ) ;
 int warning (char*) ;
 int xfree ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xmmalloc (int ,int) ;
 scalar_t__ xmrealloc (int ,char*,int) ;

void
find_source_lines (struct symtab *s, int desc)
{
  struct stat st;
  char *data, *p, *end;
  int nlines = 0;
  int lines_allocated = 1000;
  int *line_charpos;
  long mtime = 0;
  int size;

  line_charpos = (int *) xmmalloc (s->objfile->md,
       lines_allocated * sizeof (int));
  if (fstat (desc, &st) < 0)
    perror_with_name (s->filename);

  if (s && s->objfile && s->objfile->obfd)
    mtime = bfd_get_mtime (s->objfile->obfd);
  else if (exec_bfd)
    mtime = bfd_get_mtime (exec_bfd);

  if (mtime && mtime < st.st_mtime)
    {
      warning ("Source file is more recent than executable.\n");
    }
  {
    struct cleanup *old_cleanups;



    size = (int) st.st_size;



    data = (char *) xmalloc (size);
    old_cleanups = make_cleanup (xfree, data);


    size = myread (desc, data, size);
    if (size < 0)
      perror_with_name (s->filename);
    end = data + size;
    p = data;
    line_charpos[0] = 0;
    nlines = 1;
    while (p != end)
      {
 if (*p++ == '\n'

     && p != end)
   {
     if (nlines == lines_allocated)
       {
  lines_allocated *= 2;
  line_charpos =
    (int *) xmrealloc (s->objfile->md, (char *) line_charpos,
         sizeof (int) * lines_allocated);
       }
     line_charpos[nlines++] = p - data;
   }
      }
    do_cleanups (old_cleanups);
  }

  s->nlines = nlines;
  s->line_charpos =
    (int *) xmrealloc (s->objfile->md, (char *) line_charpos,
         nlines * sizeof (int));

}
