
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 int fail (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 size_t fread (char*,int,int,int *) ;
 int pass () ;
 int rewind (int *) ;
 int skip (int) ;
 scalar_t__ strcmp (char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
fprintf__simple_string(void)
{
 FILE *file;
 char buffer[128];
 size_t length;
 const char *contents = "This is a message\n";

 file = fopen("test.txt", "w+");
 if (fprintf(file, "%s", contents) <= 0) {
  fail("fprintf failed to write to file");
  skip(2);
  return;
 }
 pass();
 rewind(file);
 length = fread(buffer, 1, sizeof(buffer) - 1, file);
 if (length != strlen(contents)) {
  fail("fread failed");
  skip(1);
  return;
 }
 pass();
 buffer[length] = '\0';
 fclose(file);

 if (strcmp(buffer, contents) != 0)
  fail("Written and read data differ");
 else
  pass();




}
