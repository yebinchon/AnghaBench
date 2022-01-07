
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 char* malloc (size_t) ;

char * os_readfile(const char *name, size_t *len)
{
 FILE *f;
 char *buf;

 f = fopen(name, "rb");
 if (f == ((void*)0))
  return ((void*)0);

 fseek(f, 0, SEEK_END);
 *len = ftell(f);
 fseek(f, 0, SEEK_SET);

 buf = malloc(*len);
 if (buf == ((void*)0)) {
  fclose(f);
  return ((void*)0);
 }

 fread(buf, 1, *len, f);
 fclose(f);

 return buf;
}
