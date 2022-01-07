
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assertChdir (char const*) ;
 int assertEqualInt (int ,int) ;
 int assertMakeDir (char const*,int) ;
 int extract_reference_file (char*) ;
 int systemf (char*,int ,char const*) ;
 int testprog ;

__attribute__((used)) static void
unpack(const char *dirname, const char *option)
{
 int r;

 assertMakeDir(dirname, 0755);
 assertChdir(dirname);
 extract_reference_file("test_option_f.cpio");
 r = systemf("%s -i %s < test_option_f.cpio > copy-no-a.out 2>copy-no-a.err", testprog, option);
 assertEqualInt(0, r);
 assertChdir("..");
}
