
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {char* d_name; } ;
typedef scalar_t__ ssize_t ;
typedef int fbuf ;
typedef int DIR ;


 int MAXPATHLEN ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ trust_file_add (char*) ;

__attribute__((used)) static size_t
trust_dir_add(const char *trust)
{
 char fbuf[MAXPATHLEN];
 DIR *dh;
 struct dirent *de;
 struct stat st;
 ssize_t sz;
 size_t num;

 if (!(dh = opendir(trust)))
  return (0);
 for (num = 0, de = readdir(dh); de; de = readdir(dh)) {
  if (de->d_name[0] == '.')
   continue;
  sz = snprintf(fbuf, sizeof(fbuf), "%s/%s", trust, de->d_name);
  if (sz >= (ssize_t)sizeof(fbuf))
   continue;
  if (stat(fbuf, &st) < 0 || S_ISDIR(st.st_mode))
   continue;
  num += trust_file_add(fbuf);
 }
 closedir(dh);
 return (num);
}
