
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int buffer ;


 int printf (char*,...) ;
 int sdump_group (struct group*,char*,int) ;

__attribute__((used)) static void
dump_group(struct group *result)
{
 if (result != ((void*)0)) {
  char buffer[1024];
  sdump_group(result, buffer, sizeof(buffer));
  printf("%s\n", buffer);
 } else
  printf("(null)\n");
}
