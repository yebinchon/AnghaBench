
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* sval; int nval; } ;
typedef TYPE_1__ Cell ;


 int FATAL (char*) ;
 TYPE_1__ dollar0 ;
 char* fields ;
 TYPE_1__** fldtab ;
 int makefields (int,int) ;
 scalar_t__ malloc (int) ;
 int nfields ;
 char* record ;
 int tostring (char*) ;

void recinit(unsigned int n)
{
 if ( (record = (char *) malloc(n)) == ((void*)0)
   || (fields = (char *) malloc(n+1)) == ((void*)0)
   || (fldtab = (Cell **) malloc((nfields+2) * sizeof(Cell *))) == ((void*)0)
   || (fldtab[0] = (Cell *) malloc(sizeof(Cell))) == ((void*)0) )
  FATAL("out of space for $0 and fields");
 *record = '\0';
 *fldtab[0] = dollar0;
 fldtab[0]->sval = record;
 fldtab[0]->nval = tostring("0");
 makefields(1, nfields);
}
