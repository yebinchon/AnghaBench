
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int name ;
typedef int longlong_t ;


 int snprintf (char*,int,char*,int ) ;
 int zap_lookup (int *,scalar_t__,char*,int,int,scalar_t__*) ;

int
zap_lookup_int(objset_t *os, uint64_t obj, uint64_t value)
{
 char name[20];

 (void) snprintf(name, sizeof (name), "%llx", (longlong_t)value);
 return (zap_lookup(os, obj, name, 8, 1, &value));
}
