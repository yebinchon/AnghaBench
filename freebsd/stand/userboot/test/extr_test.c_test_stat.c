
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int st_mode; int st_uid; int st_gid; int st_size; } ;
struct test_file {TYPE_1__ tf_stat; } ;



int
test_stat(void *arg, void *h, int *mode_return, int *uid_return, int *gid_return,
    uint64_t *size_return)
{
 struct test_file *tf = h;

 *mode_return = tf->tf_stat.st_mode;
 *uid_return = tf->tf_stat.st_uid;
 *gid_return = tf->tf_stat.st_gid;
 *size_return = tf->tf_stat.st_size;
 return (0);
}
