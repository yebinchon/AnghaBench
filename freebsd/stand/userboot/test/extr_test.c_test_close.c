
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int dir; } ;
struct test_file {TYPE_1__ tf_u; scalar_t__ tf_isdir; } ;


 int close (int ) ;
 int closedir (int ) ;
 int free (struct test_file*) ;

int
test_close(void *arg, void *h)
{
 struct test_file *tf = h;

 if (tf->tf_isdir)
  closedir(tf->tf_u.dir);
 else
  close(tf->tf_u.fd);
 free(tf);

 return (0);
}
