
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
typedef int FILE ;


 int UUDECODE (int ) ;
 int VALID_UUDECODE (char) ;
 int assert (int ) ;
 int failure (char*,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fputc (int,int *) ;
 scalar_t__ memcmp (char*,char*,int) ;
 char* refdir ;
 int sprintf (char*,char*,char*,char const*) ;

void
extract_reference_file(const char *name)
{
 char buff[1024];
 FILE *in, *out;

 sprintf(buff, "%s/%s.uu", refdir, name);
 in = fopen(buff, "r");
 failure("Couldn't open reference file %s", buff);
 assert(in != ((void*)0));
 if (in == ((void*)0))
  return;

 for (;;) {
  if (fgets(buff, sizeof(buff), in) == ((void*)0)) {

   return;
  }
  if (memcmp(buff, "begin ", 6) == 0)
   break;
 }

 out = fopen(name, "wb");
 while (fgets(buff, sizeof(buff), in) != ((void*)0)) {
  char *p = buff;
  int bytes;

  if (memcmp(buff, "end", 3) == 0)
   break;

  bytes = UUDECODE(*p++);
  while (bytes > 0) {
   int n = 0;

   if (bytes > 0) {
    assert(VALID_UUDECODE(p[0]));
    assert(VALID_UUDECODE(p[1]));
    n = UUDECODE(*p++) << 18;
    n |= UUDECODE(*p++) << 12;
    fputc(n >> 16, out);
    --bytes;
   }
   if (bytes > 0) {
    assert(VALID_UUDECODE(p[0]));
    n |= UUDECODE(*p++) << 6;
    fputc((n >> 8) & 0xFF, out);
    --bytes;
   }
   if (bytes > 0) {
    assert(VALID_UUDECODE(p[0]));
    n |= UUDECODE(*p++);
    fputc(n & 0xFF, out);
    --bytes;
   }
  }
 }
 fclose(out);
 fclose(in);
}
