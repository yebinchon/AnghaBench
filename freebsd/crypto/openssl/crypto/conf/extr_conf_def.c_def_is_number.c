
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int IS_NUMBER (int const*,char) ;

__attribute__((used)) static int def_is_number(const CONF *conf, char c)
{
    return IS_NUMBER(conf, c);
}
