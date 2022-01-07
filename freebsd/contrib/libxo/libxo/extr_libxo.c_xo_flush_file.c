
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fflush (int *) ;

__attribute__((used)) static int
xo_flush_file (void *opaque)
{
    FILE *fp = (FILE *) opaque;

    return fflush(fp);
}
