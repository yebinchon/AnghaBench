
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* (* End ) (int *,char*) ;int (* Update ) (int *,unsigned char*,unsigned int) ;int (* Init ) (int *) ;} ;
typedef int DIGEST_CTX ;
typedef TYPE_1__ Algorithm_t ;


 int BUFSIZ ;
 int HEX_DIGEST_LENGTH ;
 int err (int,char*) ;
 unsigned int fread (unsigned char*,int,int,int ) ;
 unsigned int fwrite (unsigned char*,int,unsigned int,int ) ;
 int printf (char*,char*) ;
 int stdin ;
 int stdout ;
 int stub1 (int *) ;
 int stub2 (int *,unsigned char*,unsigned int) ;
 char* stub3 (int *,char*) ;
 char* stub4 (int *,char*) ;

__attribute__((used)) static void
MDFilter(const Algorithm_t *alg, int tee)
{
 DIGEST_CTX context;
 unsigned int len;
 unsigned char buffer[BUFSIZ];
 char buf[HEX_DIGEST_LENGTH];

 alg->Init(&context);
 while ((len = fread(buffer, 1, BUFSIZ, stdin))) {
  if (tee && len != fwrite(buffer, 1, len, stdout))
   err(1, "stdout");
  alg->Update(&context, buffer, len);
 }
 printf("%s\n", alg->End(&context, buf));
}
