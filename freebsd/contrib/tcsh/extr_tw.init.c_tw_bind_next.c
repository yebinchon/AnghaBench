
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Strbuf ;
struct TYPE_2__ {char* name; } ;


 int Strbuf_append1 (int*,char const) ;
 int USE (int*) ;
 TYPE_1__* tw_bind ;

int
tw_bind_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    USE(dir);
    USE(flags);
    if (tw_bind && tw_bind->name) {
 const char *ptr;

 for (ptr = tw_bind->name; *ptr != '\0'; ptr++)
     Strbuf_append1(res, *ptr);
 tw_bind++;
 return 1;
    }
    return 0;
}
