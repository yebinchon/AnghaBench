
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct test_file {TYPE_1__ tf_u; scalar_t__ tf_isdir; } ;
typedef size_t ssize_t ;


 int EINVAL ;
 size_t read (int ,void*,size_t) ;

int
test_read(void *arg, void *h, void *dst, size_t size, size_t *resid_return)
{
 struct test_file *tf = h;
 ssize_t sz;

 if (tf->tf_isdir)
  return (EINVAL);
 sz = read(tf->tf_u.fd, dst, size);
 if (sz < 0)
  return (EINVAL);
 *resid_return = size - sz;
 return (0);
}
