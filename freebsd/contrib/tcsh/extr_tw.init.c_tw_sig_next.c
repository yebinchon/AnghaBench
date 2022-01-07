
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Strbuf ;
struct TYPE_2__ {char* iname; } ;


 int Strbuf_append1 (int*,char const) ;
 int USE (int*) ;
 TYPE_1__* mesg ;
 size_t nsig ;
 size_t tw_index ;

int
tw_sig_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    USE(dir);
    USE(flags);
    for (;tw_index < nsig; tw_index++) {
 const char *ptr;

 if (mesg[tw_index].iname == ((void*)0))
     continue;

 for (ptr = mesg[tw_index].iname; *ptr != '\0'; ptr++)
     Strbuf_append1(res, *ptr);
 tw_index++;
 return 1;
    }
    return 0;
}
