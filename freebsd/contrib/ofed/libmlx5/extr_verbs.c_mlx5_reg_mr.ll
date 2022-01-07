; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_reg_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_mr = type { i32 }
%struct.ibv_pd = type { i32 }
%struct.mlx5_mr = type { i32, %struct.ibv_mr, i32 }
%struct.ibv_reg_mr = type { i32 }
%struct.ibv_reg_mr_resp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_mr* @mlx5_reg_mr(%struct.ibv_pd* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_mr*, align 8
  %6 = alloca %struct.ibv_pd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_mr*, align 8
  %11 = alloca %struct.ibv_reg_mr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ibv_reg_mr_resp, align 4
  store %struct.ibv_pd* %0, %struct.ibv_pd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %13, align 4
  %16 = call %struct.mlx5_mr* @calloc(i32 1, i32 12)
  store %struct.mlx5_mr* %16, %struct.mlx5_mr** %10, align 8
  %17 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %18 = icmp ne %struct.mlx5_mr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.ibv_mr* null, %struct.ibv_mr** %5, align 8
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.ibv_pd*, %struct.ibv_pd** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_mr, %struct.mlx5_mr* %27, i32 0, i32 1
  %29 = call i32 @ibv_cmd_reg_mr(%struct.ibv_pd* %21, i8* %22, i64 %23, i64 %25, i32 %26, %struct.ibv_mr* %28, %struct.ibv_reg_mr* %11, i32 4, %struct.ibv_reg_mr_resp* %14, i32 4)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_mr, %struct.mlx5_mr* %33, i32 0, i32 2
  %35 = call i32 @mlx5_free_buf(i32* %34)
  %36 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %37 = call i32 @free(%struct.mlx5_mr* %36)
  store %struct.ibv_mr* null, %struct.ibv_mr** %5, align 8
  br label %44

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %41 = getelementptr inbounds %struct.mlx5_mr, %struct.mlx5_mr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mlx5_mr*, %struct.mlx5_mr** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_mr, %struct.mlx5_mr* %42, i32 0, i32 1
  store %struct.ibv_mr* %43, %struct.ibv_mr** %5, align 8
  br label %44

44:                                               ; preds = %38, %32, %19
  %45 = load %struct.ibv_mr*, %struct.ibv_mr** %5, align 8
  ret %struct.ibv_mr* %45
}

declare dso_local %struct.mlx5_mr* @calloc(i32, i32) #1

declare dso_local i32 @ibv_cmd_reg_mr(%struct.ibv_pd*, i8*, i64, i64, i32, %struct.ibv_mr*, %struct.ibv_reg_mr*, i32, %struct.ibv_reg_mr_resp*, i32) #1

declare dso_local i32 @mlx5_free_buf(i32*) #1

declare dso_local i32 @free(%struct.mlx5_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
