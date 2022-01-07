
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_NOINPUT ;
 int EX_USAGE ;
 int VEF_VERBOSE ;
 int err (int ,char*,char const*) ;
 int errx (int ,char*,char const*) ;
 int free (unsigned char*) ;
 scalar_t__ manifest_open (char const*,unsigned char*) ;
 unsigned char* verify_signed (char const*,int ) ;
 int yyparse () ;

__attribute__((used)) static int
veriexec_load(const char *manifest)
{
 unsigned char *content;
 int rc;

 content = verify_signed(manifest, VEF_VERBOSE);
 if (!content)
  errx(EX_USAGE, "cannot verify %s", manifest);
 if (manifest_open(manifest, content)) {
  rc = yyparse();
 } else {
  err(EX_NOINPUT, "cannot load %s", manifest);
 }
 free(content);
 return (rc);
}
