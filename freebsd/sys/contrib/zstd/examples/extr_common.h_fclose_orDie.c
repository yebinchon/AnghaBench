
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERROR_fclose ;
 int exit (int ) ;
 int fclose (int *) ;
 int perror (char*) ;

__attribute__((used)) static void fclose_orDie(FILE* file)
{
    if (!fclose(file)) { return; };

    perror("fclose");
    exit(ERROR_fclose);
}
