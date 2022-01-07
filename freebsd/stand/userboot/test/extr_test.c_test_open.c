
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fd; int dir; } ;
struct TYPE_4__ {int st_mode; } ;
struct test_file {int tf_isdir; TYPE_1__ tf_u; TYPE_2__ tf_stat; int tf_size; } ;
struct stat {int st_size; } ;


 int EINVAL ;
 int ENOENT ;
 int O_RDONLY ;
 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int errno ;
 int free (struct test_file*) ;
 int host_base ;
 struct test_file* malloc (int) ;
 scalar_t__ open (char*,int ) ;
 int opendir (char*) ;
 scalar_t__ stat (char*,TYPE_2__*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;
 int strlen (char*) ;

int
test_open(void *arg, const char *filename, void **h_return)
{
 struct stat st;
 struct test_file *tf;
 char path[PATH_MAX];

 if (!host_base)
  return (ENOENT);

 strlcpy(path, host_base, PATH_MAX);
 if (path[strlen(path) - 1] == '/')
  path[strlen(path) - 1] = 0;
 strlcat(path, filename, PATH_MAX);
 tf = malloc(sizeof(struct test_file));
 if (stat(path, &tf->tf_stat) < 0) {
  free(tf);
  return (errno);
 }

 tf->tf_size = st.st_size;
 if (S_ISDIR(tf->tf_stat.st_mode)) {
  tf->tf_isdir = 1;
  tf->tf_u.dir = opendir(path);
  if (!tf->tf_u.dir)
   goto out;
                *h_return = tf;
  return (0);
 }
 if (S_ISREG(tf->tf_stat.st_mode)) {
  tf->tf_isdir = 0;
  tf->tf_u.fd = open(path, O_RDONLY);
  if (tf->tf_u.fd < 0)
   goto out;
                *h_return = tf;
  return (0);
 }

out:
 free(tf);
 return (EINVAL);
}
