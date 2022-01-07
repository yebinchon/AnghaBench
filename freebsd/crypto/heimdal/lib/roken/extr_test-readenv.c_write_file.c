
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int err (int,char*) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (char const*,int,scalar_t__,int *) ;
 scalar_t__ strlen (char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
write_file(const char *fn, const char *s)
{
    FILE *f;
    f = fopen(fn, "w");
    if(f == ((void*)0)) {
 unlink(fn);
 err(1, "fopen");
    }
    if(fwrite(s, 1, strlen(s), f) != strlen(s))
 err(1, "short write");
    if(fclose(f) != 0) {
 unlink(fn);
 err(1, "fclose");
    }
}
