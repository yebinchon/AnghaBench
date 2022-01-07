
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int (* Data ) (char const*,size_t,char*) ;} ;
typedef TYPE_1__ Algorithm_t ;


 int HEX_DIGEST_LENGTH ;
 scalar_t__ checkAgainst ;
 int checksFailed ;
 int printf (char*,...) ;
 scalar_t__ qflag ;
 scalar_t__ rflag ;
 scalar_t__ strcasecmp (char*,scalar_t__) ;
 size_t strlen (char const*) ;
 int stub1 (char const*,size_t,char*) ;

__attribute__((used)) static void
MDString(const Algorithm_t *alg, const char *string)
{
 size_t len = strlen(string);
 char buf[HEX_DIGEST_LENGTH];

 alg->Data(string,len,buf);
 if (qflag)
  printf("%s", buf);
 else if (rflag)
  printf("%s \"%s\"", buf, string);
 else
  printf("%s (\"%s\") = %s", alg->name, string, buf);
 if (checkAgainst && strcasecmp(buf,checkAgainst) != 0)
 {
  checksFailed++;
  if (!qflag)
   printf(" [ failed ]");
 }
 printf("\n");
}
