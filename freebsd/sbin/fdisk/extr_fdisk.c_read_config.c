
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 scalar_t__ current_line_number ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int process_line (char*) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
read_config(char *config_file)
{
    FILE *fp = ((void*)0);
    int status = 1;
    char buf[1010];

 while (1) {
  if (strcmp(config_file, "-") != 0) {



   if ((fp = fopen(config_file, "r")) == ((void*)0)) {
  status = 0;
  break;
     }
  } else {
     fp = stdin;
 }
 current_line_number = 0;
  while (!feof(fp)) {
     if (fgets(buf, sizeof(buf), fp) == ((void*)0))
  break;
     ++current_line_number;
     status = process_line(buf);
     if (status == 0)
  break;
     }
 break;
    }
 if (fp) {



 fclose(fp);
    }
    return (status);
}
