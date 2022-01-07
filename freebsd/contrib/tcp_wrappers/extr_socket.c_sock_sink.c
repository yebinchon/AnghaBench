
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int buf ;


 int BUFSIZ ;
 int recvfrom (int,char*,int,int ,struct sockaddr*,int*) ;

__attribute__((used)) static void sock_sink(int fd)
{
    char buf[BUFSIZ];



    struct sockaddr_in sin;

    int size = sizeof(sin);






    (void) recvfrom(fd, buf, sizeof(buf), 0, (struct sockaddr *) & sin, &size);
}
