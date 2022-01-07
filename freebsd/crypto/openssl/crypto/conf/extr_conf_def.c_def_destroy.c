
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int OPENSSL_free (int *) ;
 scalar_t__ def_destroy_data (int *) ;

__attribute__((used)) static int def_destroy(CONF *conf)
{
    if (def_destroy_data(conf)) {
        OPENSSL_free(conf);
        return 1;
    }
    return 0;
}
