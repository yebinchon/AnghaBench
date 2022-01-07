
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
bcm_gpio_func_str(uint32_t nfunc, char *buf, int bufsize)
{

 switch (nfunc) {
 case 129:
  strncpy(buf, "input", bufsize);
  break;
 case 128:
  strncpy(buf, "output", bufsize);
  break;
 case 135:
  strncpy(buf, "alt0", bufsize);
  break;
 case 134:
  strncpy(buf, "alt1", bufsize);
  break;
 case 133:
  strncpy(buf, "alt2", bufsize);
  break;
 case 132:
  strncpy(buf, "alt3", bufsize);
  break;
 case 131:
  strncpy(buf, "alt4", bufsize);
  break;
 case 130:
  strncpy(buf, "alt5", bufsize);
  break;
 default:
  strncpy(buf, "invalid", bufsize);
 }
}
