
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int WORDBUF_SIZE ;
 char* emalloc (int) ;
 char** erealloc (char**,unsigned int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 unsigned int max (unsigned int,unsigned int) ;
 int memmove (char*,char*,size_t) ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static unsigned
read_words (const char *filename, char ***ret_w)
{
    unsigned n, alloc;
    FILE *f;
    char buf[256];
    char **w = ((void*)0);
    char *wbuf = ((void*)0), *wptr = ((void*)0), *wend = ((void*)0);

    f = fopen (filename, "r");
    if (f == ((void*)0))
 err (1, "cannot open %s", filename);
    alloc = n = 0;
    while (fgets (buf, sizeof(buf), f) != ((void*)0)) {
 size_t len;

 buf[strcspn(buf, "\r\n")] = '\0';
 if (n >= alloc) {
     alloc = max(alloc + 16, alloc * 2);
     w = erealloc (w, alloc * sizeof(char **));
 }
 len = strlen(buf);
 if (wptr + len + 1 >= wend) {
     wptr = wbuf = emalloc (WORDBUF_SIZE);
     wend = wbuf + WORDBUF_SIZE;
 }
 memmove (wptr, buf, len + 1);
 w[n++] = wptr;
 wptr += len + 1;
    }
    if (n == 0)
 errx(1, "%s is an empty file, no words to try", filename);
    *ret_w = w;
    fclose(f);
    return n;
}
