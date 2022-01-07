
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 char* fgets (char*,int,int *) ;
 int memset (char*,int ,size_t) ;
 int pclose (int *) ;
 int * popen (char*,char*) ;
 char* strchr (char*,char) ;
 int strlcat (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
kvp_process_ipconfig_file(char *cmd,
    char *config_buf, size_t len,
    size_t element_size, int offset)
{
 char buf[256];
 char *p;
 char *x;
 FILE *file;




 file = popen(cmd, "r");
 if (file == ((void*)0)) {
  return;
 }

 if (offset == 0) {
  memset(config_buf, 0, len);
 }
 while ((p = fgets(buf, sizeof(buf), file)) != ((void*)0)) {
  if ((len - strlen(config_buf)) < (element_size + 1)) {
   break;
  }

  x = strchr(p, '\n');
  *x = '\0';
  strlcat(config_buf, p, len);
  strlcat(config_buf, ";", len);
 }
 pclose(file);
}
