
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SCTP_PR_SCTP_ALL ;
 int fprintf (int *,char*,char*,...) ;
 int print_mask_0 (int *,int ,int,int*) ;
 int sctpsinfoflags ;
 char* sysdecode_sctp_pr_policy (int) ;

void
sysdecode_sctp_sinfo_flags(FILE *fp, int sinfo_flags)
{
 const char *temp;
 int rem;
 bool printed;

 printed = print_mask_0(fp, sctpsinfoflags, sinfo_flags, &rem);
 if (rem & ~SCTP_PR_SCTP_ALL) {
  fprintf(fp, "%s%#x", printed ? "|" : "", rem & ~SCTP_PR_SCTP_ALL);
  printed = 1;
  rem &= ~SCTP_PR_SCTP_ALL;
 }
 if (rem != 0) {
  temp = sysdecode_sctp_pr_policy(rem);
  if (temp != ((void*)0)) {
   fprintf(fp, "%s%s", printed ? "|" : "", temp);
  } else {
   fprintf(fp, "%s%#x", printed ? "|" : "", rem);
  }
 }
}
