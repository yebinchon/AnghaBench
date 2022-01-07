
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int rsend (int,void const*,size_t,int ) ;

ssize_t rwrite(int socket, const void *buf, size_t count)
{
 return rsend(socket, buf, count, 0);
}
