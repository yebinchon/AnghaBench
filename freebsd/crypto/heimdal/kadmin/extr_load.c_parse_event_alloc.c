
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Event ;


 int context ;
 int krb5_errx (int ,int,char*) ;
 int * malloc (int) ;
 int parse_event (int *,char*) ;

__attribute__((used)) static int
parse_event_alloc (Event **ev, char *s)
{
    Event tmp;
    int ret;

    *ev = ((void*)0);
    ret = parse_event (&tmp, s);
    if (ret == 1) {
 *ev = malloc (sizeof (**ev));
 if (*ev == ((void*)0))
     krb5_errx (context, 1, "malloc: out of memory");
 **ev = tmp;
    }
    return ret;
}
