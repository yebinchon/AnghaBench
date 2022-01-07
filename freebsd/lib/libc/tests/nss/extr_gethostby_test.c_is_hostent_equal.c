
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char** h_addr_list; int h_addrtype; int h_length; int h_name; } ;
struct addrinfo {int dummy; } ;


 int check_addrinfo_for_addr (struct addrinfo*,char*,int ,int ) ;
 int check_addrinfo_for_name (struct addrinfo*,int ) ;
 int printf (char*) ;

__attribute__((used)) static int
is_hostent_equal(struct hostent *he, struct addrinfo *ai)
{
 char **cp;
 int rv;





 rv = check_addrinfo_for_name(ai, he->h_name);
 if (rv != 0) {
  printf("not equal - he->h_name couldn't be found\n");
  return (rv);
 }

 for (cp = he->h_addr_list; *cp; ++cp) {
  rv = check_addrinfo_for_addr(ai, *cp, he->h_length,
   he->h_addrtype);
  if (rv != 0) {
   printf("not equal - one of he->h_addr_list couldn't be found\n");
   return (rv);
  }
 }





 return (0);
}
