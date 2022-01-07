
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int nLists; int size; scalar_t__ dict; scalar_t__ here; TYPE_3__** pSearch; } ;
struct TYPE_11__ {unsigned int size; TYPE_1__** table; } ;
struct TYPE_10__ {char* pad; } ;
struct TYPE_9__ {scalar_t__ nName; char* name; struct TYPE_9__* link; } ;
typedef TYPE_1__ FICL_WORD ;
typedef TYPE_2__ FICL_VM ;
typedef TYPE_3__ FICL_HASH ;
typedef TYPE_4__ FICL_DICT ;


 int getchar () ;
 int nCOLWIDTH ;
 scalar_t__ sprintf (char*,char*,...) ;
 TYPE_4__* vmGetDict (TYPE_2__*) ;
 int vmTextOut (TYPE_2__*,char*,int) ;

__attribute__((used)) static void listWords(FICL_VM *pVM)
{
    FICL_DICT *dp = vmGetDict(pVM);
    FICL_HASH *pHash = dp->pSearch[dp->nLists - 1];
    FICL_WORD *wp;
    int nChars = 0;
    int len;
    int y = 0;
    unsigned i;
    int nWords = 0;
    char *cp;
    char *pPad = pVM->pad;

    for (i = 0; i < pHash->size; i++)
    {
        for (wp = pHash->table[i]; wp != ((void*)0); wp = wp->link, nWords++)
        {
            if (wp->nName == 0)
                continue;

            cp = wp->name;
            nChars += sprintf(pPad + nChars, "%s", cp);

            if (nChars > 70)
            {
                pPad[nChars] = '\0';
                nChars = 0;
                y++;
                if(y>23) {
                        y=0;
                        vmTextOut(pVM, "--- Press Enter to continue ---",0);
                        getchar();
                        vmTextOut(pVM,"\r",0);
                }
                vmTextOut(pVM, pPad, 1);
            }
            else
            {
                len = nCOLWIDTH - nChars % nCOLWIDTH;
                while (len-- > 0)
                    pPad[nChars++] = ' ';
            }

            if (nChars > 70)
            {
                pPad[nChars] = '\0';
                nChars = 0;
                y++;
                if(y>23) {
                        y=0;
                        vmTextOut(pVM, "--- Press Enter to continue ---",0);
                        getchar();
                        vmTextOut(pVM,"\r",0);
                }
                vmTextOut(pVM, pPad, 1);
            }
        }
    }

    if (nChars > 0)
    {
        pPad[nChars] = '\0';
        nChars = 0;
        vmTextOut(pVM, pPad, 1);
    }

    sprintf(pVM->pad, "Dictionary: %d words, %ld cells used of %u total",
        nWords, (long) (dp->here - dp->dict), dp->size);
    vmTextOut(pVM, pVM->pad, 1);
    return;
}
