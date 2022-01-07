
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {char* name; int salen; int capabilities; char* moniker; int child; int thr; int * logsock; int target_name; int * sock; void* sa; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int int32_t ;
typedef int hints ;


 int HAS_MONIKER ;
 int ISSERVER ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 struct client** clients ;
 int close (int) ;
 scalar_t__ connect (int,int ,int) ;
 void* ecalloc (int,int) ;
 struct client** erealloc (struct client**,int) ;
 int err (int,char*,char*) ;
 int errx (int,char*,...) ;
 void* estrdup (char const*) ;
 int exit (int ) ;
 int fclose (scalar_t__) ;
 int fork () ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int get_moniker (struct client*,char**) ;
 int get_targetname (struct client*,int *) ;
 int get_version_capa (struct client*,int *,int*,char**) ;
 int getaddrinfo (char*,char*,struct addrinfo*,struct addrinfo**) ;
 void* krb5_storage_from_fd (int) ;
 int log_function (struct client*) ;
 scalar_t__ logfile ;
 int memcpy (void*,int ,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int num_clients ;
 int printf (char*,char*) ;
 int pthread_create (int *,int *,int (*) (struct client*),struct client*) ;
 int socket (int ,int ,int ) ;
 char* strchr (char*,char) ;
 int wait_log (struct client*) ;

__attribute__((used)) static void
connect_client(const char *slave)
{
    char *name, *port;
    struct client *c = ecalloc(1, sizeof(*c));
    struct addrinfo hints, *res0, *res;
    int ret, fd;

    name = estrdup(slave);
    port = strchr(name, ':');
    if (port == ((void*)0))
 errx(1, "port missing from %s", name);
    *port++ = 0;

    c->name = estrdup(slave);

    memset(&hints, 0, sizeof(hints));
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    ret = getaddrinfo(name, port, &hints, &res0);
    if (ret)
 errx(1, "error resolving %s", name);

    for (res = res0, fd = -1; res; res = res->ai_next) {
 fd = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
 if (fd < 0)
     continue;
 if (connect(fd, res->ai_addr, res->ai_addrlen) < 0) {
     close(fd);
     fd = -1;
     continue;
 }
 c->sa = ecalloc(1, res->ai_addrlen);
 memcpy(c->sa, res->ai_addr, res->ai_addrlen);
 c->salen = res->ai_addrlen;
 break;
    }
    if (fd < 0)
 err(1, "connect to host: %s", name);
    freeaddrinfo(res);

    c->sock = krb5_storage_from_fd(fd);
    close(fd);
    if (c->sock == ((void*)0))
 errx(1, "krb5_storage_from_fd");

    {
 int32_t version;
 char *str = ((void*)0);
 get_version_capa(c, &version, &c->capabilities, &str);
 if (str) {
     free(str);
 }
 if (c->capabilities & HAS_MONIKER)
     get_moniker(c, &c->moniker);
 else
     c->moniker = c->name;
 if (c->capabilities & ISSERVER)
     get_targetname(c, &c->target_name);
    }

    if (logfile) {
 int fd;

 printf("starting log socket to client %s\n", c->moniker);

 fd = wait_log(c);

 c->logsock = krb5_storage_from_fd(fd);
 close(fd);
 if (c->logsock == ((void*)0))
     errx(1, "failed to create log krb5_storage");



 c->child = fork();
 if (c->child == -1)
     errx(1, "failed to fork");
 else if (c->child == 0) {
     log_function(c);
     fclose(logfile);
     exit(0);
 }

   }


    clients = erealloc(clients, (num_clients + 1) * sizeof(*clients));

    clients[num_clients] = c;
    num_clients++;

    free(name);
}
