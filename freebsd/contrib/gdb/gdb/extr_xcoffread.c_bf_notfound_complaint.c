
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*) ;
 int symfile_complaints ;

__attribute__((used)) static void
bf_notfound_complaint (void)
{
  complaint (&symfile_complaints, "line numbers off, `.bf' symbol not found");
}
