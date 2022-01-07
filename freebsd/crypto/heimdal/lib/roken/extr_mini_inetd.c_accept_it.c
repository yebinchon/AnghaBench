
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rk_socket_t ;


 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int accept (int ,int *,int *) ;
 int dup2 (int,int ) ;
 int err (int,char*) ;
 scalar_t__ rk_IS_BAD_SOCKET (int ) ;
 int rk_closesocket (int ) ;
 int socket_to_fd (int ,int ) ;

__attribute__((used)) static void
accept_it (rk_socket_t s, rk_socket_t *ret_socket)
{
    rk_socket_t as;

    as = accept(s, ((void*)0), ((void*)0));
    if(rk_IS_BAD_SOCKET(as))
 err (1, "accept");

    if (ret_socket) {

 *ret_socket = as;

    } else {
 int fd = socket_to_fd(as, 0);





 dup2(fd, STDIN_FILENO);
 dup2(fd, STDOUT_FILENO);

 rk_closesocket(as);
    }
}
