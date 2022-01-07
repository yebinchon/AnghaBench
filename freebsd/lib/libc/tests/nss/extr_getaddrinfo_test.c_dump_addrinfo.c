
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;
typedef int buffer ;


 int printf (char*,...) ;
 int sdump_addrinfo (struct addrinfo*,char*,int) ;

void
dump_addrinfo(struct addrinfo *result)
{
 if (result != ((void*)0)) {
  char buffer[2048];
  sdump_addrinfo(result, buffer, sizeof(buffer));
  printf("%s\n", buffer);
 } else
  printf("(null)\n");
}
