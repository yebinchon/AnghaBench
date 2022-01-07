
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 scalar_t__ Strchr (scalar_t__*,scalar_t__) ;

__attribute__((used)) static Char *
c_endword(Char *p, Char *high, int n, Char *delim)
{
    Char inquote = 0;
    p++;

    while (n--) {
        while (p < high) {
   if (!Strchr(delim, *p) || *(p-1) == (Char)'\\')
     break;
   p++;
        }
 while (p < high) {
   if ((*p == (Char)'\'' || *p == (Char)'"')) {
     if (inquote || *(p-1) != (Char)'\\') {
       if (inquote == 0) inquote = *p;
       else if (inquote == *p) inquote = 0;
     }
   }

   if (!inquote && Strchr(delim, *p) && *(p-1) != (Char)'\\')
     break;
   p++;
 }
    }

    p--;
    return(p);
}
