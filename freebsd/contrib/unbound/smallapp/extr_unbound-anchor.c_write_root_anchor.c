
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int FILE ;
typedef int BIO ;


 int BIO_get_mem_data (int *,char**) ;
 int BIO_seek (int *,int ) ;
 int FlushFileBuffers (int ) ;
 int _fileno (int *) ;
 scalar_t__ _get_osfhandle (int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fsync (int ) ;
 int fwrite (char*,size_t,int,int *) ;
 int printf (char*,...) ;
 char* strerror (scalar_t__) ;
 scalar_t__ verb ;

__attribute__((used)) static void
write_root_anchor(const char* root_anchor_file, BIO* ds)
{
 char* pp = ((void*)0);
 int len;
 FILE* out;
 (void)BIO_seek(ds, 0);
 len = BIO_get_mem_data(ds, &pp);
 if(!len || !pp) {
  if(verb) printf("out of memory\n");
  return;
 }
 out = fopen(root_anchor_file, "w");
 if(!out) {
  if(verb) printf("%s: %s\n", root_anchor_file, strerror(errno));
  return;
 }
 if(fwrite(pp, (size_t)len, 1, out) != 1) {
  if(verb) printf("failed to write all data to %s\n",
   root_anchor_file);
  if(verb && errno != 0) printf("%s\n", strerror(errno));
 }
 fflush(out);



 FlushFileBuffers((HANDLE)_get_osfhandle(_fileno(out)));

 fclose(out);
}
