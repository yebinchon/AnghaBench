
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAM_SUCCESS ;



 int * pam_item_name ;
 int pam_set_item (int ,int,char const*) ;
 int pamh ;
 int pt_error (int,char*,int ) ;
 int pt_verbose (char*,int ,...) ;

__attribute__((used)) static int
pt_set_item(int item, const char *p)
{
 int pame;

 switch (item) {
 case 131:
 case 129:
 case 138:
 case 135:
 case 130:
 case 133:
 case 132:
 case 128:
 case 137:
 case 134:
 case 136:
  pt_verbose("setting %s to %s", pam_item_name[item], p);
  break;
 default:
  pt_verbose("setting %s", pam_item_name[item]);
  break;
 }
 if ((pame = pam_set_item(pamh, item, p)) != PAM_SUCCESS)
  pt_error(pame, "pam_set_item(%s)", pam_item_name[item]);
 return (pame);
}
