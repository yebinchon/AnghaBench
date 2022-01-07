
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertEqualInt (int,int ) ;
 int assertMakeDir (char const*,int) ;
 int assertTextFileContents (char const*,char*) ;
 int failure (char*,char const*,char const*,...) ;
 int systemf (char*,int ,char const*,...) ;
 int testprog ;
 int verify_files (char const*) ;

__attribute__((used)) static void
basic_cpio(const char *target,
    const char *pack_options,
    const char *unpack_options,
    const char *se, const char *se2)
{
 int r;

 if (!assertMakeDir(target, 0775))
     return;


 r = systemf("%s -R 1000:1000 -o %s < filelist >%s/archive 2>%s/pack.err",
     testprog, pack_options, target, target);
 failure("Error invoking %s -o %s", testprog, pack_options);
 assertEqualInt(r, 0);

 assertChdir(target);


 failure("Expected: %s, options=%s", se, pack_options);
 assertTextFileContents(se, "pack.err");




 r = systemf("%s -i %s< archive >unpack.out 2>unpack.err",
     testprog, unpack_options);
 failure("Error invoking %s -i %s", testprog, unpack_options);
 assertEqualInt(r, 0);


 failure("Error invoking %s -i %s in dir %s", testprog, unpack_options, target);
 assertTextFileContents(se2, "unpack.err");

 verify_files(pack_options);

 assertChdir("..");
}
