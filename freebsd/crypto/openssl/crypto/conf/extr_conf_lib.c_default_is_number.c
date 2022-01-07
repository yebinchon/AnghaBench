
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int ossl_isdigit (char) ;

__attribute__((used)) static int default_is_number(const CONF *conf, char c)
{
    return ossl_isdigit(c);
}
