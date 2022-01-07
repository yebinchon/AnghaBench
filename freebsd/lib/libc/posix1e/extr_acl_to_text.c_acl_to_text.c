
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int acl_t ;


 char* acl_to_text_np (int ,int *,int ) ;

char *
acl_to_text(acl_t acl, ssize_t *len_p)
{

 return (acl_to_text_np(acl, len_p, 0));
}
