
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_nlink; } ;


 int assertEqualInt (int ,int ) ;
 int stat (char const*,struct stat*) ;

__attribute__((used)) static int
nlinks(const char *p)
{
 struct stat st;
 assertEqualInt(0, stat(p, &st));
 return st.st_nlink;
}
