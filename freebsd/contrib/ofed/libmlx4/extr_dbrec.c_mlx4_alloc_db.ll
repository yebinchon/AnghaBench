; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c_mlx4_alloc_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_dbrec.c_mlx4_alloc_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_context = type { i32, %struct.mlx4_db_page** }
%struct.mlx4_db_page = type { i64, i64, i64*, %struct.TYPE_2__, %struct.mlx4_db_page* }
%struct.TYPE_2__ = type { i32* }

@db_size = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mlx4_alloc_db(%struct.mlx4_context* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_db_page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_context* %0, %struct.mlx4_context** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %9 = load %struct.mlx4_context*, %struct.mlx4_context** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.mlx4_context*, %struct.mlx4_context** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %12, i32 0, i32 1
  %14 = load %struct.mlx4_db_page**, %struct.mlx4_db_page*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mlx4_db_page*, %struct.mlx4_db_page** %14, i64 %16
  %18 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %17, align 8
  store %struct.mlx4_db_page* %18, %struct.mlx4_db_page** %5, align 8
  br label %19

19:                                               ; preds = %32, %2
  %20 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %21 = icmp ne %struct.mlx4_db_page* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %44

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %33, i32 0, i32 4
  %35 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %34, align 8
  store %struct.mlx4_db_page* %35, %struct.mlx4_db_page** %5, align 8
  br label %19

36:                                               ; preds = %19
  %37 = load %struct.mlx4_context*, %struct.mlx4_context** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.mlx4_db_page* @__add_page(%struct.mlx4_context* %37, i32 %38)
  store %struct.mlx4_db_page* %39, %struct.mlx4_db_page** %5, align 8
  %40 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %41 = icmp ne %struct.mlx4_db_page* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %105

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %60, %44
  %50 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %49

63:                                               ; preds = %49
  %64 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %65 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ffsl(i64 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = shl i64 1, %74
  %76 = xor i64 %75, -1
  %77 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %78 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, %76
  store i64 %84, i64* %82, align 8
  %85 = load %struct.mlx4_db_page*, %struct.mlx4_db_page** %5, align 8
  %86 = getelementptr inbounds %struct.mlx4_db_page, %struct.mlx4_db_page* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = add i64 %92, %95
  %97 = load i32*, i32** @db_size, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %96, %102
  %104 = getelementptr inbounds i32, i32* %88, i64 %103
  store i32* %104, i32** %6, align 8
  br label %105

105:                                              ; preds = %63, %42
  %106 = load %struct.mlx4_context*, %struct.mlx4_context** %3, align 8
  %107 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %106, i32 0, i32 0
  %108 = call i32 @pthread_mutex_unlock(i32* %107)
  %109 = load i32*, i32** %6, align 8
  ret i32* %109
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.mlx4_db_page* @__add_page(%struct.mlx4_context*, i32) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
