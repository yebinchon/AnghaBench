; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_release_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_release_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.alloc_cache* }
%struct.alloc_cache = type { %struct.alloc_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_release_alloc(%struct.ub_ctx* %0, %struct.alloc_cache* %1, i32 %2) #0 {
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca %struct.alloc_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %8 = icmp ne %struct.ub_ctx* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.alloc_cache*, %struct.alloc_cache** %5, align 8
  %11 = icmp ne %struct.alloc_cache* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %3
  br label %35

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %17, i32 0, i32 0
  %19 = call i32 @lock_basic_lock(i32* %18)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %21, i32 0, i32 1
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %22, align 8
  %24 = load %struct.alloc_cache*, %struct.alloc_cache** %5, align 8
  %25 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %24, i32 0, i32 0
  store %struct.alloc_cache* %23, %struct.alloc_cache** %25, align 8
  %26 = load %struct.alloc_cache*, %struct.alloc_cache** %5, align 8
  %27 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %27, i32 0, i32 1
  store %struct.alloc_cache* %26, %struct.alloc_cache** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %32, i32 0, i32 0
  %34 = call i32 @lock_basic_unlock(i32* %33)
  br label %35

35:                                               ; preds = %12, %31, %20
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
