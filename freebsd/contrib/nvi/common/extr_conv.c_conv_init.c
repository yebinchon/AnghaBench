
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ iconv_t ;
struct TYPE_9__ {scalar_t__* id; void* input2int; int int2file; void* file2int; int int2sys; void* sys2int; } ;
struct TYPE_8__ {TYPE_6__ conv; } ;
typedef TYPE_1__ SCR ;


 int BCOPY (TYPE_6__*,TYPE_6__*,int) ;
 int IC_IE_TO_UTF16 ;
 int LC_ALL ;
 int LC_CTYPE ;
 int OS_STRDUP ;
 int O_INPUTENCODING ;
 int codeset () ;
 int conv_enc (TYPE_1__*,int ,int ) ;
 void* cs_char2int ;
 int cs_int2char ;
 void* fe_char2int ;
 int fe_int2char ;
 void* ie_char2int ;
 int int2raw ;
 int o_set (TYPE_1__*,int ,int ,int ,int ) ;
 void* raw2int ;
 char* setlocale (int ,char*) ;
 int strcmp (char*,char*) ;

void
conv_init(SCR *orig, SCR *sp)
{
 int i;

 if (orig == ((void*)0))
  setlocale(LC_ALL, "");
 if (orig != ((void*)0))
  BCOPY(&orig->conv, &sp->conv, 1);
 for (i = 0; i <= IC_IE_TO_UTF16; ++i)
  sp->conv.id[i] = (iconv_t)-1;



}
