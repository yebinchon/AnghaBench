
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int longname ;
typedef int filename ;
typedef int buf ;
typedef int FILE ;


 int err (int,char*,char*) ;
 int errx (int,char*,char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ test (char*,unsigned int) ;

int
main(int argc, char **argv)
{
    FILE *f;
    char buf[1024];
    char filename[256] = "NormalizationTest.txt";
    unsigned failures = 0;
    unsigned lineno = 0;

    if (argc > 2)
 errx(1, "usage: %s [file]", argv[0]);
    else if (argc == 2)
 strlcpy(filename, argv[1], sizeof(filename));

    f = fopen(filename, "r");
    if (f == ((void*)0)) {
 const char *srcdir = getenv("srcdir");
 if (srcdir != ((void*)0)) {
     char longname[256];
     snprintf(longname, sizeof(longname), "%s/%s", srcdir, filename);
     f = fopen(longname, "r");
 }
 if (f == ((void*)0))
     err(1, "open %s", filename);
    }
    while (fgets(buf, sizeof(buf), f) != ((void*)0)) {
 lineno++;
 if (buf[0] == '#')
     continue;
 if (buf[0] == '@') {
     continue;
 }
 failures += test(buf, lineno);
    }
    fclose(f);
    return failures != 0;
}
