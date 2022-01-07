
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 int MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE ;
 int MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE ;
 int atoi (char*) ;
 int fprintf (int ,char*,int,char*) ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int sprintf (char*,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void mlx5_alloc_get_env_info(int *max_block_log,
        int *min_block_log,
        const char *component)

{
 char *env;
 int value;
 char name[128];


 *max_block_log = MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE;
 *min_block_log = MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE;

 snprintf(name, sizeof(name), "%s_MAX_LOG2_CONTIG_BSIZE", component);
 env = getenv(name);
 if (env) {
  value = atoi(env);
  if (value <= MLX5_MAX_LOG2_CONTIG_BLOCK_SIZE &&
      value >= MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE)
   *max_block_log = value;
  else
   fprintf(stderr, "Invalid value %d for %s\n",
    value, name);
 }
 sprintf(name, "%s_MIN_LOG2_CONTIG_BSIZE", component);
 env = getenv(name);
 if (env) {
  value = atoi(env);
  if (value >= MLX5_MIN_LOG2_CONTIG_BLOCK_SIZE &&
      value <= *max_block_log)
   *min_block_log = value;
  else
   fprintf(stderr, "Invalid value %d for %s\n",
    value, name);
 }
}
