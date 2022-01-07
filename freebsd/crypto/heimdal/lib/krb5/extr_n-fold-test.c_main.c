
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase {char* str; int n; int* res; } ;


 int MAXSIZE ;
 int _krb5_n_fold (char*,int ,unsigned char*,int) ;
 int errx (int,char*) ;
 scalar_t__ memcmp (unsigned char*,int*,int) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 struct testcase* tests ;

int
main(int argc, char **argv)
{
    unsigned char data[MAXSIZE];
    struct testcase *t;
    int ret = 0;

    for (t = tests; t->str; ++t) {
 int i;

 ret = _krb5_n_fold (t->str, strlen(t->str), data, t->n);
 if (ret)
     errx(1, "out of memory");
 if (memcmp (data, t->res, t->n) != 0) {
     printf ("n-fold(\"%s\", %d) failed\n", t->str, t->n);
     printf ("should be: ");
     for (i = 0; i < t->n; ++i)
  printf ("%02x", t->res[i]);
     printf ("\nresult was: ");
     for (i = 0; i < t->n; ++i)
  printf ("%02x", data[i]);
     printf ("\n");
     ret = 1;
 }
    }
    return ret;
}
