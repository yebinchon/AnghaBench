
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ParseOption (char*,char*) ;
 int err (int,char*,char const*) ;
 int errx (int,char*) ;
 int fclose (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;

void ReadConfigFile (const char* fileName)
{
 FILE* file;
 char *buf;
 size_t len;
 char *ptr, *p;
 char* option;

 file = fopen (fileName, "r");
 if (!file)
  err(1, "cannot open config file %s", fileName);

 while ((buf = fgetln(file, &len)) != ((void*)0)) {
  if (buf[len - 1] == '\n')
   buf[len - 1] = '\0';
  else
   errx(1, "config file format error: "
    "last line should end with newline");




  if ((ptr = strchr(buf, '#')))
   *ptr = '\0';
  for (ptr = buf; isspace(*ptr); ++ptr)
   continue;
  if (*ptr == '\0')
   continue;
  for (p = strchr(buf, '\0'); isspace(*--p);)
   continue;
  *++p = '\0';




  option = ptr;
  while (*ptr && !isspace (*ptr))
   ++ptr;

  if (*ptr != '\0') {

   *ptr = '\0';
   ++ptr;
  }



  while (*ptr && isspace (*ptr))
   ++ptr;

  ParseOption (option, *ptr ? ptr : ((void*)0));
 }

 fclose (file);
}
