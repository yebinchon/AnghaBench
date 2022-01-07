
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int* Strend (int*) ;
 int TRIM ;

__attribute__((used)) static int
is_suffix(Char *check, Char *template)
{
    Char *t, *c;

    t = Strend(template);
    c = Strend(check);
    for (;;) {
 if (t == template)
     return 1;
 if (c == check || (*--t & TRIM) != (*--c & TRIM))
     return 0;
    }
}
