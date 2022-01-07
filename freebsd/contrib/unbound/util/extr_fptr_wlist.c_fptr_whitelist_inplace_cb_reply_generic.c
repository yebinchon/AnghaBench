
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inplace_cb_reply_func_type ;
typedef enum inplace_cb_list_type { ____Placeholder_inplace_cb_list_type } inplace_cb_list_type ;


 int inplace_cb_reply ;
 int inplace_cb_reply_cache ;
 int inplace_cb_reply_local ;
 int inplace_cb_reply_servfail ;
 int python_inplace_cb_reply_generic ;

int fptr_whitelist_inplace_cb_reply_generic(inplace_cb_reply_func_type* fptr,
 enum inplace_cb_list_type type)
{

 (void)fptr;

 if(type == inplace_cb_reply) {



 } else if(type == inplace_cb_reply_cache) {



 } else if(type == inplace_cb_reply_local) {



 } else if(type == inplace_cb_reply_servfail) {



 }
 return 0;
}
