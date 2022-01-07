
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int done (int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;
 int* swablong (int*,int) ;
 int* swabquad (int*,int) ;
 int* swabshort (int*,int) ;

void
swabst(u_char *cp, u_char *sp)
{
 int n = 0;

 while (*cp) {
  switch (*cp) {
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   n = (n * 10) + (*cp++ - '0');
   continue;

  case 's': case 'w': case 'h':
   if (n == 0)
    n = 1;
   sp = swabshort(sp, n);
   break;

  case 'l':
   if (n == 0)
    n = 1;
   sp = swablong(sp, n);
   break;

  case 'q':
   if (n == 0)
    n = 1;
   sp = swabquad(sp, n);
   break;

  case 'b':
   if (n == 0)
    n = 1;
   sp += n;
   break;

  default:
   fprintf(stderr, "Unknown conversion character: %c\n",
       *cp);
   done(0);
   break;
  }
  cp++;
  n = 0;
 }
}
