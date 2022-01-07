
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int strlen (char const*) ;
 int ucl_object_delete_keyl (int *,char const*,int ) ;

bool
ucl_object_delete_key (ucl_object_t *top, const char *key)
{
 return ucl_object_delete_keyl (top, key, strlen (key));
}
