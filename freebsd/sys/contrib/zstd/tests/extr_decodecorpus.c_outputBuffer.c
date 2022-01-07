
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int BYTE ;


 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const* const,char*) ;
 int fprintf (int ,char*,char const* const) ;
 scalar_t__ fwrite (int const*,int,size_t,int *) ;
 int perror (int *) ;
 int stderr ;
 int * stdout ;

__attribute__((used)) static void outputBuffer(const void* buf, size_t size, const char* const path)
{

    const BYTE* ip = (const BYTE*)buf;
    FILE* out;
    if (path) {
        out = fopen(path, "wb");
    } else {
        out = stdout;
    }
    if (!out) {
        fprintf(stderr, "Failed to open file at %s: ", path);
        perror(((void*)0));
        exit(1);
    }

    { size_t fsize = size;
        size_t written = 0;
        while (written < fsize) {
            written += fwrite(ip + written, 1, fsize - written, out);
            if (ferror(out)) {
                fprintf(stderr, "Failed to write to file at %s: ", path);
                perror(((void*)0));
                exit(1);
            }
        }
    }

    if (path) {
        fclose(out);
    }
}
