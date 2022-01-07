
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_ssize_t ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;

__attribute__((used)) static xo_ssize_t
xo_write_to_file (void *opaque, const char *data)
{
    FILE *fp = (FILE *) opaque;

    return fprintf(fp, "%s", data);
}
