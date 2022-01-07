
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int assert (int) ;
 size_t read (int,void*,size_t) ;

__attribute__((used)) static void read_all(int fd, void *msg, size_t len)
{

 ssize_t rc = read(fd, msg, len);
 assert(rc == len);
}
