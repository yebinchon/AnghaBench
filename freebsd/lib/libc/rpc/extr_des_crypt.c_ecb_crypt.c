
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* UDES_buf; } ;
struct desparams {int des_mode; TYPE_1__ UDES; } ;


 int CBC ;
 int ECB ;
 int common_crypt (char*,char*,unsigned int,unsigned int,struct desparams*) ;

int
ecb_crypt(char *key, char *buf, unsigned len, unsigned mode)
{
 struct desparams dp;





 dp.des_mode = ECB;

 return(common_crypt(key, buf, len, mode, &dp));
}
