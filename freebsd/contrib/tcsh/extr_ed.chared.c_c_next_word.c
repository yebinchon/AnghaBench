
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int C_CLASS_WHITE ;
 int VImode ;
 int c_to_class (int ) ;
 scalar_t__ isword (int ) ;

__attribute__((used)) static Char *
c_next_word(Char *p, Char *high, int n)
{
    if (!VImode) {
 while (n--) {
     while ((p < high) && !isword(*p))
  p++;
     while ((p < high) && isword(*p))
  p++;
 }
 if (p > high)
     p = high;

 return(p);
    }

    while (n--) {
        int c_class;

        if (p >= high)
            break;


        c_class = c_to_class(*p);
        while ((p < high) && c_class == c_to_class(*p))
            p++;


        if (c_class == C_CLASS_WHITE)
            continue;


        while ((p < high) && c_to_class(*p) == C_CLASS_WHITE)
            p++;
    }

    p--;

    return (p);
}
