
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 int IS_ALNUM_PUNCT (int *,char) ;
 scalar_t__ IS_ESC (int *,char) ;
 char* scan_esc (int *,char*) ;

__attribute__((used)) static char *eat_alpha_numeric(CONF *conf, char *p)
{
    for (;;) {
        if (IS_ESC(conf, *p)) {
            p = scan_esc(conf, p);
            continue;
        }
        if (!IS_ALNUM_PUNCT(conf, *p))
            return p;
        p++;
    }
}
