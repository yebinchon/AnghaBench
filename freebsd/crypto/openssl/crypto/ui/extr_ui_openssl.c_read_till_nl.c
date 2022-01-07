
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SIZE ;
 int fgets (char*,int ,int *) ;
 int * strchr (char*,char) ;

__attribute__((used)) static int read_till_nl(FILE *in)
{

    char buf[4 + 1];

    do {
        if (!fgets(buf, 4, in))
            return 0;
    } while (strchr(buf, '\n') == ((void*)0));
    return 1;
}
