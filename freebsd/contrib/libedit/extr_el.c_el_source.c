
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
typedef int ssize_t ;
typedef int elpath ;
struct TYPE_4__ {int el_scratch; } ;
typedef int FILE ;
typedef TYPE_1__ EditLine ;


 char* ct_decode_string (char*,int *) ;
 char* el_calloc (size_t,int) ;
 int el_free (char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 void* getenv (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ issetugid () ;
 scalar_t__ iswspace (char const) ;
 int parse_line (TYPE_1__*,char const*) ;
 int snprintf (char*,size_t,char*,char*,char const*) ;
 scalar_t__ strlen (char*) ;

int
el_source(EditLine *el, const char *fname)
{
 FILE *fp;
 size_t len;
 ssize_t slen;
 char *ptr;
 char *path = ((void*)0);
 const wchar_t *dptr;
 int error = 0;

 fp = ((void*)0);
 if (fname == ((void*)0)) {
  return -1;

 }
 if (fname[0] == '\0')
  return -1;

 if (fp == ((void*)0))
  fp = fopen(fname, "r");
 if (fp == ((void*)0)) {
  el_free(path);
  return -1;
 }

 ptr = ((void*)0);
 len = 0;
 while ((slen = getline(&ptr, &len, fp)) != -1) {
  if (*ptr == '\n')
   continue;
  if (slen > 0 && ptr[--slen] == '\n')
   ptr[slen] = '\0';

  dptr = ct_decode_string(ptr, &el->el_scratch);
  if (!dptr)
   continue;

  while (*dptr != '\0' && iswspace(*dptr))
   dptr++;
  if (*dptr == '#')
   continue;
  if ((error = parse_line(el, dptr)) == -1)
   break;
 }
 free(ptr);

 el_free(path);
 (void) fclose(fp);
 return error;
}
