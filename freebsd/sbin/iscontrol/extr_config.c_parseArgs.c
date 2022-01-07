
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tokenID; } ;
typedef TYPE_1__ textkey_t ;
typedef int isc_opt_t ;


 scalar_t__ isspace (unsigned char) ;
 TYPE_1__* keyLookup (char*) ;
 int setOption (int *,int ,char*) ;
 char* strchr (char*,char) ;

void
parseArgs(int nargs, char **args, isc_opt_t *op)
{
     char **ar;
     char *p, *v;
     textkey_t *tk;

     for(ar = args; nargs > 0; nargs--, ar++) {
   p = strchr(*ar, '=');
   if(p == ((void*)0))
        continue;
   *p = 0;
   v = p + 1;
   while(isspace((unsigned char)*--p))
        *p = 0;
   while(isspace((unsigned char)*v))
        v++;
   if((tk = keyLookup(*ar)) == ((void*)0))
        continue;
   setOption(op, tk->tokenID, v);
     }
}
