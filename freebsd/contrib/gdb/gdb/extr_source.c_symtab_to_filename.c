
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {char* fullname; char* filename; } ;


 int close (int) ;
 int open_source_file (struct symtab*) ;

char *
symtab_to_filename (struct symtab *s)
{
  int fd;

  if (!s)
    return ((void*)0);



  if (s->fullname)
    return s->fullname;



  fd = open_source_file (s);
  if (fd < 0)
    return s->filename;



  close (fd);
  return s->fullname;
}
