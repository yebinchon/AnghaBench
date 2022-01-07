
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef scalar_t__ int64_t ;
typedef int FILE ;


 int fprintf (int *,char*,int ) ;

__attribute__((used)) static int
ucl_file_append_int (int64_t val, void *ud)
{
 FILE *fp = ud;

 fprintf (fp, "%jd", (intmax_t)val);

 return 0;
}
