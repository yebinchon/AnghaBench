
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int j ;


 int SOL_SOCKET ;
 int SO_ERROR ;
 int get_last_socket_error () ;
 int getsockopt (int,int ,int ,void*,int*) ;

int BIO_sock_error(int sock)
{
    int j = 0, i;
    socklen_t size = sizeof(j);







    i = getsockopt(sock, SOL_SOCKET, SO_ERROR, (void *)&j, &size);
    if (i < 0)
        return get_last_socket_error();
    else
        return j;
}
