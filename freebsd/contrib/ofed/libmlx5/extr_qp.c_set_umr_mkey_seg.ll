; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_umr_mkey_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_set_umr_mkey_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32 }
%struct.ibv_mw_bind_info = type { i32, i64, i64 }
%struct.mlx5_wqe_mkey_context_seg = type { i64, i8*, i8*, i32, i32 }

@IBV_MW_TYPE_1 = common dso_local global i32 0, align 4
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_REMOTE_READ = common dso_local global i32 0, align 4
@IBV_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_ATOMIC = common dso_local global i32 0, align 4
@IBV_ACCESS_ZERO_BASED = common dso_local global i32 0, align 4
@MLX5_WQE_MKEY_CONTEXT_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_qp*, i32, i32, %struct.ibv_mw_bind_info*, i32, i8**, i32*)* @set_umr_mkey_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_umr_mkey_seg(%struct.mlx5_qp* %0, i32 %1, i32 %2, %struct.ibv_mw_bind_info* %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca %struct.mlx5_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_mw_bind_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mlx5_wqe_mkey_context_seg*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.ibv_mw_bind_info* %3, %struct.ibv_mw_bind_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i8**, i8*** %13, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.mlx5_wqe_mkey_context_seg*
  store %struct.mlx5_wqe_mkey_context_seg* %18, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 255
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IBV_MW_TYPE_1, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %7
  %25 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %26 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %7
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = shl i32 %31, 8
  br label %33

33:                                               ; preds = %30, %29
  %34 = phi i32 [ -256, %29 ], [ %32, %30 ]
  %35 = or i32 %20, %34
  %36 = call i32 @htobe32(i32 %35)
  %37 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %38 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %40 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %123

43:                                               ; preds = %33
  %44 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %45 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %44, i32 0, i32 3
  store i32 0, i32* %45, align 8
  %46 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %47 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %49 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* @MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_LOCAL_WRITE, align 4
  %56 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %57 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %54, %43
  %61 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %62 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IBV_ACCESS_REMOTE_WRITE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_REMOTE_WRITE, align 4
  %69 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %70 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %75 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @IBV_ACCESS_REMOTE_READ, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_REMOTE_READ, align 4
  %82 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %83 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %88 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @IBV_ACCESS_REMOTE_ATOMIC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @MLX5_WQE_MKEY_CONTEXT_ACCESS_FLAGS_ATOMIC, align 4
  %95 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %96 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %101 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IBV_ACCESS_ZERO_BASED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %108 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %107, i32 0, i32 2
  store i8* null, i8** %108, align 8
  br label %116

109:                                              ; preds = %99
  %110 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %111 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i8* @htobe64(i64 %112)
  %114 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %115 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %109, %106
  %117 = load %struct.ibv_mw_bind_info*, %struct.ibv_mw_bind_info** %11, align 8
  %118 = getelementptr inbounds %struct.ibv_mw_bind_info, %struct.ibv_mw_bind_info* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @htobe64(i64 %119)
  %121 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %122 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %127

123:                                              ; preds = %33
  %124 = load i64, i64* @MLX5_WQE_MKEY_CONTEXT_FREE, align 8
  %125 = load %struct.mlx5_wqe_mkey_context_seg*, %struct.mlx5_wqe_mkey_context_seg** %15, align 8
  %126 = getelementptr inbounds %struct.mlx5_wqe_mkey_context_seg, %struct.mlx5_wqe_mkey_context_seg* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %116
  %128 = load i8**, i8*** %13, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr i8, i8* %129, i64 32
  store i8* %130, i8** %128, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 2
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  ret void
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i8* @htobe64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
