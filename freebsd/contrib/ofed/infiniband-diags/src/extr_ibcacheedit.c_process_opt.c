
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int caguid_after ;
 int caguid_before ;
 int caguid_flag ;
 int parse_beforeafter (char*,int *,int *) ;
 int parse_guidbeforeafter (char*,int *,int *,int *) ;
 int portguid_after ;
 int portguid_before ;
 int portguid_flag ;
 int portguid_nodeguid ;
 int switchguid_after ;
 int switchguid_before ;
 int switchguid_flag ;
 int sysimgguid_after ;
 int sysimgguid_before ;
 int sysimgguid_flag ;

__attribute__((used)) static int process_opt(void *context, int ch, char *optarg)
{
 switch (ch) {
 case 1:
  if (parse_beforeafter(optarg,
          &switchguid_before,
          &switchguid_after) < 0)
   return -1;
  switchguid_flag++;
  break;
 case 2:
  if (parse_beforeafter(optarg,
          &caguid_before,
          &caguid_after) < 0)
   return -1;
  caguid_flag++;
  break;
 case 3:
  if (parse_beforeafter(optarg,
          &sysimgguid_before,
          &sysimgguid_after) < 0)
   return -1;
  sysimgguid_flag++;
  break;
 case 4:
  if (parse_guidbeforeafter(optarg,
       &portguid_nodeguid,
       &portguid_before,
       &portguid_after) < 0)
   return -1;
  portguid_flag++;
  break;
 default:
  return -1;
 }

 return 0;
}
