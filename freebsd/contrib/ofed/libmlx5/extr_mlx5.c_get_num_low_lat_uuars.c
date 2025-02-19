
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ MLX5_MED_BFREGS_TSHOLD ;
 int atoi (char*) ;
 char* getenv (char*) ;
 int max (int,scalar_t__) ;

__attribute__((used)) static int get_num_low_lat_uuars(int tot_uuars)
{
 char *env;
 int num = 4;

 env = getenv("MLX5_NUM_LOW_LAT_UUARS");
 if (env)
  num = atoi(env);

 if (num < 0)
  return -EINVAL;

 num = max(num, tot_uuars - MLX5_MED_BFREGS_TSHOLD);
 return num;
}
