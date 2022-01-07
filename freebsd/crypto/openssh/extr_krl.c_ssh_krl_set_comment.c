
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_krl {int * comment; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int free (int *) ;
 int * strdup (char const*) ;

int
ssh_krl_set_comment(struct ssh_krl *krl, const char *comment)
{
 free(krl->comment);
 if ((krl->comment = strdup(comment)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 return 0;
}
