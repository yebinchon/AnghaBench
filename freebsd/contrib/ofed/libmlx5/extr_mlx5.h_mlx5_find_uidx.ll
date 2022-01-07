; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_find_uidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.h_mlx5_find_uidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i32 }

@MLX5_UIDX_TABLE_SHIFT = common dso_local global i64 0, align 8
@MLX5_UIDX_TABLE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx5_context*, i64)* @mlx5_find_uidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlx5_find_uidx(%struct.mlx5_context* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MLX5_UIDX_TABLE_SHIFT, align 8
  %9 = lshr i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %2
  %22 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @MLX5_UIDX_TABLE_MASK, align 8
  %32 = and i64 %30, %31
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %36

35:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
