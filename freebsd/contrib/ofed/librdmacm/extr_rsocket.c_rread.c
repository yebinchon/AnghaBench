
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int rrecv (int,void*,size_t,int ) ;

ssize_t rread(int socket, void *buf, size_t count)
{
 return rrecv(socket, buf, count, 0);
}
