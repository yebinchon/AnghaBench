
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_flags; int ai_addrlen; int * ai_addr; int * ai_canonname; } ;
typedef int socklen_t ;


 int ATF_REQUIRE (int ) ;
 int addrinfo_read_snapshot_addr (char*,unsigned char*,int ) ;
 int * calloc (int,int ) ;
 int free_addrinfo (struct addrinfo*) ;
 int memset (struct addrinfo*,int ,int) ;
 int strcmp (char*,char*) ;
 int * strdup (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
addrinfo_read_snapshot_ai(struct addrinfo *ai, char *line)
{
 char *s, *ps, *ts;
 int i, rv, *pi;

 rv = 0;
 i = 0;
 ps = line;
 memset(ai, 0, sizeof(struct addrinfo));
 while ((s = strsep(&ps, " ")) != ((void*)0)) {
  switch (i) {
  case 0:
  case 1:
  case 2:
  case 3:
   pi = &ai->ai_flags + i;
   *pi = (int)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 4:
   ai->ai_addrlen = (socklen_t)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 5:
   if (strcmp(s, "(null)") != 0) {
    ai->ai_canonname = strdup(s);
    ATF_REQUIRE(ai->ai_canonname != ((void*)0));
   }
   break;
  case 6:
   if (strcmp(s, "(null)") != 0) {
    ai->ai_addr = calloc(1, ai->ai_addrlen);
    ATF_REQUIRE(ai->ai_addr != ((void*)0));
    rv = addrinfo_read_snapshot_addr(s,
        (unsigned char *)ai->ai_addr,
        ai->ai_addrlen);

    if (rv != 0)
     goto fin;
   }
   break;
  default:

   rv = -1;
   goto fin;
  }

  ++i;
 }

fin:
 if (i != 7 || rv != 0) {
  free_addrinfo(ai);
  ai = ((void*)0);
  return (-1);
 }

 return (0);
}
