
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertIsHardlink (char*,char*) ;
 int assertMakeDir (char*,int) ;
 int assertMakeHardlink (char*,char*) ;
 int assertMakeSymlink (char*,char*,int ) ;
 scalar_t__ canSymlink () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (char*,int,int,int *) ;

__attribute__((used)) static const char *
make_files(void)
{
 FILE *f;


 f = fopen("file", "wb");
 assert(f != ((void*)0));
 assertEqualInt(10, fwrite("123456789", 1, 10, f));
 fclose(f);


 assertMakeHardlink("linkfile", "file");
 assertIsHardlink("file", "linkfile");


 if (canSymlink())
  assertMakeSymlink("symlink", "file", 0);


 assertMakeDir("dir", 0775);

 return canSymlink()
     ? "file linkfile symlink dir"
     : "file linkfile dir";
}
