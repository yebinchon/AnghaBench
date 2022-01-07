
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF ;


 scalar_t__ IS_COMMENT (int *,char) ;
 scalar_t__ IS_DQUOTE (int *,char) ;
 scalar_t__ IS_EOF (int *,char) ;
 scalar_t__ IS_ESC (int *,char) ;
 scalar_t__ IS_FCOMMENT (int *,char) ;
 scalar_t__ IS_QUOTE (int *,char) ;
 int IS_WS (int *,char) ;
 char* scan_dquote (int *,char*) ;
 char* scan_esc (int *,char*) ;
 char* scan_quote (int *,char*) ;

__attribute__((used)) static void clear_comments(CONF *conf, char *p)
{
    for (;;) {
        if (IS_FCOMMENT(conf, *p)) {
            *p = '\0';
            return;
        }
        if (!IS_WS(conf, *p)) {
            break;
        }
        p++;
    }

    for (;;) {
        if (IS_COMMENT(conf, *p)) {
            *p = '\0';
            return;
        }
        if (IS_DQUOTE(conf, *p)) {
            p = scan_dquote(conf, p);
            continue;
        }
        if (IS_QUOTE(conf, *p)) {
            p = scan_quote(conf, p);
            continue;
        }
        if (IS_ESC(conf, *p)) {
            p = scan_esc(conf, p);
            continue;
        }
        if (IS_EOF(conf, *p))
            return;
        else
            p++;
    }
}
