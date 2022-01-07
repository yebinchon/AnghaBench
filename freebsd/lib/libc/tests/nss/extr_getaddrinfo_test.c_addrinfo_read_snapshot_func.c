
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_next; } ;


 int ATF_REQUIRE (int ) ;
 int addrinfo_read_snapshot_ai (struct addrinfo*,char*) ;
 struct addrinfo* calloc (int,int) ;
 int free_addrinfo (struct addrinfo*) ;
 int printf (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
addrinfo_read_snapshot_func(struct addrinfo *ai, char *line)
{
 struct addrinfo *ai2;
 char *s, *ps;
 int rv;

 printf("1 line read from snapshot:\n%s\n", line);

 rv = 0;
 ps = line;

 s = strsep(&ps, ":");
 if (s == ((void*)0))
  return (-1);

 rv = addrinfo_read_snapshot_ai(ai, s);
 if (rv != 0)
  return (-1);

 ai2 = ai;
 while ((s = strsep(&ps, ":")) != ((void*)0)) {
  ai2->ai_next = calloc(1, sizeof(struct addrinfo));
  ATF_REQUIRE(ai2->ai_next != ((void*)0));

  rv = addrinfo_read_snapshot_ai(ai2->ai_next, s);
  if (rv != 0) {
   free_addrinfo(ai);
   ai = ((void*)0);
   return (-1);
  }

  ai2 = ai2->ai_next;
 }

 return (0);
}
