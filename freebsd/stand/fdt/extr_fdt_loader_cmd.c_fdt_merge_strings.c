
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bzero (char*,int) ;
 int command_errbuf ;
 scalar_t__ malloc (int) ;
 int sprintf (int ,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
fdt_merge_strings(int argc, char *argv[], int start, char **buffer)
{
 char *buf;
 int i, idx, sz;

 *buffer = ((void*)0);
 sz = 0;

 for (i = start; i < argc; i++)
  sz += strlen(argv[i]);


 sz += argc - start;

 buf = (char *)malloc(sizeof(char) * sz);
 if (buf == ((void*)0)) {
  sprintf(command_errbuf, "could not allocate space "
      "for string");
  return (1);
 }
 bzero(buf, sizeof(char) * sz);

 idx = 0;
 for (i = start, idx = 0; i < argc; i++) {
  strcpy(buf + idx, argv[i]);
  idx += strlen(argv[i]);
  buf[idx] = ' ';
  idx++;
 }
 buf[sz - 1] = '\0';
 *buffer = buf;
 return (0);
}
