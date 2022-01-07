
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; } ;
typedef int hostname ;
typedef int hints ;


 int AF_UNSPEC ;
 int EINVAL ;
 int EX_OSERR ;
 int MAXHOSTNAMELEN ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PMCSTAT_OPEN_FOR_READ ;
 int SOCK_STREAM ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWUSR ;
 int accept (int,int *,int *) ;
 int assert (int) ;
 scalar_t__ bind (int,int ,int ) ;
 int close (int) ;
 scalar_t__ connect (int,int ,int ) ;
 int errno ;
 int errx (int ,char*,char const*,char*,char const*) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,char const*,struct addrinfo*,struct addrinfo**) ;
 int listen (int,int) ;
 int memset (struct addrinfo*,int ,int) ;
 int open (char const*,int,int) ;
 int socket (int ,int ,int ) ;
 int * strchr (char const*,char) ;
 char* strerror (int ) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

int
pmcstat_open_log(const char *path, int mode)
{
 int error, fd, cfd;
 size_t hlen;
 const char *p, *errstr;
 struct addrinfo hints, *res, *res0;
 char hostname[MAXHOSTNAMELEN];

 errstr = ((void*)0);
 fd = -1;
 if (path[0] == '-' && path[1] == '\0')
  fd = (mode == PMCSTAT_OPEN_FOR_READ) ? 0 : 1;
 else if (path[0] != '/' &&
     path[0] != '.' && strchr(path, ':') != ((void*)0)) {

  p = strrchr(path, ':');
  hlen = p - path;
  if (p == path || hlen >= sizeof(hostname)) {
   errstr = strerror(EINVAL);
   goto done;
  }

  assert(hlen < sizeof(hostname));
  (void) strncpy(hostname, path, hlen);
  hostname[hlen] = '\0';

  (void) memset(&hints, 0, sizeof(hints));
  hints.ai_family = AF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  if ((error = getaddrinfo(hostname, p+1, &hints, &res0)) != 0) {
   errstr = gai_strerror(error);
   goto done;
  }

  fd = -1;
  for (res = res0; res; res = res->ai_next) {
   if ((fd = socket(res->ai_family, res->ai_socktype,
       res->ai_protocol)) < 0) {
    errstr = strerror(errno);
    continue;
   }
   if (mode == PMCSTAT_OPEN_FOR_READ) {
    if (bind(fd, res->ai_addr, res->ai_addrlen) < 0) {
     errstr = strerror(errno);
     (void) close(fd);
     fd = -1;
     continue;
    }
    listen(fd, 1);
    cfd = accept(fd, ((void*)0), ((void*)0));
    (void) close(fd);
    if (cfd < 0) {
     errstr = strerror(errno);
     fd = -1;
     break;
    }
    fd = cfd;
   } else {
    if (connect(fd, res->ai_addr, res->ai_addrlen) < 0) {
     errstr = strerror(errno);
     (void) close(fd);
     fd = -1;
     continue;
    }
   }
   errstr = ((void*)0);
   break;
  }
  freeaddrinfo(res0);

 } else if ((fd = open(path, mode == PMCSTAT_OPEN_FOR_READ ?
      O_RDONLY : (O_WRONLY|O_CREAT|O_TRUNC),
      S_IRUSR|S_IWUSR|S_IRGRP|S_IROTH)) < 0)
   errstr = strerror(errno);

  done:
 if (errstr)
  errx(EX_OSERR, "ERROR: Cannot open \"%s\" for %s: %s.", path,
      (mode == PMCSTAT_OPEN_FOR_READ ? "reading" : "writing"),
      errstr);

 return (fd);
}
