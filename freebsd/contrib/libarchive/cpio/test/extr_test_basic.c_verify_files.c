
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertFileNLinks (char*,int) ;
 int assertFileSize (char*,int) ;
 int assertIsDir (char*,int) ;
 int assertIsHardlink (char*,char*) ;
 int assertIsReg (char*,int) ;
 int assertIsSymlink (char*,char*,int ) ;
 scalar_t__ canSymlink () ;
 int failure (char const*) ;

__attribute__((used)) static void
verify_files(const char *msg)
{





 failure(msg);
 assertIsReg("file", 0644);
 failure(msg);
 assertFileSize("file", 10);
 failure(msg);
 assertFileNLinks("file", 2);


 failure(msg);
 assertIsHardlink("linkfile", "file");


 if (canSymlink())
  assertIsSymlink("symlink", "file", 0);


 failure(msg);
 assertIsReg("file2", 0777);
 failure(msg);
 assertFileSize("file2", 10);
 failure(msg);
 assertFileNLinks("file2", 1);


 assertIsDir("dir", 0775);
}
