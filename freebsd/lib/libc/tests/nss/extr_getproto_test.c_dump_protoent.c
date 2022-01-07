
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protoent {int dummy; } ;
typedef int buffer ;


 int printf (char*,...) ;
 int sdump_protoent (struct protoent*,char*,int) ;

__attribute__((used)) static void
dump_protoent(struct protoent *result)
{
 if (result != ((void*)0)) {
  char buffer[1024];
  sdump_protoent(result, buffer, sizeof(buffer));
  printf("%s\n", buffer);
 } else
  printf("(null)\n");
}
