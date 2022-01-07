; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_destroy_cq(%struct.ibv_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  %5 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %6 = call i32 @ibv_cmd_destroy_cq(%struct.ibv_cq* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %13 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @to_mctx(i32 %14)
  %16 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %17 = call %struct.TYPE_3__* @to_mcq(%struct.ibv_cq* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5_free_db(i32 %15, i32 %19)
  %21 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %22 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @to_mctx(i32 %23)
  %25 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %26 = call %struct.TYPE_3__* @to_mcq(%struct.ibv_cq* %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_free_cq_buf(i32 %24, i32 %28)
  %30 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %31 = call %struct.TYPE_3__* @to_mcq(%struct.ibv_cq* %30)
  %32 = call i32 @free(%struct.TYPE_3__* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %11, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ibv_cmd_destroy_cq(%struct.ibv_cq*) #1

declare dso_local i32 @mlx5_free_db(i32, i32) #1

declare dso_local i32 @to_mctx(i32) #1

declare dso_local %struct.TYPE_3__* @to_mcq(%struct.ibv_cq*) #1

declare dso_local i32 @mlx5_free_cq_buf(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
