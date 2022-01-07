; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_read_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_read_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.mlx4_context = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, i32*)* @mlx4_read_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_read_clock(%struct.ibv_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_context*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %12 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %11)
  store %struct.mlx4_context* %12, %struct.mlx4_context** %10, align 8
  %13 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %14 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %26 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @READL(i64 %27)
  %29 = call i32 @be32toh(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %31 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 4
  %34 = call i32 @READL(i64 %33)
  %35 = call i32 @be32toh(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.mlx4_context*, %struct.mlx4_context** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @READL(i64 %38)
  %40 = call i32 @be32toh(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %49

45:                                               ; preds = %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %21

49:                                               ; preds = %44, %21
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 32
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @READL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
