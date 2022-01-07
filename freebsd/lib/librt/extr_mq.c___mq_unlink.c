
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sys_kmq_unlink (char const*) ;

int
__mq_unlink(const char *path)
{

 return __sys_kmq_unlink(path);
}
