; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_sl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_sl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx4_cq = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@IBV_LINK_LAYER_ETHERNET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx4_cq_read_wc_sl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cq_read_wc_sl(%struct.ibv_cq_ex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_cq_ex*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %3, align 8
  %5 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %3, align 8
  %6 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %5)
  %7 = call %struct.mlx4_cq* @to_mcq(i32 %6)
  store %struct.mlx4_cq* %7, %struct.mlx4_cq** %4, align 8
  %8 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IBV_LINK_LAYER_ETHERNET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16toh(i32 %25)
  %27 = ashr i32 %26, 13
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %12, %1
  %29 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be16toh(i32 %33)
  %35 = ashr i32 %34, 12
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %20
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
