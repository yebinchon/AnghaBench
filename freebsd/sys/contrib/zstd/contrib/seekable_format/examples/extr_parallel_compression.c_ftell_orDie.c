
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 long ftell (int *) ;
 int perror (char*) ;

__attribute__((used)) static long int ftell_orDie(FILE* file)
{
    long int off = ftell(file);
    if (off != -1) return off;

    perror("ftell");
    exit(8);
}
