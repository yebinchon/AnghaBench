
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int context ;
 int krb5_errx (int ,int,char*) ;
 unsigned int* malloc (int) ;
 int parse_integer (unsigned int*,char const*) ;

__attribute__((used)) static int
parse_integer_alloc (unsigned int **u, const char *s)
{
    unsigned int tmp;
    int ret;

    *u = ((void*)0);
    ret = parse_integer (&tmp, s);
    if (ret == 1) {
 *u = malloc (sizeof (**u));
 if (*u == ((void*)0))
     krb5_errx (context, 1, "malloc: out of memory");
 **u = tmp;
    }
    return ret;
}
