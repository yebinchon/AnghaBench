; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_special_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_special_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i64, i32, i64, i32* }

@ALLOC_SPECIAL_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_special_release(%struct.alloc_cache* %0, i32* %1) #0 {
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca i32*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %6 = call i32 @log_assert(%struct.alloc_cache* %5)
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %57

10:                                               ; preds = %2
  %11 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %12 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %17 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %16, i32 0, i32 1
  %18 = call i32 @lock_quick_lock(i32* %17)
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @alloc_special_clean(i32* %20)
  %22 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %23 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %28 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ALLOC_SPECIAL_MAX, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @pushintosuper(%struct.alloc_cache* %33, i32* %34)
  br label %57

36:                                               ; preds = %26, %19
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %39 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @alloc_set_special_next(i32* %37, i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %44 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %46 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %50 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %36
  %54 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %55 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %54, i32 0, i32 1
  %56 = call i32 @lock_quick_unlock(i32* %55)
  br label %57

57:                                               ; preds = %9, %32, %53, %36
  ret void
}

declare dso_local i32 @log_assert(%struct.alloc_cache*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @alloc_special_clean(i32*) #1

declare dso_local i32 @pushintosuper(%struct.alloc_cache*, i32*) #1

declare dso_local i32 @alloc_set_special_next(i32*, i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
