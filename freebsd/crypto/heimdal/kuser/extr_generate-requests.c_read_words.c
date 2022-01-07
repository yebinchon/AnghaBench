
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 char** erealloc (char**,unsigned int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 char* estrdup (char*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static unsigned
read_words (const char *filename, char ***ret_w)
{
    unsigned n, alloc;
    FILE *f;
    char buf[256];
    char **w = ((void*)0);

    f = fopen (filename, "r");
    if (f == ((void*)0))
 err (1, "cannot open %s", filename);
    alloc = n = 0;
    while (fgets (buf, sizeof(buf), f) != ((void*)0)) {
 buf[strcspn(buf, "\r\n")] = '\0';
 if (n >= alloc) {
     alloc += 16;
     w = erealloc (w, alloc * sizeof(char **));
 }
 w[n++] = estrdup (buf);
    }
    *ret_w = w;
    if (n == 0)
 errx(1, "%s is an empty file, no words to try", filename);
    fclose(f);
    return n;
}
