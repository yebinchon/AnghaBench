
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; int h_addrtype; int h_length; int h_addr; } ;
typedef int pthread_t ;
typedef int buf ;


 int STDOUT_FILENO ;
 struct hostent* gethostbyaddr (char*,int ,int ) ;
 struct hostent* gethostbyname (char*) ;
 int memcpy (char*,int ,int ) ;
 int snprintf (char*,int,char*,int ,char*,...) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
resolv_gethostby(pthread_t self, char *host)
{
 char buf[1024];
 struct hostent *hp, *hp2;
 int len;

 hp = gethostbyname(host);
 len = snprintf(buf, sizeof(buf), "%p: host %s %s\n",
     self, host, (hp == ((void*)0)) ? "not found" : "ok");
 (void)write(STDOUT_FILENO, buf, len);
 if (hp) {
  memcpy(buf, hp->h_addr, hp->h_length);
  hp2 = gethostbyaddr(buf, hp->h_length, hp->h_addrtype);
  if (hp2) {
   len = snprintf(buf, sizeof(buf),
       "%p: reverse %s\n", self, hp2->h_name);
   (void)write(STDOUT_FILENO, buf, len);
  }
 }
 return hp ? 0 : -1;
}
