
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper {int cm_key; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static __inline int
match_func(struct _citrus_mapper *cm, const char *key)
{

 return (strcmp(cm->cm_key, key));
}
