
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_args {int dummy; } ;
struct foofs_config {int * nonopt; } ;


 int FUSE_OPT_KEY_NONOPT ;
 int * strdup (char const*) ;

__attribute__((used)) static int foo_opt_proc(void *data, const char *arg, int key, struct fuse_args *outargs) {
 struct foofs_config *config = data;

 if (key == FUSE_OPT_KEY_NONOPT && config->nonopt == ((void*)0)) {
  config->nonopt = strdup(arg);
  return 0;
 }
 else {
  return 1;
 }
}
