
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int MessageId; } ;
typedef int FILE ;
typedef int BOOLEAN ;
typedef TYPE_1__ ASL_ERROR_MSG ;


 char* AeDecodeMessageId (int ) ;
 int AePrintErrorSourceLine (int *,TYPE_1__*,int *,int *) ;
 int FALSE ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
AePrintSubError (
    FILE *OutputFile,
    ASL_ERROR_MSG *Enode)
{
    UINT32 Total = 0;
    BOOLEAN PrematureEOF = FALSE;
    const char *MainMessage;


    MainMessage = AeDecodeMessageId (Enode->MessageId);

    fprintf (OutputFile, "    %s%s", MainMessage, "\n    ");
    (void) AePrintErrorSourceLine (OutputFile, Enode, &PrematureEOF, &Total);
    fprintf (OutputFile, "\n");
}
