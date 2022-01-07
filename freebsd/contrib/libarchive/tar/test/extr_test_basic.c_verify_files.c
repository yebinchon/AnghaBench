
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertFileContents (char*,int,char*) ;
 int assertFileNLinks (char*,int) ;
 int assertFileSize (char*,int) ;
 int assertIsDir (char*,int) ;
 int assertIsHardlink (char*,char*) ;
 int assertIsReg (char*,int) ;
 int assertIsSymlink (char*,char*,int ) ;
 scalar_t__ canSymlink () ;
 int failure (char*,char const*) ;

__attribute__((used)) static void
verify_files(const char *target)
{
 assertChdir(target);


 failure("%s", target);
 assertIsReg("file", -1);
 failure("%s", target);
 assertFileSize("file", 10);
 failure("%s", target);
 assertFileContents("123456789", 10, "file");
 failure("%s", target);
 assertFileNLinks("file", 2);


 failure("%s", target);
 assertIsReg("linkfile", -1);
 failure("%s", target);
 assertFileSize("linkfile", 10);
 assertFileContents("123456789", 10, "linkfile");
 assertFileNLinks("linkfile", 2);
 assertIsHardlink("file", "linkfile");


 if (canSymlink())
  assertIsSymlink("symlink", "file", 0);


 failure("%s", target);
 assertIsDir("dir", 0775);
 assertChdir("..");
}
