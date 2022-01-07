; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_data_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_data_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_data_seg = type { i8*, i32, i8* }
%struct.ibv_sge = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_wqe_data_seg*, %struct.ibv_sge*)* @set_data_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_data_seg(%struct.mlx4_wqe_data_seg* %0, %struct.ibv_sge* %1) #0 {
  %3 = alloca %struct.mlx4_wqe_data_seg*, align 8
  %4 = alloca %struct.ibv_sge*, align 8
  store %struct.mlx4_wqe_data_seg* %0, %struct.mlx4_wqe_data_seg** %3, align 8
  store %struct.ibv_sge* %1, %struct.ibv_sge** %4, align 8
  %5 = load %struct.ibv_sge*, %struct.ibv_sge** %4, align 8
  %6 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @htobe32(i32 %7)
  %9 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ibv_sge*, %struct.ibv_sge** %4, align 8
  %12 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @htobe64(i32 %13)
  %15 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = call i32 (...) @udma_to_device_barrier()
  %18 = load %struct.ibv_sge*, %struct.ibv_sge** %4, align 8
  %19 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.ibv_sge*, %struct.ibv_sge** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @htobe32(i32 %26)
  %28 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %34

30:                                               ; preds = %2
  %31 = call i8* @htobe32(i32 -2147483648)
  %32 = load %struct.mlx4_wqe_data_seg*, %struct.mlx4_wqe_data_seg** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_wqe_data_seg, %struct.mlx4_wqe_data_seg* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  ret void
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
