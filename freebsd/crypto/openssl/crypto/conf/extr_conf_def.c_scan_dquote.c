
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int IS_EOF (int *,char) ;

__attribute__((used)) static char *scan_dquote(CONF *conf, char *p)
{
    int q = *p;

    p++;
    while (!(IS_EOF(conf, *p))) {
        if (*p == q) {
            if (*(p + 1) == q) {
                p++;
            } else {
                break;
            }
        }
        p++;
    }
    if (*p == q)
        p++;
    return p;
}
