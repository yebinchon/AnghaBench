
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMFILE ;
 int EROFS ;
 int errno ;
 char* files_start ;
 char* sourcebeg ;
 int sourcedesc ;
 int sourceleft ;
 char* sourceptr ;
 int sourcesize ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

open (char *filename, int modes)
{
  char *next;

  if (modes)
    {
      errno = EROFS;
      return -1;
    }

  if (sourceptr)
    {
      errno = EMFILE;
      return -1;
    }

  for (next = files_start; *(int *) next; next += *(int *) next)
    {
      if (!strcmp (next + 4, filename))
 {
   sourcebeg = next + 4 + strlen (next + 4) + 1;
   sourcebeg = (char *) (((int) sourcebeg + 3) & (-4));
   sourceptr = sourcebeg;
   sourcesize = next + *(int *) next - sourceptr;
   sourceleft = sourcesize;
   return sourcedesc;
 }
    }
  return 0;
}
