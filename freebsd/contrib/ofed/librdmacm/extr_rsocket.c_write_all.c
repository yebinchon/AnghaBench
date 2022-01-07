
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int assert (int) ;
 size_t write (int,void const*,size_t) ;

__attribute__((used)) static void write_all(int fd, const void *msg, size_t len)
{

 ssize_t rc = write(fd, msg, len);
 assert(rc == len);
}
