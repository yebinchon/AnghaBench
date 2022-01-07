
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,int,char const*) ;
 char* get_field (char**,size_t*,int*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int perror (char*) ;
 int stderr ;

int
get_str(char **line, size_t *len, char **v, const char *name, int minlen,
    const char *filename, int lineno)
{
 int fieldlen;
 char *ptr;

 ptr = get_field(line, len, &fieldlen);
 if (ptr == ((void*)0))
  return (1);
 if (fieldlen < minlen) {
  fprintf(stderr, "%s:%d too short %s\n", filename, lineno, name);
  return (1);
 }
 if ((*v = malloc(fieldlen + 1)) == ((void*)0)) {
  perror("malloc()");
  return (1);
 }
 memcpy(*v, ptr, fieldlen);
 (*v)[fieldlen] = '\0';

 return (0);
}
