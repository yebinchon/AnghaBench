
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* sval; int tval; } ;


 int DONTFREE ;
 int FATAL (char*,char*) ;
 int* NF ;
 int REC ;
 int STR ;
 int adjbuf (char**,int *,int,int ,char**,char*) ;
 int donerec ;
 int dprintf (char*) ;
 TYPE_1__** fldtab ;
 scalar_t__ freeable (TYPE_1__*) ;
 char* getsval (TYPE_1__*) ;
 int inputFS ;
 TYPE_1__* ofsloc ;
 char* record ;
 int recsize ;
 int strlen (char*) ;
 int xfree (char*) ;

void recbld(void)
{
 int i;
 char *r, *p;
 char *sep = getsval(ofsloc);

 if (donerec == 1)
  return;
 r = record;
 for (i = 1; i <= *NF; i++) {
  p = getsval(fldtab[i]);
  if (!adjbuf(&record, &recsize, 1+strlen(p)+r-record, recsize, &r, "recbld 1"))
   FATAL("created $0 `%.30s...' too long", record);
  while ((*r = *p++) != 0)
   r++;
  if (i < *NF) {
   if (!adjbuf(&record, &recsize, 2+strlen(sep)+r-record, recsize, &r, "recbld 2"))
    FATAL("created $0 `%.30s...' too long", record);
   for (p = sep; (*r = *p++) != 0; )
    r++;
  }
 }
 if (!adjbuf(&record, &recsize, 2+r-record, recsize, &r, "recbld 3"))
  FATAL("built giant record `%.30s...'", record);
 *r = '\0';
    dprintf( ("in recbld inputFS=%s, fldtab[0]=%p\n", inputFS, (void*)fldtab[0]) );

 if (freeable(fldtab[0]))
  xfree(fldtab[0]->sval);
 fldtab[0]->tval = REC | STR | DONTFREE;
 fldtab[0]->sval = record;

    dprintf( ("in recbld inputFS=%s, fldtab[0]=%p\n", inputFS, (void*)fldtab[0]) );
    dprintf( ("recbld = |%s|\n", record) );
 donerec = 1;
}
