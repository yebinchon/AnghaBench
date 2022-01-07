
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_meta {char* title; char* name; char* msec; char* vol; char* arch; char* os; char* date; } ;


 int printf (char*,char*) ;

__attribute__((used)) static void
print_meta(const struct roff_meta *meta)
{
 if (meta->title != ((void*)0))
  printf("title = \"%s\"\n", meta->title);
 if (meta->name != ((void*)0))
  printf("name  = \"%s\"\n", meta->name);
 if (meta->msec != ((void*)0))
  printf("sec   = \"%s\"\n", meta->msec);
 if (meta->vol != ((void*)0))
  printf("vol   = \"%s\"\n", meta->vol);
 if (meta->arch != ((void*)0))
  printf("arch  = \"%s\"\n", meta->arch);
 if (meta->os != ((void*)0))
  printf("os    = \"%s\"\n", meta->os);
 if (meta->date != ((void*)0))
  printf("date  = \"%s\"\n", meta->date);
}
