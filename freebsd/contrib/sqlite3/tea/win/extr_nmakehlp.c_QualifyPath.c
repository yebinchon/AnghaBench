
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentDirectory (int ,char*) ;
 int MAX_PATH ;
 int PathCanonicalize (char*,char*) ;
 int PathCombine (char*,char*,char const*) ;
 int printf (char*,char*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
QualifyPath(
    const char *szPath)
{
    char szCwd[MAX_PATH + 1];
    char szTmp[MAX_PATH + 1];
    char *p;
    GetCurrentDirectory(MAX_PATH, szCwd);
    while ((p = strchr(szPath, '/')) && *p)
 *p = '\\';
    PathCombine(szTmp, szCwd, szPath);
    PathCanonicalize(szCwd, szTmp);
    printf("%s\n", szCwd);
    return 0;
}
