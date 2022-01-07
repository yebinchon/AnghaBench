
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 int assert (int ) ;
 int failure (char*,char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (char*,int,int,int *) ;
 size_t fwrite (char*,int,size_t,int *) ;
 int logprintf (char*) ;
 char* refdir ;
 int sprintf (char*,char*,char*,char const*) ;

void
copy_reference_file(const char *name)
{
 char buff[1024];
 FILE *in, *out;
 size_t rbytes;

 sprintf(buff, "%s/%s", refdir, name);
 in = fopen(buff, "rb");
 failure("Couldn't open reference file %s", buff);
 assert(in != ((void*)0));
 if (in == ((void*)0))
  return;


 out = fopen(name, "wb");
 while ((rbytes = fread(buff, 1, sizeof(buff), in)) > 0) {
  if (fwrite(buff, 1, rbytes, out) != rbytes) {
   logprintf("Error: fwrite\n");
   break;
  }
 }
 fclose(out);
 fclose(in);
}
