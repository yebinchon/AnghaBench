
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char kod_entry ;
struct addrinfo {int dummy; } ;


 int TRACE (int,char*) ;
 char* addrinfo_to_str (struct addrinfo const*) ;
 int free (char*) ;
 int printf (char*,char*) ;
 scalar_t__ search_entry (char*,char**) ;

int
check_kod(
 const struct addrinfo * ai
 )
{
 char *hostname;
 struct kod_entry *reason;


 hostname = addrinfo_to_str(ai);
 TRACE(2, ("check_kod: checking <%s>\n", hostname));
 if (search_entry(hostname, &reason)) {
  printf("prior KoD for %s, skipping.\n",
   hostname);
  free(reason);
  free(hostname);

  return 1;
 }
 free(hostname);

 return 0;
}
