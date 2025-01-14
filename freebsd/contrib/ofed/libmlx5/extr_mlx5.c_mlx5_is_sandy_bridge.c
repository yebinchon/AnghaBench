
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int read_number_from_line (char*,int*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int mlx5_is_sandy_bridge(int *num_cores)
{
 char line[128];
 FILE *fd;
 int rc = 0;
 int cur_cpu_family = -1;
 int cur_cpu_model = -1;

 fd = fopen("/proc/cpuinfo", "r");
 if (!fd)
  return 0;

 *num_cores = 0;

 while (fgets(line, 128, fd)) {
  int value;


  if (!strncmp(line, "processor", 9)) {
   ++*num_cores;

   cur_cpu_family = -1;
   cur_cpu_model = -1;
  } else if (!strncmp(line, "cpu family", 10)) {
   if ((cur_cpu_family < 0) && (!read_number_from_line(line, &value)))
    cur_cpu_family = value;
  } else if (!strncmp(line, "model", 5)) {
   if ((cur_cpu_model < 0) && (!read_number_from_line(line, &value)))
    cur_cpu_model = value;
  }


  if ((cur_cpu_family == 6) &&
      (cur_cpu_model == 0x2A || (cur_cpu_model == 0x2D) ))
   rc = 1;
 }

 fclose(fd);
 return rc;
}
