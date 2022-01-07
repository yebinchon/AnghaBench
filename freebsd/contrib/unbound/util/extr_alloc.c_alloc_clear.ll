; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i64, %struct.regional*, i64, i32*, %struct.TYPE_2__*, i32 }
%struct.regional = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_clear(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.alloc_cache*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.regional*, align 8
  %5 = alloca %struct.regional*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %2, align 8
  %6 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %7 = icmp ne %struct.alloc_cache* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %102

9:                                                ; preds = %1
  %10 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %11 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %16 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %15, i32 0, i32 5
  %17 = call i32 @lock_quick_destroy(i32* %16)
  br label %18

18:                                               ; preds = %14, %9
  %19 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %20 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %75

23:                                               ; preds = %18
  %24 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %25 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %30 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %36, %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i32* @alloc_special_next(i32* %33)
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* @alloc_special_next(i32* %37)
  store i32* %38, i32** %3, align 8
  br label %32

39:                                               ; preds = %32
  %40 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %41 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @lock_quick_lock(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %47 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @alloc_set_special_next(i32* %45, i32* %50)
  %52 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %53 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %56 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i32* %54, i32** %58, align 8
  %59 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %60 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %63 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %61
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %71 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @lock_quick_unlock(i32* %73)
  br label %78

75:                                               ; preds = %23, %18
  %76 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %77 = call i32 @alloc_clear_special_list(%struct.alloc_cache* %76)
  br label %78

78:                                               ; preds = %75, %39
  %79 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %80 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %79, i32 0, i32 3
  store i32* null, i32** %80, align 8
  %81 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %82 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %84 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %83, i32 0, i32 1
  %85 = load %struct.regional*, %struct.regional** %84, align 8
  store %struct.regional* %85, %struct.regional** %4, align 8
  br label %86

86:                                               ; preds = %89, %78
  %87 = load %struct.regional*, %struct.regional** %4, align 8
  %88 = icmp ne %struct.regional* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.regional*, %struct.regional** %4, align 8
  %91 = getelementptr inbounds %struct.regional, %struct.regional* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.regional*
  store %struct.regional* %93, %struct.regional** %5, align 8
  %94 = load %struct.regional*, %struct.regional** %4, align 8
  %95 = call i32 @free(%struct.regional* %94)
  %96 = load %struct.regional*, %struct.regional** %5, align 8
  store %struct.regional* %96, %struct.regional** %4, align 8
  br label %86

97:                                               ; preds = %86
  %98 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %99 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %98, i32 0, i32 1
  store %struct.regional* null, %struct.regional** %99, align 8
  %100 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %101 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %8
  ret void
}

declare dso_local i32 @lock_quick_destroy(i32*) #1

declare dso_local i32* @alloc_special_next(i32*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @alloc_set_special_next(i32*, i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

declare dso_local i32 @alloc_clear_special_list(%struct.alloc_cache*) #1

declare dso_local i32 @free(%struct.regional*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
