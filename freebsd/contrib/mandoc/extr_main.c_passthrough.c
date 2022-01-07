
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 scalar_t__ EOF ;
 int MANDOCERR_FDOPEN ;
 int MANDOCERR_FFLUSH ;
 int MANDOCERR_GETLINE ;
 int MANDOCERR_WRITE ;
 int STDOUT_FILENO ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int ) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 scalar_t__ isspace (unsigned char) ;
 int mandoc_msg (int ,int,int ,char*,int ) ;
 int stdout ;
 scalar_t__ strcmp (char*,char const*) ;
 int strerror (int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
passthrough(int fd, int synopsis_only)
{
 const char synb[] = "S\bSY\bYN\bNO\bOP\bPS\bSI\bIS\bS";
 const char synr[] = "SYNOPSIS";

 FILE *stream;
 char *line, *cp;
 size_t linesz;
 ssize_t len, written;
 int lno, print;

 stream = ((void*)0);
 line = ((void*)0);
 linesz = 0;

 if (fflush(stdout) == EOF) {
  mandoc_msg(MANDOCERR_FFLUSH, 0, 0, "%s", strerror(errno));
  goto done;
 }
 if ((stream = fdopen(fd, "r")) == ((void*)0)) {
  close(fd);
  mandoc_msg(MANDOCERR_FDOPEN, 0, 0, "%s", strerror(errno));
  goto done;
 }

 lno = print = 0;
 while ((len = getline(&line, &linesz, stream)) != -1) {
  lno++;
  cp = line;
  if (synopsis_only) {
   if (print) {
    if ( ! isspace((unsigned char)*cp))
     goto done;
    while (isspace((unsigned char)*cp)) {
     cp++;
     len--;
    }
   } else {
    if (strcmp(cp, synb) == 0 ||
        strcmp(cp, synr) == 0)
     print = 1;
    continue;
   }
  }
  for (; len > 0; len -= written) {
   if ((written = write(STDOUT_FILENO, cp, len)) == -1) {
    mandoc_msg(MANDOCERR_WRITE, 0, 0,
        "%s", strerror(errno));
    goto done;
   }
  }
 }
 if (ferror(stream))
  mandoc_msg(MANDOCERR_GETLINE, lno, 0, "%s", strerror(errno));

done:
 free(line);
 if (stream != ((void*)0))
  fclose(stream);
}
