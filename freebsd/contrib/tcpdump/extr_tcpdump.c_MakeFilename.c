
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;


 scalar_t__ Gflag ;
 int Gflag_time ;
 scalar_t__ PATH_MAX ;
 int error (char*,...) ;
 int free (char*) ;
 struct tm* localtime (int *) ;
 char* malloc (scalar_t__) ;
 scalar_t__ snprintf (char*,scalar_t__,char*,char*,int,int) ;
 int strftime (char*,scalar_t__,char*,struct tm*) ;
 int strncpy (char*,char*,scalar_t__) ;

__attribute__((used)) static void
MakeFilename(char *buffer, char *orig_name, int cnt, int max_chars)
{
        char *filename = malloc(PATH_MAX + 1);
        if (filename == ((void*)0))
            error("Makefilename: malloc");


        if (Gflag != 0) {
          struct tm *local_tm;


          if ((local_tm = localtime(&Gflag_time)) == ((void*)0)) {
                  error("MakeTimedFilename: localtime");
          }




          strftime(filename, PATH_MAX, orig_name, local_tm);
        } else {
          strncpy(filename, orig_name, PATH_MAX);
        }

 if (cnt == 0 && max_chars == 0)
  strncpy(buffer, filename, PATH_MAX + 1);
 else
  if (snprintf(buffer, PATH_MAX + 1, "%s%0*d", filename, max_chars, cnt) > PATH_MAX)

                  error("too many output files or filename is too long (> %d)", PATH_MAX);
        free(filename);
}
