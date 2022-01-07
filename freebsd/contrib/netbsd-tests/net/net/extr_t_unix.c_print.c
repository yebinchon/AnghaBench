
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_family; int sun_len; int* sun_path; } ;
typedef size_t socklen_t ;


 size_t OF ;
 int printf (char*,...) ;

__attribute__((used)) static void
print(const char *msg, struct sockaddr_un *addr, socklen_t len)
{
 size_t i;

 printf("%s: client socket length: %zu\n", msg, (size_t)len);
 printf("%s: client family %d\n", msg, addr->sun_family);



 printf("%s: socket name: ", msg);
 for (i = 0; i < len - OF; i++) {
  int ch = addr->sun_path[i];
  if (ch < ' ' || '~' < ch)
   printf("\\x%02x", ch);
  else
   printf("%c", ch);
 }
 printf("\n");
}
