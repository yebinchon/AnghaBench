
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int IB_PC_FIRST_F ;
 int IB_PC_LAST_F ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int mad_encode_field (int ,int,int*) ;
 int mad_field_name (int) ;
 char* realloc (char*,int) ;
 int snprintf (char*,int,char*,char*,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int strcpy (char*,char*) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 char* threshold_str ;
 int thresholds ;

__attribute__((used)) static void set_thres(char *name, uint32_t val)
{
 int f;
 int n;
 char tmp[256];
 for (f = IB_PC_FIRST_F; f <= IB_PC_LAST_F; f++) {
  if (strcmp(name, mad_field_name(f)) == 0) {
   mad_encode_field(thresholds, f, &val);
   snprintf(tmp, 255, "[%s = %u]", name, val);
   threshold_str = realloc(threshold_str,
     strlen(threshold_str)+strlen(tmp)+1);
   if (!threshold_str) {
    fprintf(stderr, "Failed to allocate memory: "
     "%s\n", strerror(errno));
    exit(1);
   }
   n = strlen(threshold_str);
   strcpy(threshold_str+n, tmp);
  }
 }
}
