
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef scalar_t__ pid_t ;
typedef int krb5_socket_t ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int buf ;
typedef int __ss ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int accept (int,struct sockaddr*,int*) ;
 int dup2 (int,int) ;
 scalar_t__ fork () ;
 int krb5_free_address (int ,int *) ;
 int krb5_print_address (int *,char*,int,size_t*) ;
 int krb5_sockaddr2address (int ,struct sockaddr*,int *) ;
 int krb5_warn (int ,int,char*) ;
 int krb5_warnx (int ,char*,char*) ;
 scalar_t__ rk_IS_BAD_SOCKET (int) ;
 int rk_SOCK_ERRNO ;
 int rk_closesocket (int) ;

__attribute__((used)) static int
spawn_child(krb5_context contextp, int *socks,
     unsigned int num_socks, int this_sock)
{
    int e;
    size_t i;
    struct sockaddr_storage __ss;
    struct sockaddr *sa = (struct sockaddr *)&__ss;
    socklen_t sa_size = sizeof(__ss);
    krb5_socket_t s;
    pid_t pid;
    krb5_address addr;
    char buf[128];
    size_t buf_len;

    s = accept(socks[this_sock], sa, &sa_size);
    if(rk_IS_BAD_SOCKET(s)) {
 krb5_warn(contextp, rk_SOCK_ERRNO, "accept");
 return 1;
    }
    e = krb5_sockaddr2address(contextp, sa, &addr);
    if(e)
 krb5_warn(contextp, e, "krb5_sockaddr2address");
    else {
 e = krb5_print_address (&addr, buf, sizeof(buf),
    &buf_len);
 if(e)
     krb5_warn(contextp, e, "krb5_print_address");
 else
     krb5_warnx(contextp, "connection from %s", buf);
 krb5_free_address(contextp, &addr);
    }

    pid = fork();
    if(pid == 0) {
 for(i = 0; i < num_socks; i++)
     rk_closesocket(socks[i]);
 dup2(s, STDIN_FILENO);
 dup2(s, STDOUT_FILENO);
 if(s != STDIN_FILENO && s != STDOUT_FILENO)
     rk_closesocket(s);
 return 0;
    } else {
 rk_closesocket(s);
    }
    return 1;
}
