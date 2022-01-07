
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
c_prev_word(Char *p, Char *low, int n)
{
    p--;

    if (!VImode) {
 while (n--) {
     while ((p >= low) && !isword(*p))
  p--;
     while ((p >= low) && isword(*p))
  p--;
 }


 p++;
 if (p < low)
     p = low;

 return(p);
    }

    while (n--) {
        int c_class;

        if (p < low)
            break;


        c_class = c_to_class(*p);
        while ((p >= low) && c_class == c_to_class(*p))
            p--;


        if (c_class != C_CLASS_WHITE)
            continue;


        c_class = c_to_class(*p);
        while ((p >= low) && c_class == c_to_class(*p))
            p--;
    }

    p++;

    return (p);
}
