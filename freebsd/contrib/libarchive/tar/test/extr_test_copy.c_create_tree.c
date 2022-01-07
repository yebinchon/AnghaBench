
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int assertEqualInt (int ,int ) ;
 int assertMakeDir (char*,int) ;
 int assertMakeFile (char*,int,char*) ;
 int assertMakeHardlink (char*,char*) ;
 int assertMakeSymlink (char*,char*,int ) ;
 scalar_t__ canSymlink () ;
 int chdir (char*) ;
 int compute_filenames () ;
 int compute_loop_max () ;
 int failure (char*,...) ;
 char** filenames ;
 int skipping (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static void
create_tree(void)
{
 char buff[260];
 char buff2[260];
 int i;
 int LOOP_MAX;

 compute_filenames();


 if (!canSymlink()) {
  skipping("Symlink checks");
 }

 assertMakeDir("original", 0775);
 assertEqualInt(0, chdir("original"));
 LOOP_MAX = compute_loop_max();

 assertMakeDir("f", 0775);
 assertMakeDir("l", 0775);
 assertMakeDir("m", 0775);
 assertMakeDir("s", 0775);
 assertMakeDir("d", 0775);

 for (i = 1; i < LOOP_MAX; i++) {
  failure("Internal sanity check failed: i = %d", i);
  assert(filenames[i] != ((void*)0));

  sprintf(buff, "f/%s", filenames[i]);
  assertMakeFile(buff, 0777, buff);


  sprintf(buff2, "l/%s", filenames[i]);
  assertMakeHardlink(buff2, buff);


  sprintf(buff2, "m/%s", filenames[i]);
  assertMakeHardlink(buff2, buff);

  if (canSymlink()) {

   sprintf(buff, "s/%s", filenames[i]);
   sprintf(buff2, "../f/%s", filenames[i]);
   failure("buff=\"%s\" buff2=\"%s\"", buff, buff2);
   assertMakeSymlink(buff, buff2, 0);
  }

  buff[0] = 'd';
  failure("buff=\"%s\"", buff);
  assertMakeDir(buff, 0775);
 }

 assertEqualInt(0, chdir(".."));
}
