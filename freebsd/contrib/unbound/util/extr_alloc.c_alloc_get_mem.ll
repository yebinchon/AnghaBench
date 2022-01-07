; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ALLOC_REG_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @alloc_get_mem(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.alloc_cache*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %2, align 8
  store i64 32, i64* %4, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %6 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %11 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %10, i32 0, i32 2
  %12 = call i32 @lock_quick_lock(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %15 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %22 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %21, i32 0, i32 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %3, align 8
  br label %24

24:                                               ; preds = %34, %13
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i64 @lock_get_mem(i32* %30)
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call %struct.TYPE_6__* @alloc_special_next(%struct.TYPE_6__* %35)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %3, align 8
  br label %24

37:                                               ; preds = %24
  %38 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %39 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ALLOC_REG_SIZE, align 8
  %42 = mul i64 %40, %41
  %43 = load i64, i64* %4, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %4, align 8
  %45 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %46 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %51 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %50, i32 0, i32 2
  %52 = call i32 @lock_quick_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i64 @lock_get_mem(i32*) #1

declare dso_local %struct.TYPE_6__* @alloc_special_next(%struct.TYPE_6__*) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
