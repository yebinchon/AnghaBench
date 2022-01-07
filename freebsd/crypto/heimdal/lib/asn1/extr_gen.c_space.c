
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int headerfile ;

__attribute__((used)) static void
space(int level)
{
    while(level-- > 0)
 fprintf(headerfile, "  ");
}
