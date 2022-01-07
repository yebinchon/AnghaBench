
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 int printf (char*) ;
 int read_if_pending_keys (char const*) ;
 scalar_t__ read_last_success_time (char const*) ;
 scalar_t__ time (int *) ;
 scalar_t__ verb ;
 scalar_t__ xml_convertdate (char*) ;

__attribute__((used)) static int
probe_date_allows_certupdate(const char* root_anchor_file)
{
 int has_pending_keys = read_if_pending_keys(root_anchor_file);
 int32_t last_success = read_last_success_time(root_anchor_file);
 int32_t now = (int32_t)time(((void*)0));
 int32_t leeway = 30 * 24 * 3600;


 if(time(((void*)0)) < xml_convertdate("2010-07-15T00:00:00")) {
  if(verb) printf("the date is before the root was first signed,"
   " please correct the clock\n");
  return 0;
 }
 if(last_success == 0)
  return 1;
 if(has_pending_keys)
  return 1;





 if(now - last_success < 0) {
  if(verb) printf("the last successful probe is in the future,"
   " clock was modified\n");
  return 0;
 }
 if(now - last_success >= leeway) {
  if(verb) printf("the last successful probe was more than 30 "
   "days ago\n");
  return 1;
 }
 if(verb) printf("the last successful probe is recent\n");
 return 0;
}
