
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_NONE ;
 int assertEmptyFile (char*) ;
 int assertEqualInt (int,int ) ;
 int assertMakeDir (char*,int) ;
 int chdir (char*) ;
 int failure (char*,int ) ;
 int systemf (char*,int ) ;
 int testprog ;
 int verify_tree (int ) ;

__attribute__((used)) static void
copy_basic(void)
{
 int r;







 assertMakeDir("plain", 0775);
 assertEqualInt(0, chdir("plain"));




 r = systemf("%s cf archive -C ../original f d l m s >pack.out 2>pack.err",
     testprog);
 failure("Error invoking \"%s cf\"", testprog);
 assertEqualInt(r, 0);


 assertEmptyFile("pack.err");
 assertEmptyFile("pack.out");




 r = systemf("%s xf archive >unpack.out 2>unpack.err", testprog);
 failure("Error invoking %s xf archive", testprog);
 assertEqualInt(r, 0);


 assertEmptyFile("unpack.err");
 assertEmptyFile("unpack.out");

 verify_tree(LIMIT_NONE);
 assertEqualInt(0, chdir(".."));
}
