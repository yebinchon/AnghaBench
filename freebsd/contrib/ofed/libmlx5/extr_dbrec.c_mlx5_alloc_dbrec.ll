; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c_mlx5_alloc_dbrec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_dbrec.c_mlx5_alloc_dbrec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, i32, %struct.mlx5_db_page* }
%struct.mlx5_db_page = type { i64, i64, i64*, %struct.TYPE_2__, %struct.mlx5_db_page* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mlx5_alloc_dbrec(%struct.mlx5_context* %0) #0 {
  %2 = alloca %struct.mlx5_context*, align 8
  %3 = alloca %struct.mlx5_db_page*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %2, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.mlx5_context*, %struct.mlx5_context** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.mlx5_context*, %struct.mlx5_context** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %10, i32 0, i32 2
  %12 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %11, align 8
  store %struct.mlx5_db_page* %12, %struct.mlx5_db_page** %3, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %15 = icmp ne %struct.mlx5_db_page* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %37

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %27, i32 0, i32 4
  %29 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %28, align 8
  store %struct.mlx5_db_page* %29, %struct.mlx5_db_page** %3, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.mlx5_context*, %struct.mlx5_context** %2, align 8
  %32 = call %struct.mlx5_db_page* @__add_page(%struct.mlx5_context* %31)
  store %struct.mlx5_db_page* %32, %struct.mlx5_db_page** %3, align 8
  %33 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %34 = icmp ne %struct.mlx5_db_page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %96

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %53, %37
  %43 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %43, i32 0, i32 2
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ffsl(i64 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = xor i64 %69, -1
  %71 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %72 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = and i64 %77, %70
  store i64 %78, i64* %76, align 8
  %79 = load %struct.mlx5_db_page*, %struct.mlx5_db_page** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5_db_page, %struct.mlx5_db_page* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 %83, 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = load %struct.mlx5_context*, %struct.mlx5_context** %2, align 8
  %91 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul i64 %89, %93
  %95 = getelementptr inbounds i32, i32* %82, i64 %94
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %56, %35
  %97 = load %struct.mlx5_context*, %struct.mlx5_context** %2, align 8
  %98 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %97, i32 0, i32 1
  %99 = call i32 @pthread_mutex_unlock(i32* %98)
  %100 = load i32*, i32** %4, align 8
  ret i32* %100
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mlx5_db_page* @__add_page(%struct.mlx5_context*) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
