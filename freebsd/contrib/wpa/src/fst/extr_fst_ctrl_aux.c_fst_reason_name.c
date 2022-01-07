
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fst_reason { ____Placeholder_fst_reason } fst_reason ;


 int ARRAY_SIZE (int ) ;
 char const* fst_get_str_name (int,int ,int ) ;
 int reason_names ;

const char * fst_reason_name(enum fst_reason reason)
{
 return fst_get_str_name(reason, reason_names, ARRAY_SIZE(reason_names));
}
