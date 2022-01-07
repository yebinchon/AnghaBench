
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;
typedef int FICL_INT ;


 int FICL_FALSE ;
 int FICL_TRUE ;
 int S_ISDIR (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int stackPopINT (int ) ;
 int stackPushINT (int ,int ) ;
 int vmCheckStack (TYPE_1__*,int,int) ;

__attribute__((used)) static void isdirQuestion(FICL_VM *pVM)
{
    struct stat sb;
    FICL_INT flag;
    int fd;





    fd = stackPopINT(pVM->pStack);
    flag = FICL_FALSE;
    do {
        if (fd < 0)
            break;
        if (fstat(fd, &sb) < 0)
            break;
        if (!S_ISDIR(sb.st_mode))
            break;
        flag = FICL_TRUE;
    } while (0);
    stackPushINT(pVM->pStack, flag);
}
