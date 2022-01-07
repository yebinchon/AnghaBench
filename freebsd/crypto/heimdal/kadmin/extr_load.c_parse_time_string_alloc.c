
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int context ;
 int krb5_errx (int ,int,char*) ;
 int * malloc (int) ;
 int parse_time_string (int *,char const*) ;

__attribute__((used)) static int
parse_time_string_alloc (time_t **t, const char *s)
{
    time_t tmp;
    int ret;

    *t = ((void*)0);
    ret = parse_time_string (&tmp, s);
    if (ret == 1) {
 *t = malloc (sizeof (**t));
 if (*t == ((void*)0))
     krb5_errx (context, 1, "malloc: out of memory");
 **t = tmp;
    }
    return ret;
}
