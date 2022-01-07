
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertEqualInt (int,int ) ;
 int assertFileNLinks (char*,int) ;
 int assertFileSize (char*,int) ;
 int assertIsDir (char*,int) ;
 int assertIsHardlink (char*,char*) ;
 int assertIsReg (char*,int) ;
 int assertIsSymlink (char*,char*,int ) ;
 int assertMakeDir (char const*,int) ;
 int assertTextFileContents (char const*,char*) ;
 scalar_t__ canSymlink () ;
 int extract_reference_file (char const*) ;
 int failure (char*,char const*,...) ;
 int systemf (char*,int ,char const*,char const*) ;
 int testprog ;

__attribute__((used)) static void
unpack_test(const char *from, const char *options, const char *se)
{
 int r;


 assertMakeDir(from, 0775);
 assertChdir(from);




 extract_reference_file(from);
 r = systemf("%s -i %s < %s >unpack.out 2>unpack.err",
     testprog, options, from);
 failure("Error invoking %s -i %s < %s",
     testprog, options, from);
 assertEqualInt(r, 0);


 if (canSymlink()) {
  failure("Error invoking %s -i %s < %s",
      testprog, options, from);
  assertTextFileContents(se, "unpack.err");
 }






 assertIsReg("file", 0644);
 failure("%s", from);
 assertFileSize("file", 10);
 assertFileSize("linkfile", 10);
 failure("%s", from);
 assertFileNLinks("file", 2);


 failure("%s", from);
 assertIsHardlink("linkfile", "file");
 assertFileSize("file", 10);
 assertFileSize("linkfile", 10);


 if (canSymlink())
  assertIsSymlink("symlink", "file", 0);


 assertIsDir("dir", 0775);

 assertChdir("..");
}
