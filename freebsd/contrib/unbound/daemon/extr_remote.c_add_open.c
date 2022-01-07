
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct listen_port {int fd; struct listen_port* next; } ;
struct config_file {int use_systemd; int ip_freebind; int ip_transparent; scalar_t__* username; } ;
struct addrinfo {int ai_flags; int ai_socktype; } ;
typedef int port ;
typedef int mode_t ;
typedef int hints ;


 int AI_NUMERICHOST ;
 int AI_PASSIVE ;
 int EAI_NONAME ;
 int EAI_SYSTEM ;
 int SOCK_STREAM ;
 int S_IRGRP ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWUSR ;
 int VERB_QUERY ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ cfg_gid ;
 scalar_t__ cfg_uid ;
 int chmod (char const*,int ) ;
 int chown (char const*,scalar_t__,scalar_t__) ;
 int close (int) ;
 int closesocket (int) ;
 int create_local_accept_sock (char const*,int*,int ) ;
 int create_tcp_accept_sock (struct addrinfo*,int,int*,int ,int ,int ,int ,int ) ;
 int errno ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (char const*,char*,struct addrinfo*,struct addrinfo**) ;
 int log_assert (char const*) ;
 int log_err (char*,...) ;
 int memset (struct addrinfo*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strerror (int ) ;
 int verbose (int ,char*,unsigned int,unsigned int,char const*,scalar_t__) ;

__attribute__((used)) static int
add_open(const char* ip, int nr, struct listen_port** list, int noproto_is_err,
 struct config_file* cfg)
{
 struct addrinfo hints;
 struct addrinfo* res;
 struct listen_port* n;
 int noproto = 0;
 int fd, r;
 char port[15];
 snprintf(port, sizeof(port), "%d", nr);
 port[sizeof(port)-1]=0;
 memset(&hints, 0, sizeof(hints));
 log_assert(ip);

 if(ip[0] == '/') {

  fd = create_local_accept_sock(ip, &noproto, cfg->use_systemd);





  if(fd != -1) {
   (void)cfg;

  }
 } else {
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_flags = AI_PASSIVE | AI_NUMERICHOST;
  if((r = getaddrinfo(ip, port, &hints, &res)) != 0 || !res) {






   log_err("control interface %s:%s getaddrinfo: %s %s",
    ip?ip:"default", port, gai_strerror(r),



    ""

   );
   return 0;
  }


  fd = create_tcp_accept_sock(res, 1, &noproto, 0,
   cfg->ip_transparent, 0, cfg->ip_freebind, cfg->use_systemd);
  freeaddrinfo(res);
 }

 if(fd == -1 && noproto) {
  if(!noproto_is_err)
   return 1;
  log_err("cannot open control interface %s %d : "
   "protocol not supported", ip, nr);
  return 0;
 }
 if(fd == -1) {
  log_err("cannot open control interface %s %d", ip, nr);
  return 0;
 }


 n = (struct listen_port*)calloc(1, sizeof(*n));
 if(!n) {

  close(fd);



  log_err("out of memory");
  return 0;
 }
 n->next = *list;
 *list = n;
 n->fd = fd;
 return 1;
}
