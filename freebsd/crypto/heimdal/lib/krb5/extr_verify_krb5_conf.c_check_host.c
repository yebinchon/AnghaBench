
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {void* ai_socktype; int * ai_next; int * ai_addr; int * ai_canonname; scalar_t__ ai_addrlen; scalar_t__ ai_protocol; int ai_family; scalar_t__ ai_flags; } ;
typedef int service ;
typedef int krb5_context ;
typedef int hostname ;


 int EAI_SERVICE ;
 int PF_UNSPEC ;
 void* SOCK_DGRAM ;
 void* SOCK_STREAM ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 int isdigit (unsigned char) ;
 int krb5_warnx (int ,char*,char const*,char*,...) ;
 int snprintf (char*,int,char*,int) ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strsep_copy (char const**,char*,char*,int) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static int
check_host(krb5_context context, const char *path, char *data)
{
    int ret;
    char hostname[128];
    const char *p = data;
    struct addrinfo hints;
    char service[32];
    int defport;
    struct addrinfo *ai;

    hints.ai_flags = 0;
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = 0;
    hints.ai_protocol = 0;

    hints.ai_addrlen = 0;
    hints.ai_canonname = ((void*)0);
    hints.ai_addr = ((void*)0);
    hints.ai_next = ((void*)0);



    if(strncmp(p, "http://", 7) == 0){
        p += 7;
 hints.ai_socktype = SOCK_STREAM;
 strlcpy(service, "http", sizeof(service));
 defport = 80;
    } else if(strncmp(p, "http/", 5) == 0) {
        p += 5;
 hints.ai_socktype = SOCK_STREAM;
 strlcpy(service, "http", sizeof(service));
 defport = 80;
    }else if(strncmp(p, "tcp/", 4) == 0){
        p += 4;
 hints.ai_socktype = SOCK_STREAM;
 strlcpy(service, "kerberos", sizeof(service));
 defport = 88;
    } else if(strncmp(p, "udp/", 4) == 0) {
        p += 4;
 hints.ai_socktype = SOCK_DGRAM;
 strlcpy(service, "kerberos", sizeof(service));
 defport = 88;
    } else {
 hints.ai_socktype = SOCK_DGRAM;
 strlcpy(service, "kerberos", sizeof(service));
 defport = 88;
    }
    if(strsep_copy(&p, ":", hostname, sizeof(hostname)) < 0) {
 return 1;
    }
    hostname[strcspn(hostname, "/")] = '\0';
    if(p != ((void*)0)) {
 char *end;
 int tmp = strtol(p, &end, 0);
 if(end == p) {
     krb5_warnx(context, "%s: failed to parse port number in %s",
         path, data);
     return 1;
 }
 defport = tmp;
 snprintf(service, sizeof(service), "%u", defport);
    }
    ret = getaddrinfo(hostname, service, &hints, &ai);
    if(ret == EAI_SERVICE && !isdigit((unsigned char)service[0])) {
 snprintf(service, sizeof(service), "%u", defport);
 ret = getaddrinfo(hostname, service, &hints, &ai);
    }
    if(ret != 0) {
 krb5_warnx(context, "%s: %s (%s)", path, gai_strerror(ret), hostname);
 return 1;
    }
    return 0;
}
