
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YPERR_BADARGS ;
 int YPERR_BADDB ;
 int YPERR_DOMAIN ;
 int YPERR_KEY ;
 int YPERR_MAP ;
 int YPERR_NOMORE ;
 int YPERR_VERS ;
 int YPERR_YPBIND ;
 int YPERR_YPERR ;
int
ypprot_err(unsigned int incode)
{
 switch (incode) {
 case 130:
  return (0);
 case 135:
  return (YPERR_YPBIND);
 case 131:
  return (YPERR_NOMORE);
 case 132:
  return (YPERR_MAP);
 case 134:
  return (YPERR_DOMAIN);
 case 133:
  return (YPERR_KEY);
 case 136:
  return (YPERR_YPERR);
 case 137:
  return (YPERR_BADDB);
 case 128:
  return (YPERR_YPERR);
 case 138:
  return (YPERR_BADARGS);
 case 129:
  return (YPERR_VERS);
 }
 return (YPERR_YPERR);
}
