
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int dir; } ;
struct test_file {TYPE_1__ tf_u; int tf_isdir; } ;
struct dirent {size_t d_namlen; int d_name; int d_type; int d_fileno; } ;


 int EINVAL ;
 int ENOENT ;
 int memcpy (char*,int ,size_t) ;
 struct dirent* readdir (int ) ;

int
test_readdir(void *arg, void *h, uint32_t *fileno_return, uint8_t *type_return,
    size_t *namelen_return, char *name)
{
 struct test_file *tf = h;
 struct dirent *dp;

 if (!tf->tf_isdir)
  return (EINVAL);

 dp = readdir(tf->tf_u.dir);
 if (!dp)
  return (ENOENT);





 *fileno_return = dp->d_fileno;
 *type_return = dp->d_type;
 *namelen_return = dp->d_namlen;
 memcpy(name, dp->d_name, dp->d_namlen);
 name[dp->d_namlen] = 0;

 return (0);
}
