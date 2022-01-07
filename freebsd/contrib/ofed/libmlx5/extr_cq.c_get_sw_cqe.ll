; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_sw_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_sw_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@MLX5_CQE_INVALID = common dso_local global i64 0, align 8
@MLX5_CQE_OWNER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_cq*, i32)* @get_sw_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sw_cqe(%struct.mlx5_cq* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %9, %13
  %15 = call i8* @get_cqe(%struct.mlx5_cq* %8, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr i8, i8* %23, i64 64
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i8* [ %21, %20 ], [ %24, %22 ]
  %27 = bitcast i8* %26 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %27, %struct.mlx5_cqe64** %7, align 8
  %28 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %29 = call i64 @mlx5dv_get_cqe_opcode(%struct.mlx5_cqe64* %28)
  %30 = load i64, i64* @MLX5_CQE_INVALID, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %25
  %36 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MLX5_CQE_OWNER_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.mlx5_cq*, %struct.mlx5_cq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = xor i32 %40, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %35
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %3, align 8
  br label %57

56:                                               ; preds = %35, %25
  store i8* null, i8** %3, align 8
  br label %57

57:                                               ; preds = %56, %54
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i8* @get_cqe(%struct.mlx5_cq*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @mlx5dv_get_cqe_opcode(%struct.mlx5_cqe64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
