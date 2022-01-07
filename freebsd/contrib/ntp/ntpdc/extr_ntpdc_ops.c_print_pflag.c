
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int FILE ;


 int INFO_FLAG_AUTHENABLE ;
 int INFO_FLAG_BURST ;
 int INFO_FLAG_CONFIG ;
 int INFO_FLAG_IBURST ;
 int INFO_FLAG_PREFER ;
 int INFO_FLAG_REFCLOCK ;
 int INFO_FLAG_SEL_CANDIDATE ;
 int INFO_FLAG_SHORTLIST ;
 int INFO_FLAG_SYSPEER ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
print_pflag(
 FILE * fp,
 u_int32 flags
 )
{
 static const char none[] = "";
 static const char comma[] = ",";
 const char *dlim;

 if (0 == flags) {
  fprintf(fp, " none\n");
  return;
 }
 dlim = none;
 if (flags & INFO_FLAG_SYSPEER) {
  fprintf(fp, " system_peer");
  dlim = comma;
 }
 if (flags & INFO_FLAG_CONFIG) {
  fprintf(fp, "%s config", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_REFCLOCK) {
  fprintf(fp, "%s refclock", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_AUTHENABLE) {
  fprintf(fp, "%s auth", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_PREFER) {
  fprintf(fp, "%s prefer", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_IBURST) {
  fprintf(fp, "%s iburst", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_BURST) {
  fprintf(fp, "%s burst", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_SEL_CANDIDATE) {
  fprintf(fp, "%s candidate", dlim);
  dlim = comma;
 }
 if (flags & INFO_FLAG_SHORTLIST) {
  fprintf(fp, "%s shortlist", dlim);
  dlim = comma;
 }
 fprintf(fp, "\n");
}
