
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (scalar_t__) ;
 scalar_t__ input_file ;
 scalar_t__ output_f ;
 scalar_t__ output_file ;
 scalar_t__ success ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void
cleanup(void)
{
 if (output_file >= 0)
  close(output_file);
 if (input_file >= 0)
  close(input_file);
 if (success == 0) {
  if (output_f)
   unlink(output_f);
 }
}
