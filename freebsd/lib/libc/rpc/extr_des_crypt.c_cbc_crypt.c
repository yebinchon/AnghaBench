
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* UDES_buf; } ;
struct desparams {char* des_ivec; int des_mode; TYPE_1__ UDES; } ;


 int CBC ;
 int COPY8 (char*,char*) ;
 int ECB ;
 int common_crypt (char*,char*,unsigned int,unsigned int,struct desparams*) ;

int
cbc_crypt(char *key, char *buf, unsigned len, unsigned mode, char *ivec)
{
 int err;
 struct desparams dp;





 dp.des_mode = CBC;

 COPY8(ivec, dp.des_ivec);
 err = common_crypt(key, buf, len, mode, &dp);
 COPY8(dp.des_ivec, ivec);
 return(err);
}
