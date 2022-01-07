; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_pushintosuper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_pushintosuper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32* }

@ALLOC_SPECIAL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alloc_cache*, i32*)* @pushintosuper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pushintosuper(%struct.alloc_cache* %0, i32* %1) #0 {
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %8 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @log_assert(i32 %11)
  %13 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %14 = icmp ne %struct.alloc_cache* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %17 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %22 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ALLOC_SPECIAL_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br label %26

26:                                               ; preds = %20, %15, %2
  %27 = phi i1 [ false, %15 ], [ false, %2 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @log_assert(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %32 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @alloc_set_special_next(i32* %30, i32* %33)
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %44, %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ALLOC_SPECIAL_MAX, align 4
  %38 = sdiv i32 %37, 2
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** %6, align 8
  %42 = call i8* @alloc_special_next(i32* %41)
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %6, align 8
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %35

47:                                               ; preds = %35
  %48 = load i32*, i32** %6, align 8
  %49 = call i8* @alloc_special_next(i32* %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %52 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load i32, i32* @ALLOC_SPECIAL_MAX, align 4
  %54 = sdiv i32 %53, 2
  %55 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %56 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %60 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = call i32 @lock_quick_lock(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %66 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @alloc_set_special_next(i32* %64, i32* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %73 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i32* %71, i32** %75, align 8
  %76 = load i32, i32* @ALLOC_SPECIAL_MAX, align 4
  %77 = sdiv i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %80 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, %78
  store i32 %84, i32* %82, align 8
  %85 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %86 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @lock_quick_unlock(i32* %88)
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @alloc_set_special_next(i32*, i32*) #1

declare dso_local i8* @alloc_special_next(i32*) #1

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
