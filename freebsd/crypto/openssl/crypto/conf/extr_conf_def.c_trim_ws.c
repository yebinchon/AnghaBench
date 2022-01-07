
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int IS_EOF (int *,char) ;
 scalar_t__ IS_WS (int *,char) ;

__attribute__((used)) static void trim_ws(CONF *conf, char *start)
{
    char *p = start;

    while (!IS_EOF(conf, *p))
        p++;
    p--;
    while ((p >= start) && IS_WS(conf, *p))
        p--;
    p++;
    *p = '\0';
}
