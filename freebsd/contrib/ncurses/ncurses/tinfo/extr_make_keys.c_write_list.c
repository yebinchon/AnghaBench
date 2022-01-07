
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int ) ;

__attribute__((used)) static void
write_list(FILE *ofp, const char **list)
{
    while (*list != 0)
 fprintf(ofp, "%s\n", *list++);
}
