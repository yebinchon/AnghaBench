; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_obtain_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_obtain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { %struct.alloc_cache* }
%struct.ub_ctx = type { %struct.alloc_cache, i32, i32, %struct.alloc_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.alloc_cache* @context_obtain_alloc(%struct.ub_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.alloc_cache*, align 8
  %7 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %11, i32 0, i32 1
  %13 = call i32 @lock_basic_lock(i32* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 3
  %17 = load %struct.alloc_cache*, %struct.alloc_cache** %16, align 8
  store %struct.alloc_cache* %17, %struct.alloc_cache** %6, align 8
  %18 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %19 = icmp ne %struct.alloc_cache* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %22 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %21, i32 0, i32 0
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %22, align 8
  %24 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %24, i32 0, i32 3
  store %struct.alloc_cache* %23, %struct.alloc_cache** %25, align 8
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %35, i32 0, i32 1
  %37 = call i32 @lock_basic_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %40 = icmp ne %struct.alloc_cache* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %42, i32 0, i32 0
  %44 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %45 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %44, i32 0, i32 0
  store %struct.alloc_cache* %43, %struct.alloc_cache** %45, align 8
  %46 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  store %struct.alloc_cache* %46, %struct.alloc_cache** %3, align 8
  br label %60

47:                                               ; preds = %38
  %48 = call i64 @calloc(i32 1, i32 8)
  %49 = inttoptr i64 %48 to %struct.alloc_cache*
  store %struct.alloc_cache* %49, %struct.alloc_cache** %6, align 8
  %50 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %51 = icmp ne %struct.alloc_cache* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store %struct.alloc_cache* null, %struct.alloc_cache** %3, align 8
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @alloc_init(%struct.alloc_cache* %54, %struct.alloc_cache* %56, i32 %57)
  %59 = load %struct.alloc_cache*, %struct.alloc_cache** %6, align 8
  store %struct.alloc_cache* %59, %struct.alloc_cache** %3, align 8
  br label %60

60:                                               ; preds = %53, %52, %41
  %61 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  ret %struct.alloc_cache* %61
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @alloc_init(%struct.alloc_cache*, %struct.alloc_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
