
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int addrinfo_test_correctness (struct addrinfo*,int *) ;
 int clone_addrinfo (struct addrinfo*,struct addrinfo*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,int *,struct addrinfo**) ;
 int hints ;
 int memset (struct addrinfo*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
addrinfo_read_hostlist_func(struct addrinfo *ai, char *line)
{
 struct addrinfo *result;
 int rv;

 printf("resolving %s: ", line);
 rv = getaddrinfo(line, ((void*)0), &hints, &result);
 if (rv == 0) {
  printf("found\n");

  rv = addrinfo_test_correctness(result, ((void*)0));
  if (rv != 0) {
   freeaddrinfo(result);
   result = ((void*)0);
   return (rv);
  }

  clone_addrinfo(ai, result);
  freeaddrinfo(result);
  result = ((void*)0);
 } else {
  printf("not found\n");

   memset(ai, 0, sizeof(struct addrinfo));
 }
 return (0);
}
