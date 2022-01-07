
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdstat {char* name; } ;


 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
bsdstat_collect(struct bsdstat *sf)
{
 fprintf(stderr, "%s: don't know how to collect data\n", sf->name);
}
