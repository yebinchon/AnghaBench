
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Hash_InitTable (int *,int ) ;
 int file_count ;
 int * fn_head ;
 int fn_head_s ;
 int * provide_hash ;
 int provide_hash_s ;

__attribute__((used)) static void
initialize(void)
{

 fn_head = &fn_head_s;

 provide_hash = &provide_hash_s;
 Hash_InitTable(provide_hash, file_count);
}
