
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ iconv_t ;
struct TYPE_8__ {scalar_t__* id; } ;
struct TYPE_9__ {TYPE_1__ conv; } ;
typedef TYPE_2__ SCR ;


 int F_CLR (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__* IC_FE_CHAR2INT ;
 scalar_t__* IC_FE_INT2CHAR ;
 scalar_t__* IC_IE_CHAR2INT ;
 scalar_t__* IC_IE_TO_UTF16 ;
 int M_ERR ;


 char* O_STR (TYPE_2__*,int const) ;
 int SC_CONV_ERROR ;
 int SC_SCR_REFORMAT ;
 int abort () ;
 char* codeset () ;
 int iconv_close (scalar_t__) ;
 scalar_t__ iconv_open (char*,char*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int strcasecmp (char*,char*) ;

int
conv_enc(SCR *sp, int option, char *enc)
{
 switch (option) {
 case 129:
  msgq(sp, M_ERR, "321|File encoding conversion not supported");
  break;
 case 128:
  msgq(sp, M_ERR, "322|Input encoding conversion not supported");
  break;
 }
 return 1;
}
