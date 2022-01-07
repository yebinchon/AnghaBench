
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 scalar_t__ IS_EOF (int *,char) ;
 scalar_t__ IS_ESC (int *,char) ;

__attribute__((used)) static char *scan_quote(CONF *conf, char *p)
{
    int q = *p;

    p++;
    while (!(IS_EOF(conf, *p)) && (*p != q)) {
        if (IS_ESC(conf, *p)) {
            p++;
            if (IS_EOF(conf, *p))
                return p;
        }
        p++;
    }
    if (*p == q)
        p++;
    return p;
}
