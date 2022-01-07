; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_store_uidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_store_uidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i32 }

@MLX5_UIDX_TABLE_SHIFT = common dso_local global i64 0, align 8
@MLX5_UIDX_TABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlx5_store_uidx(%struct.mlx5_context* %0, i8* %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 -1, i64* %6, align 8
  %8 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %8, i32 0, i32 0
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %12 = call i64 @get_free_uidx(%struct.mlx5_context* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %71

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @MLX5_UIDX_TABLE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @MLX5_UIDX_TABLE_MASK, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i8** @calloc(i32 %30, i32 8)
  %32 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8** %31, i8*** %37, align 8
  %38 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %28
  br label %71

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %59 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @MLX5_UIDX_TABLE_MASK, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  store i8* %57, i8** %69, align 8
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %48, %46, %15
  %72 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %72, i32 0, i32 0
  %74 = call i32 @pthread_mutex_unlock(i32* %73)
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @get_free_uidx(%struct.mlx5_context*) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
