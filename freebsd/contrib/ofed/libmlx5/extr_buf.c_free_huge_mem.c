
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_hugetlb_mem {int shmid; int shmaddr; int bitmap; } ;


 int IPC_RMID ;
 int MLX5_DBG_CONTIG ;
 int errno ;
 int free (struct mlx5_hugetlb_mem*) ;
 int mlx5_bitmap_cleanup (int *) ;
 int mlx5_dbg (int ,int ,char*,int ) ;
 int shmctl (int ,int ,int *) ;
 int shmdt (int ) ;
 int stderr ;
 int strerror (int ) ;

__attribute__((used)) static void free_huge_mem(struct mlx5_hugetlb_mem *hmem)
{
 mlx5_bitmap_cleanup(&hmem->bitmap);
 if (shmdt(hmem->shmaddr) == -1)
  mlx5_dbg(stderr, MLX5_DBG_CONTIG, "%s\n", strerror(errno));
 shmctl(hmem->shmid, IPC_RMID, ((void*)0));
 free(hmem);
}
