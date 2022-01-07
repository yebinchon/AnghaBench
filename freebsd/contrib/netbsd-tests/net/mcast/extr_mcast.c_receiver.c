
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; } ;
struct message {size_t seq; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int msg ;


 int ERRX (int ,char*,size_t,...) ;
 int EXIT_FAILURE ;
 int POLLIN ;
 int bind ;
 scalar_t__ debug ;
 int errno ;
 int getsocket (char const*,char const*,int ,int *,int) ;
 int poll (struct pollfd*,int,int) ;
 int recv (int,struct message*,int,int ) ;
 int recvfrom (int,struct message*,int,int ,void*,int *) ;
 int show (char*,struct message*) ;
 int ss ;
 int strerror (int ) ;
 int synchronize (int const,int) ;

__attribute__((used)) static void
receiver(const int fd, const char *host, const char *port, size_t n, bool conn,
    bool bug)
{
 int s;
 ssize_t l;
 size_t seq;
 struct message msg;
 struct pollfd pfd;
 socklen_t slen;

 s = getsocket(host, port, bind, &slen, bug);
 pfd.fd = s;
 pfd.events = POLLIN;


 synchronize(fd, 0);

 for (seq = 0; seq < n; seq++) {
  if (poll(&pfd, 1, 10000) == -1)
   ERRX(EXIT_FAILURE, "poll (%s)", strerror(errno));
  l = conn ? recv(s, &msg, sizeof(msg), 0) :
      recvfrom(s, &msg, sizeof(msg), 0, (void *)&ss, &slen);
  if (l == -1)
   ERRX(EXIT_FAILURE, "recv (%s)", strerror(errno));
  if (debug)
   show("got", &msg);
  if (seq != msg.seq)
   ERRX(EXIT_FAILURE, "seq: expect=%zu actual=%zu",
       seq, msg.seq);
 }


 synchronize(fd, 0);
}
