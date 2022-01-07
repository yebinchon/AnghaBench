
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int count_size(void *baton, const char *key, const char *value)
{
    apr_size_t *c = baton;



    *c += strlen(key) + strlen(value) + 4;

    return 0;
}
