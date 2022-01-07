
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (void*,int,size_t,int *) ;
 int logprintf (char*,char const*) ;

void
dumpfile(const char *filename, void *data, size_t len)
{
 ssize_t bytes_written;
 FILE *f;

 f = fopen(filename, "wb");
 if (f == ((void*)0)) {
  logprintf("Can't open file %s for writing\n", filename);
  return;
 }
 bytes_written = fwrite(data, 1, len, f);
 if (bytes_written < (ssize_t)len)
  logprintf("Can't write file %s\n", filename);
 fclose(f);
}
