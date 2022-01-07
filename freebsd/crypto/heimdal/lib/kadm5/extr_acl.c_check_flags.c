
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kadm5_ret_t ;


 int KADM5_AUTH_ADD ;
 int KADM5_AUTH_CHANGEPW ;
 int KADM5_AUTH_DELETE ;
 int KADM5_AUTH_GET ;
 int KADM5_AUTH_INSUFFICIENT ;
 int KADM5_AUTH_LIST ;
 int KADM5_AUTH_MODIFY ;
 unsigned int KADM5_PRIV_ADD ;
 unsigned int KADM5_PRIV_CPW ;
 unsigned int KADM5_PRIV_DELETE ;
 unsigned int KADM5_PRIV_GET ;
 unsigned int KADM5_PRIV_LIST ;
 unsigned int KADM5_PRIV_MODIFY ;

__attribute__((used)) static kadm5_ret_t
check_flags (unsigned op,
      unsigned flags)
{
    unsigned res = ~flags & op;

    if(res & KADM5_PRIV_GET)
 return KADM5_AUTH_GET;
    if(res & KADM5_PRIV_ADD)
 return KADM5_AUTH_ADD;
    if(res & KADM5_PRIV_MODIFY)
 return KADM5_AUTH_MODIFY;
    if(res & KADM5_PRIV_DELETE)
 return KADM5_AUTH_DELETE;
    if(res & KADM5_PRIV_CPW)
 return KADM5_AUTH_CHANGEPW;
    if(res & KADM5_PRIV_LIST)
 return KADM5_AUTH_LIST;
    if(res)
 return KADM5_AUTH_INSUFFICIENT;
    return 0;
}
