
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int port ;
typedef int node ;
typedef int krb5_context ;
typedef int hints ;


 int IPROP_PORT ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char const*,char const*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int ,int ,char*,int,int *,int ,int ) ;
 int krb5_warn (int ,int ,char*,char const*,char*) ;
 int krb5_warnx (int ,char*,char const*,char*) ;
 int memset (struct addrinfo*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
connect_to_master (krb5_context context, const char *master,
     const char *port_str)
{
    char port[NI_MAXSERV];
    struct addrinfo *ai, *a;
    struct addrinfo hints;
    int error;
    int s = -1;

    memset (&hints, 0, sizeof(hints));
    hints.ai_socktype = SOCK_STREAM;

    if (port_str == ((void*)0)) {
 snprintf(port, sizeof(port), "%u", IPROP_PORT);
 port_str = port;
    }

    error = getaddrinfo (master, port_str, &hints, &ai);
    if (error) {
 krb5_warnx(context, "Failed to get address of to %s: %s",
     master, gai_strerror(error));
 return -1;
    }

    for (a = ai; a != ((void*)0); a = a->ai_next) {
 char node[NI_MAXHOST];
 error = getnameinfo(a->ai_addr, a->ai_addrlen,
       node, sizeof(node), ((void*)0), 0, NI_NUMERICHOST);
 if (error)
     strlcpy(node, "[unknown-addr]", sizeof(node));

 s = socket (a->ai_family, a->ai_socktype, a->ai_protocol);
 if (s < 0)
     continue;
 if (connect (s, a->ai_addr, a->ai_addrlen) < 0) {
     krb5_warn(context, errno, "connection failed to %s[%s]",
        master, node);
     close (s);
     continue;
 }
 krb5_warnx(context, "connection successful "
     "to master: %s[%s]", master, node);
 break;
    }
    freeaddrinfo (ai);

    if (a == ((void*)0))
 return -1;

    return s;
}
