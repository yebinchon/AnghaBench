
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PJDLOG_ABORT (char*,char const*,int ) ;
 int nvpair_type_string (int) ;

void
nvlist_report_missing(int type, const char *name)
{

 PJDLOG_ABORT("Element '%s' of type %s doesn't exist.",
     name, nvpair_type_string(type));
}
