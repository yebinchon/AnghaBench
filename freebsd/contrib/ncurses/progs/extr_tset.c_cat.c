
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int failed (char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 size_t fwrite (char*,int,size_t,int ) ;
 int stderr ;

__attribute__((used)) static void
cat(char *file)
{
    FILE *fp;
    size_t nr;
    char buf[BUFSIZ];

    if ((fp = fopen(file, "r")) == 0)
 failed(file);

    while ((nr = fread(buf, sizeof(char), sizeof(buf), fp)) != 0)
 if (fwrite(buf, sizeof(char), nr, stderr) != nr)
       failed("write to stderr");
    fclose(fp);
}
