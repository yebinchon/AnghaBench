
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vc_info {int dummy; } ;
struct smb_share_info {int dummy; } ;


 int EX_OSERR ;
 int SMB_INFO_NONE ;


 int errx (int ,char*) ;
 int free (void*) ;
 scalar_t__ loadsmbvfs () ;
 int print_shareinfo (void*) ;
 int print_vcinfo (void*) ;
 int printf (char*) ;
 void* smb_dumptree () ;

int
cmd_dumptree(int argc, char *argv[])
{
 void *p, *op;
 int *itype;

 printf("SMB connections:\n");




 p = smb_dumptree();
 if (p == ((void*)0)) {
  printf("None\n");
  return 0;
 }
 op = p;
 for (;;) {
  itype = p;
  if (*itype == SMB_INFO_NONE)
   break;
  switch (*itype) {
      case 128:
   print_vcinfo(p);
   p = (struct smb_vc_info*)p + 1;
   break;
      case 129:
   print_shareinfo(p);
   p = (struct smb_share_info*)p + 1;
   break;
      default:
   printf("Out of sync\n");
   free(op);
   return 1;

  }
 }
 free(op);
 printf("\n");
 return 0;
}
