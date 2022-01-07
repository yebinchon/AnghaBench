; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_umr_control_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_umr_control_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32 }
%struct.ibv_mw_bind_info = type { i64 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i32, i8*, i32, i32, i32, i64 }

@MLX5_WQE_UMR_CTRL_FLAG_TRNSLATION_OFFSET = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_FLAG_INLINE = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_FREE = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_MKEY = common dso_local global i32 0, align 4
@IBV_MW_TYPE_2 = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_QPN = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_FLAG_CHECK_FREE = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_LEN = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_START_ADDR = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_ATOMIC = common dso_local global i32 0, align 4
@MLX5_WQE_UMR_CTRL_FLAG_CHECK_QPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*)* @set_umr_control_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_umr_control_seg(%struct.mlx5_qp* %0, i32 %1, i32 %2, %struct.ibv_mw_bind_info* %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca %struct.mlx5_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_mw_bind_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mlx5_wqe_umr_ctrl_seg*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ibv_mw_bind_info* %3, %struct.ibv_mw_bind_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i8**, i8*** %13, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.mlx5_wqe_umr_ctrl_seg*
  store %struct.mlx5_wqe_umr_ctrl_seg* %18, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %19 = load i32, i32* @MLX5_WQE_UMR_CTRL_FLAG_TRNSLATION_OFFSET, align 4
  %20 = load i32, i32* @MLX5_WQE_UMR_CTRL_FLAG_INLINE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %23 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_FREE, align 4
  %25 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_MKEY, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @htobe64(i32 %26)
  %28 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %29 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %31 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %33 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @memset(i32 %34, i32 0, i32 4)
  %36 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %37 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 4)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IBV_MW_TYPE_2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %7
  %44 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_QPN, align 4
  %45 = call i32 @htobe64(i32 %44)
  %46 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %47 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %7
  %51 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %52 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %50
  %56 = call i8* @get_klm_octo(i32 1)
  %57 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %58 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IBV_MW_TYPE_2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* @MLX5_WQE_UMR_CTRL_FLAG_CHECK_FREE, align 4
  %64 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %65 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %55
  %69 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_LEN, align 4
  %70 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_START_ADDR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_LOCAL_WRITE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_REMOTE_READ, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_REMOTE_WRITE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @MLX5_WQE_UMR_CTRL_MKEY_MASK_ACCESS_ATOMIC, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @htobe64(i32 %79)
  %81 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %82 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %99

85:                                               ; preds = %50
  %86 = call i8* @get_klm_octo(i32 0)
  %87 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %88 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @IBV_MW_TYPE_2, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load i32, i32* @MLX5_WQE_UMR_CTRL_FLAG_CHECK_QPN, align 4
  %94 = load %struct.mlx5_wqe_umr_ctrl_seg*, %struct.mlx5_wqe_umr_ctrl_seg** %15, align 8
  %95 = getelementptr inbounds %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %92, %85
  br label %99

99:                                               ; preds = %98, %68
  %100 = load i8**, i8*** %13, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr i8, i8* %101, i64 40
  store i8* %102, i8** %100, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 2
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  ret void
}

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @get_klm_octo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
