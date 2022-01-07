
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertEmptyFile (char*) ;
 int assertEqualInt (int,int ) ;
 int assertMakeDir (char const*,int) ;
 int failure (char*,int ,char const*) ;
 int systemf (char*,int ,char const*,...) ;
 int testprog ;

__attribute__((used)) static void
run_tar(const char *target, const char *pack_options,
    const char *unpack_options, const char *flist)
{
 int r;

 assertMakeDir(target, 0775);


 r = systemf("%s cf - %s %s >%s/archive 2>%s/pack.err", testprog, pack_options, flist, target, target);
 failure("Error invoking %s cf -", testprog, pack_options);
 assertEqualInt(r, 0);

 assertChdir(target);


 assertEmptyFile("pack.err");




 r = systemf("%s xf archive %s >unpack.out 2>unpack.err",
     testprog, unpack_options);
 failure("Error invoking %s xf archive %s", testprog, unpack_options);
 assertEqualInt(r, 0);


 assertEmptyFile("unpack.err");
 assertChdir("..");
}
