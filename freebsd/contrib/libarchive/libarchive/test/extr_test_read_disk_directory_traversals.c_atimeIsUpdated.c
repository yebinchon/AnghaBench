
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_atime; } ;


 int assertMakeFile (char const*,int,char*) ;
 int assertTextFileContents (char*,char const*) ;
 int assertUtimes (char const*,int,int ,int,int ) ;
 int free (char*) ;
 int isdigit (char) ;
 char* slurpfile (int *,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int systemf (char*) ;

__attribute__((used)) static int
atimeIsUpdated(void)
{
 const char *fn = "fs_noatime";
 struct stat st;
 if (!assertMakeFile(fn, 0666, "a"))
  return (0);
 if (!assertUtimes(fn, 1, 0, 1, 0))
  return (0);

 if (!assertTextFileContents("a", fn))
  return (0);
 if (stat(fn, &st) != 0)
  return (0);

 if (st.st_atime > 1)
  return (1);
 return (0);
}
