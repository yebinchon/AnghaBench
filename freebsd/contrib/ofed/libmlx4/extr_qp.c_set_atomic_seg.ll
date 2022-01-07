; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_atomic_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_set_atomic_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_atomic_seg = type { i8*, i8* }
%struct.ibv_send_wr = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@IBV_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_wqe_atomic_seg*, %struct.ibv_send_wr*)* @set_atomic_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_atomic_seg(%struct.mlx4_wqe_atomic_seg* %0, %struct.ibv_send_wr* %1) #0 {
  %3 = alloca %struct.mlx4_wqe_atomic_seg*, align 8
  %4 = alloca %struct.ibv_send_wr*, align 8
  store %struct.mlx4_wqe_atomic_seg* %0, %struct.mlx4_wqe_atomic_seg** %3, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %4, align 8
  %5 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %6 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IBV_WR_ATOMIC_CMP_AND_SWP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %12 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @htobe64(i32 %15)
  %17 = load %struct.mlx4_wqe_atomic_seg*, %struct.mlx4_wqe_atomic_seg** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_wqe_atomic_seg, %struct.mlx4_wqe_atomic_seg* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %20 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @htobe64(i32 %23)
  %25 = load %struct.mlx4_wqe_atomic_seg*, %struct.mlx4_wqe_atomic_seg** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_wqe_atomic_seg, %struct.mlx4_wqe_atomic_seg* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %4, align 8
  %29 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @htobe64(i32 %32)
  %34 = load %struct.mlx4_wqe_atomic_seg*, %struct.mlx4_wqe_atomic_seg** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_wqe_atomic_seg, %struct.mlx4_wqe_atomic_seg* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.mlx4_wqe_atomic_seg*, %struct.mlx4_wqe_atomic_seg** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_wqe_atomic_seg, %struct.mlx4_wqe_atomic_seg* %36, i32 0, i32 0
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %27, %10
  ret void
}

declare dso_local i8* @htobe64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
