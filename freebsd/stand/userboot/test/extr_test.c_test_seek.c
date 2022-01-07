
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int fd; } ;
struct test_file {TYPE_1__ tf_u; scalar_t__ tf_isdir; } ;


 int EINVAL ;
 int errno ;
 scalar_t__ lseek (int ,int ,int) ;

int
test_seek(void *arg, void *h, uint64_t offset, int whence)
{
 struct test_file *tf = h;

 if (tf->tf_isdir)
  return (EINVAL);
 if (lseek(tf->tf_u.fd, offset, whence) < 0)
  return (errno);
 return (0);
}
