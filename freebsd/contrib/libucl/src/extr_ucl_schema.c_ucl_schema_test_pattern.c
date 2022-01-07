
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;
typedef int regex_t ;


 int REG_EXTENDED ;
 int REG_NOSUB ;
 scalar_t__ regcomp (int *,char const*,int) ;
 scalar_t__ regexec (int *,int ,int ,int *,int ) ;
 int regfree (int *) ;
 int * ucl_object_iterate (int const*,int **,int) ;
 int ucl_object_key (int const*) ;

__attribute__((used)) static const ucl_object_t *
ucl_schema_test_pattern (const ucl_object_t *obj, const char *pattern, bool recursive)
{
 const ucl_object_t *res = ((void*)0);
 return res;
}
