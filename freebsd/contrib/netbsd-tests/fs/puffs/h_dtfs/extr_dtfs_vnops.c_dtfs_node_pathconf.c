
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_usermount {int dummy; } ;
typedef int register_t ;
typedef int puffs_cookie_t ;


 int EINVAL ;
 int LINK_MAX ;
 int MAXPATHLEN ;
 int NAME_MAX ;
 int PATH_MAX ;
 int PIPE_BUF ;
int
dtfs_node_pathconf(struct puffs_usermount *pu, puffs_cookie_t opc,
 int name, register_t *retval)
{

 switch (name) {
 case 134:
  *retval = LINK_MAX;
  return 0;
 case 133:
  *retval = NAME_MAX;
  return 0;
 case 131:
  *retval = PATH_MAX;
  return 0;
 case 130:
  *retval = PIPE_BUF;
  return 0;
 case 136:
  *retval = 1;
  return 0;
 case 132:
  *retval = 1;
  return 0;
 case 128:
  *retval = 1;
  return 0;
 case 135:
  *retval = 43;
  return 0;
 case 129:
  *retval = MAXPATHLEN;
  return 0;
 case 137:
  *retval = 1;
  return 0;
 default:
  return EINVAL;
 }
}
