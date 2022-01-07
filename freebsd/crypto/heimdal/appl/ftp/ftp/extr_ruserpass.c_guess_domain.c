
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {char* ai_canonname; struct addrinfo* ai_next; int ai_flags; } ;
typedef int hints ;


 int AI_CANONNAME ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 scalar_t__ gethostname (char*,size_t) ;
 int memset (struct addrinfo*,int ,int) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static char *
guess_domain (char *hostname_str, size_t sz)
{
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    char *dot;

    if (gethostname (hostname_str, sz) < 0) {
 strlcpy (hostname_str, "", sz);
 return "";
    }
    dot = strchr (hostname_str, '.');
    if (dot != ((void*)0))
 return dot + 1;

    memset (&hints, 0, sizeof(hints));
    hints.ai_flags = AI_CANONNAME;

    error = getaddrinfo (hostname_str, ((void*)0), &hints, &ai);
    if (error)
 return hostname_str;

    for (a = ai; a != ((void*)0); a = a->ai_next)
 if (a->ai_canonname != ((void*)0)) {
     strlcpy (hostname_str, ai->ai_canonname, sz);
     break;
 }
    freeaddrinfo (ai);
    dot = strchr (hostname_str, '.');
    if (dot != ((void*)0))
 return dot + 1;
    else
 return hostname_str;
}
