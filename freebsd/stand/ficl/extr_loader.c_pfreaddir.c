
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct stat {int st_blksize; } ;
struct dirent {int d_name; scalar_t__ d_reclen; } ;
typedef int off_t ;
struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int free (char*) ;
 int fstat (int,struct stat*) ;
 int getdents (int,char*,int) ;
 int getpagesize () ;
 int lseek (int,int,int ) ;
 char* malloc (int) ;
 struct dirent* readdirfd (int) ;
 int stackPopINT (int ) ;
 int stackPushINT (int ,int ) ;
 int stackPushPtr (int ,int ) ;
 int strlen (int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void pfreaddir(FICL_VM *pVM)
{
    struct dirent *d;
    int fd;





    fd = stackPopINT(pVM->pStack);
    d = readdirfd(fd);

    if (d != ((void*)0)) {
        stackPushPtr(pVM->pStack, d->d_name);
        stackPushINT(pVM->pStack, strlen(d->d_name));
        stackPushINT(pVM->pStack, FICL_TRUE);
    } else {
        stackPushINT(pVM->pStack, FICL_FALSE);
    }
}
