; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, i32, i32, i32, i32, %struct.alloc_cache*, i32*, i32*, i32*, i64 }

@THRNUM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_init(%struct.alloc_cache* %0, %struct.alloc_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.alloc_cache*, align 8
  %5 = alloca %struct.alloc_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.alloc_cache* %0, %struct.alloc_cache** %4, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %8 = call i32 @memset(%struct.alloc_cache* %7, i32 0, i32 64)
  %9 = load %struct.alloc_cache*, %struct.alloc_cache** %5, align 8
  %10 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %11 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %10, i32 0, i32 5
  store %struct.alloc_cache* %9, %struct.alloc_cache** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %14 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %17 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @THRNUM_SHIFT, align 4
  %19 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %20 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %24 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %23, i32 0, i32 2
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @THRNUM_SHIFT, align 4
  %26 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %27 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %31 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %35 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %38 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %42 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %46 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %45, i32 0, i32 3
  store i32 100, i32* %46, align 4
  %47 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %48 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %47, i32 0, i32 9
  store i64 0, i64* %48, align 8
  %49 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %50 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %49, i32 0, i32 8
  store i32* null, i32** %50, align 8
  %51 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %52 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %51, i32 0, i32 7
  store i32* null, i32** %52, align 8
  %53 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %54 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %56 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %55, i32 0, i32 5
  %57 = load %struct.alloc_cache*, %struct.alloc_cache** %56, align 8
  %58 = icmp ne %struct.alloc_cache* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %3
  %60 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %61 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %62 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @prealloc_blocks(%struct.alloc_cache* %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %3
  %66 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %67 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %66, i32 0, i32 5
  %68 = load %struct.alloc_cache*, %struct.alloc_cache** %67, align 8
  %69 = icmp ne %struct.alloc_cache* %68, null
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %72 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %71, i32 0, i32 4
  %73 = call i32 @lock_quick_init(i32* %72)
  %74 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %75 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %74, i32 0, i32 4
  %76 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %77 = call i32 @lock_protect(i32* %75, %struct.alloc_cache* %76, i32 64)
  br label %78

78:                                               ; preds = %70, %65
  ret void
}

declare dso_local i32 @memset(%struct.alloc_cache*, i32, i32) #1

declare dso_local i32 @prealloc_blocks(%struct.alloc_cache*, i32) #1

declare dso_local i32 @lock_quick_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, %struct.alloc_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
