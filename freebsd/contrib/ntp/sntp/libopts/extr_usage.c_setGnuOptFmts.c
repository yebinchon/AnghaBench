
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fOptSet; } ;
typedef TYPE_1__ tOptions ;
struct TYPE_5__ {char* pzStr; char const* pzReq; char* pzNum; char* pzKey; char* pzBool; char* pzOpt; char const* pzNo; void* pzOptFmt; int pzSpc; int pzNoF; int pzBrk; int pzNest; int pzFile; int pzTime; int pzKeyL; } ;





 TYPE_3__ argTypes ;
 char* zGnuBoolArg ;
 int zGnuBreak ;
 int zGnuFileArg ;
 char* zGnuKeyArg ;
 int zGnuKeyLArg ;
 int zGnuNestArg ;
 char* zGnuNumArg ;
 char* zGnuOptArg ;
 void* zGnuOptFmt ;
 char* zGnuStrArg ;
 int zGnuTimeArg ;
 char* zNoRq_ShrtTtl ;
 void* zShrtGnuOptFmt ;
 int zSixSpaces ;
 int zThreeSpaces ;

__attribute__((used)) static int
setGnuOptFmts(tOptions * opts, char const ** ptxt)
{
    static char const zOneSpace[] = " ";
    int flen = 22;
    *ptxt = zNoRq_ShrtTtl;

    argTypes.pzStr = zGnuStrArg;
    argTypes.pzReq = zOneSpace;
    argTypes.pzNum = zGnuNumArg;
    argTypes.pzKey = zGnuKeyArg;
    argTypes.pzKeyL = zGnuKeyLArg;
    argTypes.pzTime = zGnuTimeArg;
    argTypes.pzFile = zGnuFileArg;
    argTypes.pzBool = zGnuBoolArg;
    argTypes.pzNest = zGnuNestArg;
    argTypes.pzOpt = zGnuOptArg;
    argTypes.pzNo = zOneSpace;
    argTypes.pzBrk = zGnuBreak;
    argTypes.pzNoF = zSixSpaces;
    argTypes.pzSpc = zThreeSpaces;

    switch (opts->fOptSet & 129) {
    case 129: argTypes.pzOptFmt = zGnuOptFmt; break;
    case 130: argTypes.pzOptFmt = zGnuOptFmt; break;
    case 0: argTypes.pzOptFmt = zGnuOptFmt + 2; break;
    case 128:
        argTypes.pzOptFmt = zShrtGnuOptFmt;
        zGnuStrArg[0] = zGnuNumArg[0] = zGnuKeyArg[0] = zGnuBoolArg[0] = ' ';
        argTypes.pzOpt = " [arg]";
        flen = 8;
        break;
    }

    return flen;
}
