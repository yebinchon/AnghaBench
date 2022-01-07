
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int FILE ;


 int exit (int) ;
 int fclose (int * const) ;
 scalar_t__ ferror (int * const) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ fwrite (int const*,int,size_t,int * const) ;
 int stderr ;

__attribute__((used)) static void write_file(const char *path, const u8 *ptr, size_t size)
{
    FILE* const f = fopen(path, "wb");
    if (!f) {
        fprintf(stderr, "failed to open file %s \n", path);
        exit(1);
    }

    size_t written = 0;
    while (written < size) {
        written += fwrite(ptr+written, 1, size, f);
        if (ferror(f)) {
            fprintf(stderr, "error while writing file %s\n", path);
            exit(1);
    } }

    fclose(f);
}
