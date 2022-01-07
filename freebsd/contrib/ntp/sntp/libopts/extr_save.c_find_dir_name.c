
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {size_t save_opts; } ;
struct TYPE_9__ {char** papzHomeList; char const* pzProgName; TYPE_3__ specOptIdx; TYPE_2__* pOptDesc; } ;
typedef TYPE_4__ tOptions ;
struct TYPE_6__ {char* argString; } ;
struct TYPE_7__ {TYPE_1__ optArg; } ;


 scalar_t__ AGALOC (size_t,char*) ;
 int AO_NAME_LIMIT ;
 int AO_NAME_SIZE ;
 int DIRCH ;
 size_t NO_EQUIVALENT ;
 char const NUL ;
 int fprintf (int ,char*,char const*) ;
 char* getenv (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 int sprintf (char*,char*,char*,char const*) ;
 int stderr ;
 char* strchr (char const*,int ) ;
 int strlen (char const*) ;
 char* zNotDef ;
 char* zsave_warn ;

__attribute__((used)) static char const *
find_dir_name(tOptions * opts, int * p_free)
{
    char const * pzDir;

    if ( (opts->specOptIdx.save_opts == NO_EQUIVALENT)
       || (opts->specOptIdx.save_opts == 0))
        return ((void*)0);

    pzDir = opts->pOptDesc[ opts->specOptIdx.save_opts ].optArg.argString;
    if ((pzDir != ((void*)0)) && (*pzDir != NUL))
        return pzDir;





    {
        char const * const * papz = opts->papzHomeList;
        if (papz == ((void*)0))
            return ((void*)0);

        while (papz[1] != ((void*)0)) papz++;
        pzDir = *papz;
    }




    if (*pzDir != '$')
        return pzDir;

    {
        char const * pzEndDir = strchr(++pzDir, DIRCH);
        char * pzFileName;
        char * pzEnv;

        if (pzEndDir != ((void*)0)) {
            char z[ AO_NAME_SIZE ];
            if ((pzEndDir - pzDir) > AO_NAME_LIMIT )
                return ((void*)0);
            memcpy(z, pzDir, (size_t)(pzEndDir - pzDir));
            z[pzEndDir - pzDir] = NUL;
            pzEnv = getenv(z);
        } else {





            pzEnv = getenv(pzDir);
        }

        if (pzEnv == ((void*)0)) {
            fprintf(stderr, zsave_warn, opts->pzProgName);
            fprintf(stderr, zNotDef, pzDir);
            return ((void*)0);
        }

        if (pzEndDir == ((void*)0))
            return pzEnv;

        {
            size_t sz = strlen(pzEnv) + strlen(pzEndDir) + 2;
            pzFileName = (char *)AGALOC(sz, "dir name");
        }

        if (pzFileName == ((void*)0))
            return ((void*)0);

        *p_free = 1;




        sprintf(pzFileName, "%s/%s", pzEnv, pzEndDir);
        return pzFileName;
    }
}
