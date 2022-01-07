
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int teOptFileType ;
struct TYPE_7__ {int pzProgName; } ;
typedef TYPE_2__ tOptions ;
struct TYPE_6__ {char* argString; } ;
struct TYPE_8__ {TYPE_1__ optArg; } ;
typedef TYPE_3__ tOptDesc ;
struct stat {int st_mode; } ;


 char* AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 int DIRCH ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int FTYPE_MODE_EXIST_MASK ;



 char NUL ;
 int S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 scalar_t__ errno ;
 int fserr_exit (int ,char*,char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int stat (char const*,struct stat*) ;
 char* strrchr (char const*,int ) ;

__attribute__((used)) static void
check_existence(teOptFileType ftype, tOptions * pOpts, tOptDesc * pOD)
{
    char const * fname = pOD->optArg.argString;
    struct stat sb;

    errno = 0;

    switch (ftype & FTYPE_MODE_EXIST_MASK) {
    case 128:
        if ((stat(fname, &sb) == 0) || (errno != ENOENT)) {
            if (errno == 0)
                errno = EINVAL;
            fserr_exit(pOpts->pzProgName, "stat", fname);

        }


    default:
    case 130:
    {
        char * p = strrchr(fname, DIRCH);
        size_t l;

        if (p == ((void*)0))




            break;

        l = (size_t)(p - fname);
        p = AGALOC(l + 1, "fname");
        memcpy(p, fname, l);
        p[l] = NUL;

        if ((stat(p, &sb) != 0) || (errno = EINVAL, ! S_ISDIR(sb.st_mode)))
            fserr_exit(pOpts->pzProgName, "stat", p);


        AGFREE(p);
        break;
    }

    case 129:
        if ( (stat(fname, &sb) != 0)
           || (errno = EINVAL, ! S_ISREG(sb.st_mode)) )
            fserr_exit(pOpts->pzProgName, "stat", fname);


        break;
    }
}
