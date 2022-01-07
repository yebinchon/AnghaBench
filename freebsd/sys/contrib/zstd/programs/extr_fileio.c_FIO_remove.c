
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAYLEVEL (int,char*,char const*) ;
 int UTIL_isRegularFile (char const*) ;
 int _S_IWRITE ;
 int chmod (char const*,int ) ;
 int remove (char const*) ;

__attribute__((used)) static int FIO_remove(const char* path)
{
    if (!UTIL_isRegularFile(path)) {
        DISPLAYLEVEL(2, "zstd: Refusing to remove non-regular file %s \n", path);
        return 0;
    }





    return remove(path);
}
