
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int hdrs; int header; } ;
typedef TYPE_1__ auth_baton_t ;


 int APR_HASH_KEY_STRING ;
 int apr_hash_set (int ,char*,int ,int ) ;
 int apr_pstrdup (int ,char const*) ;
 char* apr_pstrmemdup (int ,char const*,int) ;
 scalar_t__ apr_tolower (char) ;
 scalar_t__ strcasecmp (char const*,int ) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

__attribute__((used)) static int store_header_in_dict(void *baton,
                                const char *key,
                                const char *header)
{
    auth_baton_t *ab = baton;
    const char *auth_attr;
    char *auth_name, *c;


    if (strcasecmp(key, ab->header) != 0)
        return 0;


    auth_attr = strchr(header, ' ');
    if (auth_attr) {
        auth_name = apr_pstrmemdup(ab->pool, header, auth_attr - header);
    }
    else
        auth_name = apr_pstrmemdup(ab->pool, header, strlen(header));


    for (c = auth_name; *c != '\0'; c++)
        *c = (char)apr_tolower(*c);

    apr_hash_set(ab->hdrs, auth_name, APR_HASH_KEY_STRING,
                 apr_pstrdup(ab->pool, header));

    return 0;
}
