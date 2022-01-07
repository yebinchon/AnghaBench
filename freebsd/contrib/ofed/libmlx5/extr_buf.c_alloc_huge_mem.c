
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hugetlb_mem {int shmid; void* shmaddr; int bitmap; } ;


 int IPC_PRIVATE ;
 int IPC_RMID ;
 int MLX5_DBG_CONTIG ;
 size_t MLX5_Q_CHUNK_SIZE ;
 int MLX5_SHMAT_FLAGS ;
 int MLX5_SHM_ADDR ;
 int MLX5_SHM_LENGTH ;
 int SHM_HUGETLB ;
 int SHM_R ;
 int SHM_W ;
 size_t align (size_t,int ) ;
 int errno ;
 int free (struct mlx5_hugetlb_mem*) ;
 struct mlx5_hugetlb_mem* malloc (int) ;
 scalar_t__ mlx5_bitmap_init (int *,size_t,size_t) ;
 int mlx5_dbg (int ,int ,char*,int ) ;
 void* shmat (int,int ,int ) ;
 int shmctl (int,int ,int *) ;
 int shmdt (void*) ;
 int shmget (int ,size_t,int) ;
 int stderr ;
 int strerror (int ) ;

__attribute__((used)) static struct mlx5_hugetlb_mem *alloc_huge_mem(size_t size)
{
 struct mlx5_hugetlb_mem *hmem;
 size_t shm_len;

 hmem = malloc(sizeof(*hmem));
 if (!hmem)
  return ((void*)0);

 shm_len = align(size, MLX5_SHM_LENGTH);
 hmem->shmid = shmget(IPC_PRIVATE, shm_len, SHM_HUGETLB | SHM_R | SHM_W);
 if (hmem->shmid == -1) {
  mlx5_dbg(stderr, MLX5_DBG_CONTIG, "%s\n", strerror(errno));
  goto out_free;
 }

 hmem->shmaddr = shmat(hmem->shmid, MLX5_SHM_ADDR, MLX5_SHMAT_FLAGS);
 if (hmem->shmaddr == (void *)-1) {
  mlx5_dbg(stderr, MLX5_DBG_CONTIG, "%s\n", strerror(errno));
  goto out_rmid;
 }

 if (mlx5_bitmap_init(&hmem->bitmap, shm_len / MLX5_Q_CHUNK_SIZE,
        shm_len / MLX5_Q_CHUNK_SIZE - 1)) {
  mlx5_dbg(stderr, MLX5_DBG_CONTIG, "%s\n", strerror(errno));
  goto out_shmdt;
 }




 shmctl(hmem->shmid, IPC_RMID, ((void*)0));

 return hmem;

out_shmdt:
 if (shmdt(hmem->shmaddr) == -1)
  mlx5_dbg(stderr, MLX5_DBG_CONTIG, "%s\n", strerror(errno));

out_rmid:
 shmctl(hmem->shmid, IPC_RMID, ((void*)0));

out_free:
 free(hmem);
 return ((void*)0);
}
