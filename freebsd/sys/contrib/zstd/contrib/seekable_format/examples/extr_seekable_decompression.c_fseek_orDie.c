
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fflush (int *) ;
 int fseek (int *,long,int) ;
 int perror (char*) ;

__attribute__((used)) static void fseek_orDie(FILE* file, long int offset, int origin) {
    if (!fseek(file, offset, origin)) {
        if (!fflush(file)) return;
    }

    perror("fseek");
    exit(7);
}
