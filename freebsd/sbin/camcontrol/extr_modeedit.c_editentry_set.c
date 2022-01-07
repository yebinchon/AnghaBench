
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long ivalue; char* svalue; } ;
struct editentry {int type; TYPE_1__ value; int size; int editable; } ;


 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 int EX_OSERR ;
 long long RESOLUTION_MAX (int ) ;
 int assert (int ) ;
 int bzero (char*,int ) ;
 struct editentry* editentry_lookup (char*) ;
 int editlist_changed ;
 int err (int ,int *) ;
 int free (char*) ;
 char* malloc (int ) ;
 int returnerr (int ) ;
 int strncmp (char*,char*,int ) ;
 int strncpy (char*,char*,int ) ;
 long long strtoll (char*,char**,int ) ;
 int warnx (char*,long long,char*,long long) ;

__attribute__((used)) static int
editentry_set(char *name, char *newvalue, int editonly)
{
 struct editentry *dest;
 char *cval;
 char *convertend;
 long long ival, newival;
 int resolution;







 assert(newvalue != ((void*)0));
 if (*newvalue == '\0')
  return (0);

 if ((dest = editentry_lookup(name)) == ((void*)0))
  returnerr(ENOENT);
 if (!dest->editable && editonly)
  returnerr(EPERM);

 switch (dest->type) {
 case 'i':
 case 'b':
 case 't':

  resolution = (dest->type == 'i')? 8: 1;
  ival = strtoll(newvalue, &convertend, 0);
  if (*convertend != '\0')
   returnerr(EINVAL);
  if (ival > ((1LL << (resolution * (dest->size))) - 1) || ival < 0) {
   newival = (ival < 0) ? 0 : ((1LL << (resolution * (dest->size))) - 1);
   warnx("value %lld is out of range for entry %s; "
       "clipping to %lld", ival, name, newival);
   ival = newival;
  }
  if (dest->value.ivalue != ival)
   editlist_changed = 1;
  dest->value.ivalue = ival;
  break;

 case 'c':
 case 'z':
  if ((cval = malloc(dest->size + 1)) == ((void*)0))
   err(EX_OSERR, ((void*)0));
  bzero(cval, dest->size + 1);
  strncpy(cval, newvalue, dest->size);
  if (dest->type == 'z') {

   char *convertend2;

   for (convertend2 = cval + dest->size;
       convertend2 >= cval; convertend2--) {
    if (*convertend2 == ' ')
     *convertend2 = '\0';
    else if (*convertend2 != '\0')
     break;
   }
  }
  if (strncmp(dest->value.svalue, cval, dest->size) == 0) {

   free(cval);
   break;
  }
  if (dest->value.svalue != ((void*)0)) {

   free(dest->value.svalue);
   dest->value.svalue = ((void*)0);
  }
  dest->value.svalue = cval;
  editlist_changed = 1;
  break;

 default:
  ;
 }

 return (0);

}
