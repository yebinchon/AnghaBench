
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int error (int,int ,char*) ;
 char const* matcher ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void
setmatcher (char const *m)
{
  if (matcher && strcmp (matcher, m) != 0)
    error (2, 0, _("conflicting matchers specified"));
  matcher = m;
}
