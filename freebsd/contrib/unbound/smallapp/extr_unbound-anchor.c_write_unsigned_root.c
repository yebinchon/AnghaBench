
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int HANDLE ;
typedef int FILE ;


 int FlushFileBuffers (int ) ;
 int _fileno (int *) ;
 scalar_t__ _get_osfhandle (int ) ;
 char* ctime (int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fprintf (int *,char*,char*) ;
 int fsync (int ) ;
 int printf (char*,char const*,...) ;
 char* strerror (scalar_t__) ;
 int time (int *) ;
 scalar_t__ verb ;

__attribute__((used)) static void
write_unsigned_root(const char* root_anchor_file)
{
 FILE* out;
 time_t now = time(((void*)0));
 out = fopen(root_anchor_file, "w");
 if(!out) {
  if(verb) printf("%s: %s\n", root_anchor_file, strerror(errno));
  return;
 }
 if(fprintf(out, "; autotrust trust anchor file\n"
  ";;REVOKED\n"
  ";;id: . 1\n"
  "; This file was written by unbound-anchor on %s"
  "; It indicates that the root does not use DNSSEC\n"
  "; to restart DNSSEC overwrite this file with a\n"
  "; valid trustanchor or (empty-it and run unbound-anchor)\n"
  , ctime(&now)) < 0) {
  if(verb) printf("failed to write 'unsigned' to %s\n",
   root_anchor_file);
  if(verb && errno != 0) printf("%s\n", strerror(errno));
 }
 fflush(out);



 FlushFileBuffers((HANDLE)_get_osfhandle(_fileno(out)));

 fclose(out);
}
