
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,...) ;
 int free (char*) ;
 int report_status (char*) ;

void
report_ptr(void *ptr)
{
 char *string;

 if (ptr == ((void*)0))
  asprintf(&string, "NULL");
 else
  asprintf(&string, "%p", ptr);
 report_status(string);
 free(string);
}
