
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct sa_handle {int dummy; } ;


 int EINVAL ;
 long UINT16_MAX ;
 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,...) ;
 int get_lid_from_name (struct sa_handle*,char const*,scalar_t__*) ;
 scalar_t__ isalpha (char const) ;
 int stderr ;
 char* strerror (int) ;
 long strtol (char const*,int *,int ) ;

__attribute__((used)) static uint16_t get_lid(struct sa_handle * h, const char *name)
{
 int rc = 0;
 uint16_t rc_lid = 0;

 if (!name)
  return 0;
 if (isalpha(name[0])) {
  if ((rc = get_lid_from_name(h, name, &rc_lid)) != 0) {
   fprintf(stderr, "Failed to find lid for \"%s\": %s\n",
    name, strerror(rc));
   exit(rc);
  }
 } else {
  long val;
  errno = 0;
  val = strtol(name, ((void*)0), 0);
  if (errno != 0 || val <= 0 || val > UINT16_MAX) {
   fprintf(stderr, "Invalid lid specified: \"%s\"\n", name);
   exit(EINVAL);
  }
  rc_lid = (uint16_t)val;
 }

 return rc_lid;
}
