
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int FILE ;


 int SEEK_END ;
 int exit (int) ;
 int fclose (int * const) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 size_t fread (int *,int,size_t const,int * const) ;
 int fseek (int * const,long,int ) ;
 int ftell (int * const) ;
 int * malloc (size_t const) ;
 int rewind (int * const) ;
 int stderr ;

__attribute__((used)) static size_t read_file(const char *path, u8 **ptr)
{
    FILE* const f = fopen(path, "rb");
    if (!f) {
        fprintf(stderr, "failed to open file %s \n", path);
        exit(1);
    }

    fseek(f, 0L, SEEK_END);
    size_t const size = (size_t)ftell(f);
    rewind(f);

    *ptr = malloc(size);
    if (!ptr) {
        fprintf(stderr, "failed to allocate memory to hold %s \n", path);
        exit(1);
    }

    size_t const read = fread(*ptr, 1, size, f);
    if (read != size) {
        fprintf(stderr, "error while reading file %s \n", path);
        exit(1);
    }

    fclose(f);

    return read;
}
