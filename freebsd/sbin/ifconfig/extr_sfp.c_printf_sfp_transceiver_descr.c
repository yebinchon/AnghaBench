
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_info {int dummy; } ;


 int SFF_8472_BASE ;
 int SFF_8472_TRANS_START ;
 int cab_tech ;
 int eth_10g ;
 int eth_compat ;
 int fc_len ;
 int fc_media ;
 int fc_speed ;
 char* find_zero_bit (int ,char,int) ;
 int printf (char*,char const*) ;
 int read_i2c (struct i2c_info*,int ,int ,int,char*) ;

__attribute__((used)) static void
printf_sfp_transceiver_descr(struct i2c_info *ii, char *buf, size_t size)
{
 char xbuf[12];
 const char *tech_class, *tech_len, *tech_tech, *tech_media, *tech_speed;

 tech_class = ((void*)0);
 tech_len = ((void*)0);
 tech_tech = ((void*)0);
 tech_media = ((void*)0);
 tech_speed = ((void*)0);


 read_i2c(ii, SFF_8472_BASE, SFF_8472_TRANS_START, 8, &xbuf[3]);


 tech_class = find_zero_bit(eth_10g, xbuf[3], 1);
 if (tech_class == ((void*)0)) {

  tech_class = find_zero_bit(eth_compat, xbuf[6], 1);
 }

 tech_len = find_zero_bit(fc_len, xbuf[7], 1);
 tech_tech = find_zero_bit(cab_tech, xbuf[7] << 8 | xbuf[8], 2);
 tech_media = find_zero_bit(fc_media, xbuf[9], 1);
 tech_speed = find_zero_bit(fc_speed, xbuf[10], 1);

 printf("Class: %s\n", tech_class);
 printf("Length: %s\n", tech_len);
 printf("Tech: %s\n", tech_tech);
 printf("Media: %s\n", tech_media);
 printf("Speed: %s\n", tech_speed);
}
