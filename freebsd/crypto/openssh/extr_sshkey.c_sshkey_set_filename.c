
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;


 int SSH_ERR_INVALID_ARGUMENT ;

int
sshkey_set_filename(struct sshkey *k, const char *filename)
{
 if (k == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 return 0;
}
