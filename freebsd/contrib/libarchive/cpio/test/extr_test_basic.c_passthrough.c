
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertEqualInt (int,int ) ;
 int assertMakeDir (char const*,int) ;
 int assertTextFileContents (char*,char*) ;
 int failure (char*,int ,...) ;
 int systemf (char*,int ,char const*,char const*,char const*) ;
 int testprog ;
 int verify_files (char*) ;

__attribute__((used)) static void
passthrough(const char *target)
{
 int r;

 if (!assertMakeDir(target, 0775))
  return;




 r = systemf("%s -p %s <filelist >%s/stdout 2>%s/stderr",
     testprog, target, target, target);
 failure("Error invoking %s -p", testprog);
 assertEqualInt(r, 0);

 assertChdir(target);


 failure("Error invoking %s -p in dir %s",
     testprog, target);
 assertTextFileContents("1 block\n", "stderr");

 verify_files("passthrough");
 assertChdir("..");
}
