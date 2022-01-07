
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int seekwhence ;

const char *
sysdecode_whence(int whence)
{

 return (lookup_value(seekwhence, whence));
}
