
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usershell {int dummy; } ;
typedef int buffer ;


 int printf (char*,...) ;
 int sdump_usershell (struct usershell*,char*,int) ;

__attribute__((used)) static void
dump_usershell(struct usershell *us)
{
 if (us != ((void*)0)) {
  char buffer[2048];
  sdump_usershell(us, buffer, sizeof(buffer));
  printf("%s\n", buffer);
 } else
  printf("(null)\n");
}
