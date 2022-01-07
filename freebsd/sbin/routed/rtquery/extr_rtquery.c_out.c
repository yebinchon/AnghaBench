
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sin_port; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {int h_addr; } ;
typedef int router ;


 int AF_INET ;
 int RIP_PORT ;
 struct hostent* gethostbyname (char const*) ;
 scalar_t__ gettimeofday (int *,int ) ;
 int herror (char const*) ;
 int htons (int ) ;
 int inet_aton (char const*,int *) ;
 int memcpy (int *,int ,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int omsg_buf ;
 int omsg_len ;
 int perror (char const*) ;
 scalar_t__ sendto (int ,int *,int ,int ,struct sockaddr*,int) ;
 int sent ;
 int soc ;

__attribute__((used)) static int
out(const char *host)
{
 struct sockaddr_in router;
 struct hostent *hp;

 if (gettimeofday(&sent, 0) < 0) {
  perror("gettimeofday(sent)");
  return -1;
 }

 memset(&router, 0, sizeof(router));
 router.sin_family = AF_INET;



 if (!inet_aton(host, &router.sin_addr)) {
  hp = gethostbyname(host);
  if (hp == ((void*)0)) {
   herror(host);
   return -1;
  }
  memcpy(&router.sin_addr, hp->h_addr, sizeof(router.sin_addr));
 }
 router.sin_port = htons(RIP_PORT);

 if (sendto(soc, &omsg_buf, omsg_len, 0,
     (struct sockaddr *)&router, sizeof(router)) < 0) {
  perror(host);
  return -1;
 }

 return 0;
}
