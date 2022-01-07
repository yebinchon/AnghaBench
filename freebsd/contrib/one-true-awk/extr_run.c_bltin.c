
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uschar ;
typedef int time_t ;
struct TYPE_19__ {int nelem; } ;
struct TYPE_18__ {scalar_t__ sval; } ;
struct TYPE_17__ {struct TYPE_17__* nnext; } ;
typedef TYPE_1__ Node ;
typedef int FILE ;
typedef TYPE_2__ Cell ;
typedef int Awkfloat ;
typedef TYPE_3__ Array ;


 int EOF ;

 int FATAL (char*,int) ;
 int WARNING (char*) ;
 int WCOREDUMP (int) ;
 int WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int atan2 (int,int) ;
 int cos (int) ;
 int errcheck (int ,char*) ;
 TYPE_2__* execute (TYPE_1__*) ;
 int exp (int) ;
 int fflush (int *) ;
 int free (char*) ;
 int getfval (TYPE_2__*) ;
 int getsval (TYPE_2__*) ;
 TYPE_2__* gettemp () ;
 int isarr (TYPE_2__*) ;
 int islower (int ) ;
 int isrec (TYPE_2__*) ;
 int isupper (int ) ;
 int log (int) ;
 int modf (int,int*) ;
 int * openfile (int const,int ) ;
 int ptoi (TYPE_1__*) ;
 int random () ;
 int setfval (TYPE_2__*,int) ;
 int setsval (TYPE_2__*,char*) ;
 int sin (int) ;
 int sqrt (int) ;
 int srand_seed ;
 int srandom (unsigned long) ;
 int * stdout ;
 int strlen (int ) ;
 int system (int ) ;
 int tempfree (TYPE_2__*) ;
 int time (int *) ;
 char tolower (int ) ;
 char* tostring (int ) ;
 char toupper (int ) ;

Cell *bltin(Node **a, int n)
{
 Cell *x, *y;
 Awkfloat u;
 int t, i;
 Awkfloat tmp;
 char *p, *buf;
 Node *nextarg;
 FILE *fp;
 void flush_all(void);
 int status = 0;

 t = ptoi(a[0]);
 x = execute(a[1]);
 nextarg = a[1]->nnext;
 switch (t) {
 case 139:
  if (isarr(x))
   u = ((Array *) x->sval)->nelem;
  else
   u = strlen(getsval(x));
  break;
 case 138:
  u = errcheck(log(getfval(x)), "log"); break;
 case 140:
  modf(getfval(x), &u); break;
 case 143:
  u = errcheck(exp(getfval(x)), "exp"); break;
 case 133:
  u = errcheck(sqrt(getfval(x)), "sqrt"); break;
 case 134:
  u = sin(getfval(x)); break;
 case 144:
  u = cos(getfval(x)); break;
 case 146:
  if (nextarg == ((void*)0)) {
   WARNING("atan2 requires two arguments; returning 1.0");
   u = 1.0;
  } else {
   y = execute(a[1]->nnext);
   u = atan2(getfval(x), getfval(y));
   tempfree(y);
   nextarg = nextarg->nnext;
  }
  break;
 case 145:
  u = ~((int)getfval(x));
  break;
 case 147:
  if (nextarg == ((void*)0)) {
   WARNING("and requires two arguments; returning 0");
   u = 0;
   break;
  }
  i = ((int)getfval(x));
  while (nextarg != ((void*)0)) {
   y = execute(nextarg);
   i &= (int)getfval(y);
   tempfree(y);
   nextarg = nextarg->nnext;
  }
  u = i;
  break;
 case 141:
  if (nextarg == ((void*)0)) {
   WARNING("or requires two arguments; returning 0");
   u = 0;
   break;
  }
  i = ((int)getfval(x));
  while (nextarg != ((void*)0)) {
   y = execute(nextarg);
   i |= (int)getfval(y);
   tempfree(y);
   nextarg = nextarg->nnext;
  }
  u = i;
  break;
 case 128:
  if (nextarg == ((void*)0)) {
   WARNING("xor requires two arguments; returning 0");
   u = 0;
   break;
  }
  i = ((int)getfval(x));
  while (nextarg != ((void*)0)) {
   y = execute(nextarg);
   i ^= (int)getfval(y);
   tempfree(y);
   nextarg = nextarg->nnext;
  }
  u = i;
  break;
 case 137:
  if (nextarg == ((void*)0)) {
   WARNING("lshift requires two arguments; returning 0");
   u = 0;
   break;
  }
  y = execute(a[1]->nnext);
  u = ((int)getfval(x)) << ((int)getfval(y));
  tempfree(y);
  nextarg = nextarg->nnext;
  break;
 case 135:
  if (nextarg == ((void*)0)) {
   WARNING("rshift requires two arguments; returning 0");
   u = 0;
   break;
  }
  y = execute(a[1]->nnext);
  u = ((int)getfval(x)) >> ((int)getfval(y));
  tempfree(y);
  nextarg = nextarg->nnext;
  break;
 case 131:
  fflush(stdout);
  status = system(getsval(x));
  u = status;
  if (status != -1) {
   if (WIFEXITED(status)) {
    u = WEXITSTATUS(status);
   } else if (WIFSIGNALED(status)) {
    u = WTERMSIG(status) + 256;




   } else
    u = 0;
  }
  break;
 case 136:



  u = (Awkfloat) random() / (0x7fffffffL + 0x1UL);
  break;
 case 132:
  if (isrec(x))
   u = time((time_t *)0);
  else
   u = getfval(x);
  tmp = u;
  srandom((unsigned long) u);
  u = srand_seed;
  srand_seed = tmp;
  break;
 case 129:
 case 130:
  buf = tostring(getsval(x));
  if (t == 129) {
   for (p = buf; *p; p++)
    if (islower((uschar) *p))
     *p = toupper((uschar)*p);
  } else {
   for (p = buf; *p; p++)
    if (isupper((uschar) *p))
     *p = tolower((uschar)*p);
  }
  tempfree(x);
  x = gettemp();
  setsval(x, buf);
  free(buf);
  return x;
 case 142:
  if (isrec(x) || strlen(getsval(x)) == 0) {
   flush_all();
   u = 0;
  } else if ((fp = openfile(142, getsval(x))) == ((void*)0))
   u = EOF;
  else
   u = fflush(fp);
  break;
 default:
  FATAL("illegal function type %d", t);
  break;
 }
 tempfree(x);
 x = gettemp();
 setfval(x, u);
 if (nextarg != ((void*)0)) {
  WARNING("warning: function has too many arguments");
  for ( ; nextarg; nextarg = nextarg->nnext)
   execute(nextarg);
 }
 return(x);
}
