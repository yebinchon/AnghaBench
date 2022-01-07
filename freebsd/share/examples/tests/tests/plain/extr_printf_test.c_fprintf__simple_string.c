
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int err (int ,char*) ;
 int errx (int ,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 size_t fread (char*,int,int,int *) ;
 int rewind (int *) ;
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
 if (fprintf(file, "%s", contents) <= 0)
  err(EXIT_FAILURE, "fprintf failed to write to file");
 rewind(file);
 length = fread(buffer, 1, sizeof(buffer) - 1, file);
 if (length != strlen(contents))
  err(EXIT_FAILURE, "fread failed");
 buffer[length] = '\0';
 fclose(file);

 if (strcmp(buffer, contents) != 0)
  errx(EXIT_FAILURE, "Written and read data differ");




}
