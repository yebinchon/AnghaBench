
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileInfo_t ;
typedef int InfoError ;


 int ERROR_IF (int,int ,char*,char const*) ;
 int UTIL_isRegularFile (char const*) ;
 int getFileInfo_fileConfirmed (int *,char const*) ;
 int info_file_error ;

__attribute__((used)) static InfoError
getFileInfo(fileInfo_t* info, const char* srcFileName)
{
    ERROR_IF(!UTIL_isRegularFile(srcFileName),
            info_file_error, "Error : %s is not a file", srcFileName);
    return getFileInfo_fileConfirmed(info, srcFileName);
}
