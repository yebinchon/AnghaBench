; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32, i64 }

@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_destroy_srq(%struct.ibv_srq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_srq*, align 8
  %4 = alloca i32, align 4
  store %struct.ibv_srq* %0, %struct.ibv_srq** %3, align 8
  %5 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %6 = call %struct.TYPE_3__* @to_msrq(%struct.ibv_srq* %5)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %12 = call i32 @mlx4_destroy_xrc_srq(%struct.ibv_srq* %11)
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %15 = call i32 @ibv_cmd_destroy_srq(%struct.ibv_srq* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %43

20:                                               ; preds = %13
  %21 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %22 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @to_mctx(i32 %23)
  %25 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %26 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %27 = call %struct.TYPE_3__* @to_msrq(%struct.ibv_srq* %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlx4_free_db(i32 %24, i32 %25, i32 %29)
  %31 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %32 = call %struct.TYPE_3__* @to_msrq(%struct.ibv_srq* %31)
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = call i32 @mlx4_free_buf(i32* %33)
  %35 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %36 = call %struct.TYPE_3__* @to_msrq(%struct.ibv_srq* %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @free(%struct.TYPE_3__* %38)
  %40 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %41 = call %struct.TYPE_3__* @to_msrq(%struct.ibv_srq* %40)
  %42 = call i32 @free(%struct.TYPE_3__* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %20, %18, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_3__* @to_msrq(%struct.ibv_srq*) #1

declare dso_local i32 @mlx4_destroy_xrc_srq(%struct.ibv_srq*) #1

declare dso_local i32 @ibv_cmd_destroy_srq(%struct.ibv_srq*) #1

declare dso_local i32 @mlx4_free_db(i32, i32, i32) #1

declare dso_local i32 @to_mctx(i32) #1

declare dso_local i32 @mlx4_free_buf(i32*) #1

declare dso_local i32 @free(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
