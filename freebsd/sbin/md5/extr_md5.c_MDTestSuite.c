
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int ** TestOutput; int (* Data ) (char*,int ,char*) ;} ;
typedef TYPE_1__ Algorithm_t ;


 int HEX_DIGEST_LENGTH ;
 int MDTESTCOUNT ;
 char** MDTestInput ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,int ) ;
 int strlen (char*) ;
 int stub1 (char*,int ,char*) ;

__attribute__((used)) static void
MDTestSuite(const Algorithm_t *alg)
{
 int i;
 char buffer[HEX_DIGEST_LENGTH];

 printf("%s test suite:\n", alg->name);
 for (i = 0; i < MDTESTCOUNT; i++) {
  (*alg->Data)(MDTestInput[i], strlen(MDTestInput[i]), buffer);
  printf("%s (\"%s\") = %s", alg->name, MDTestInput[i], buffer);
  if (strcmp(buffer, (*alg->TestOutput)[i]) == 0)
   printf(" - verified correct\n");
  else
   printf(" - INCORRECT RESULT!\n");
 }
}
