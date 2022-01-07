
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glob_path_stat {int gps_path; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_gps(const void *_p, const void *_q)
{
 const struct glob_path_stat *p = (const struct glob_path_stat *)_p;
 const struct glob_path_stat *q = (const struct glob_path_stat *)_q;

 return(strcmp(p->gps_path, q->gps_path));
}
