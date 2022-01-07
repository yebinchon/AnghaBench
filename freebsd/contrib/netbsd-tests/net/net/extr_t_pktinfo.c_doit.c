
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;


 int client (struct sockaddr_in*) ;
 int close (int) ;
 int receive (int) ;
 int server (struct sockaddr_in*) ;

__attribute__((used)) static void
doit(void)
{
 struct sockaddr_in sin;
 int s, c;
 s = server(&sin);
 c = client(&sin);
 receive(s);
 close(s);
 close(c);
}
