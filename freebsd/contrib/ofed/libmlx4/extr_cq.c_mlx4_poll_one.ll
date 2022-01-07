; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_poll_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cq = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.ibv_wc = type { i32 }
%struct.mlx4_cqe = type { i32 }

@CQ_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_cq*, %struct.mlx4_qp**, %struct.ibv_wc*)* @mlx4_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_poll_one(%struct.mlx4_cq* %0, %struct.mlx4_qp** %1, %struct.ibv_wc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_cq*, align 8
  %6 = alloca %struct.mlx4_qp**, align 8
  %7 = alloca %struct.ibv_wc*, align 8
  %8 = alloca %struct.mlx4_cqe*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %5, align 8
  store %struct.mlx4_qp** %1, %struct.mlx4_qp*** %6, align 8
  store %struct.ibv_wc* %2, %struct.ibv_wc** %7, align 8
  %10 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %11 = call i32 @mlx4_get_next_cqe(%struct.mlx4_cq* %10, %struct.mlx4_cqe** %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @CQ_EMPTY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %19 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %8, align 8
  %20 = load %struct.mlx4_qp**, %struct.mlx4_qp*** %6, align 8
  %21 = load %struct.ibv_wc*, %struct.ibv_wc** %7, align 8
  %22 = call i32 @mlx4_parse_cqe(%struct.mlx4_cq* %18, %struct.mlx4_cqe* %19, %struct.mlx4_qp** %20, %struct.ibv_wc* %21, i32 0)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @mlx4_get_next_cqe(%struct.mlx4_cq*, %struct.mlx4_cqe**) #1

declare dso_local i32 @mlx4_parse_cqe(%struct.mlx4_cq*, %struct.mlx4_cqe*, %struct.mlx4_qp**, %struct.ibv_wc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
