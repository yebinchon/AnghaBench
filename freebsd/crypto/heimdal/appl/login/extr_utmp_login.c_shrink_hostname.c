
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; } ;
typedef int local_hostname ;


 int MaxHostNameLen ;
 int NI_NUMERICHOST ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char const*,int *,int *,struct addrinfo**) ;
 int gethostname (char*,int) ;
 int getnameinfo (int ,int ,char*,size_t,int *,int ,int ) ;
 char* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

void
shrink_hostname (const char *hostname,
   char *dst, size_t dst_sz)
{
    char local_hostname[MaxHostNameLen];
    char *ld, *hd;
    int ret;
    struct addrinfo *ai;

    if (strlen(hostname) < dst_sz) {
 strlcpy (dst, hostname, dst_sz);
 return;
    }
    gethostname (local_hostname, sizeof(local_hostname));
    hd = strchr (hostname, '.');
    ld = strchr (local_hostname, '.');
    if (hd != ((void*)0) && ld != ((void*)0) && strcmp(hd, ld) == 0
 && hd - hostname < dst_sz) {
 strlcpy (dst, hostname, dst_sz);
 dst[hd - hostname] = '\0';
 return;
    }

    ret = getaddrinfo (hostname, ((void*)0), ((void*)0), &ai);
    if (ret) {
 strncpy (dst, hostname, dst_sz);
 return;
    }
    ret = getnameinfo (ai->ai_addr, ai->ai_addrlen,
         dst, dst_sz,
         ((void*)0), 0,
         NI_NUMERICHOST);
    freeaddrinfo (ai);
    if (ret) {
 strncpy (dst, hostname, dst_sz);
 return;
    }
}
