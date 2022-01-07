
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct client {int salen; int * sock; int servername; int sa; int moniker; } ;
typedef int hostname ;


 int MAXHOSTNAMELEN ;
 int NI_NUMERICHOST ;
 int asprintf (int *,char*,char*,int) ;
 int close (int) ;
 struct client* ecalloc (int,int) ;
 int errx (int,char*) ;
 int estrdup (char const*) ;
 int gethostname (char*,int) ;
 int getnameinfo (struct sockaddr*,int,int ,int,int *,int ,int ) ;
 int getpeername (int,struct sockaddr*,int*) ;
 int * krb5_storage_from_fd (int) ;

__attribute__((used)) static struct client *
create_client(int fd, int port, const char *moniker)
{
    struct client *c;

    c = ecalloc(1, sizeof(*c));

    if (moniker) {
 c->moniker = estrdup(moniker);
    } else {
 char hostname[MAXHOSTNAMELEN];
 gethostname(hostname, sizeof(hostname));
 asprintf(&c->moniker, "gssmask: %s:%d", hostname, port);
    }

    {
 c->salen = sizeof(c->sa);
 getpeername(fd, (struct sockaddr *)&c->sa, &c->salen);

 getnameinfo((struct sockaddr *)&c->sa, c->salen,
      c->servername, sizeof(c->servername),
      ((void*)0), 0, NI_NUMERICHOST);
    }

    c->sock = krb5_storage_from_fd(fd);
    if (c->sock == ((void*)0))
 errx(1, "krb5_storage_from_fd");

    close(fd);

    return c;
}
