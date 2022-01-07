; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_free_res_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_free_res_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cqe64 = type { i32, i32 }
%struct.mlx5_srq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_cqe64*, i32, %struct.mlx5_srq*, i32)* @free_res_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_res_cqe(%struct.mlx5_cqe64* %0, i32 %1, %struct.mlx5_srq* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_srq*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5_cqe64* %0, %struct.mlx5_cqe64** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5_srq* %2, %struct.mlx5_srq** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @is_equal_uidx(%struct.mlx5_cqe64* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %19 = icmp ne %struct.mlx5_srq* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %22 = call i32 @mlx5dv_get_cqe_opcode(%struct.mlx5_cqe64* %21)
  %23 = call i64 @is_responder(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %27 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be16toh(i32 %29)
  %31 = call i32 @mlx5_free_srq_wqe(%struct.mlx5_srq* %26, i32 %30)
  br label %32

32:                                               ; preds = %25, %20, %17
  store i32 1, i32* %5, align 4
  br label %59

33:                                               ; preds = %12
  br label %58

34:                                               ; preds = %4
  %35 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @is_equal_rsn(%struct.mlx5_cqe64* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %41 = icmp ne %struct.mlx5_srq* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32toh(i32 %45)
  %47 = and i32 %46, 16777215
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %51 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @be16toh(i32 %53)
  %55 = call i32 @mlx5_free_srq_wqe(%struct.mlx5_srq* %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %42, %39
  store i32 1, i32* %5, align 4
  br label %59

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %33
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %56, %32
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @is_equal_uidx(%struct.mlx5_cqe64*, i32) #1

declare dso_local i64 @is_responder(i32) #1

declare dso_local i32 @mlx5dv_get_cqe_opcode(%struct.mlx5_cqe64*) #1

declare dso_local i32 @mlx5_free_srq_wqe(%struct.mlx5_srq*, i32) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i64 @is_equal_rsn(%struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
