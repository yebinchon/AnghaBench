
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int HASH_MASK ;
 int hash (void*,int ) ;
 int strlen (char*) ;

u_int32_t hashkey(char *key)
{

 if (key == ((void*)0))
  return (-1);
 return(hash((void *)key, strlen(key)) & HASH_MASK);
}
