
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int C_CLASS_WHITE ;
 int c_to_class (int ) ;

__attribute__((used)) static Char *
c_eword(Char *p, Char *high, int n)
{
    p++;

    while (n--) {
        int c_class;

        if (p >= high)
            break;


        c_class = c_to_class(*p);
        while ((p < high) && c_class == c_to_class(*p))
            p++;


        if (c_class != C_CLASS_WHITE)
            continue;


        c_class = c_to_class(*p);
        while ((p < high) && c_class == c_to_class(*p))
            p++;
    }

    p--;
    return(p);
}
