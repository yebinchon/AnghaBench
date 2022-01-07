
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int buffer ;


 int printf (char*,...) ;
 int sdump_hostent (struct hostent*,char*,int) ;

__attribute__((used)) static void
dump_hostent(struct hostent *result)
{
 if (result != ((void*)0)) {
  char buffer[1024];
  sdump_hostent(result, buffer, sizeof(buffer));
  printf("%s\n", buffer);
 } else
  printf("(null)\n");
}
