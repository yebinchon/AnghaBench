; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_centralized.c_ck_barrier_centralized.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_centralized.c_ck_barrier_centralized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_centralized = type { i32, i32 }
%struct.ck_barrier_centralized_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_centralized(%struct.ck_barrier_centralized* %0, %struct.ck_barrier_centralized_state* %1, i32 %2) #0 {
  %4 = alloca %struct.ck_barrier_centralized*, align 8
  %5 = alloca %struct.ck_barrier_centralized_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ck_barrier_centralized* %0, %struct.ck_barrier_centralized** %4, align 8
  store %struct.ck_barrier_centralized_state* %1, %struct.ck_barrier_centralized_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ck_barrier_centralized_state*, %struct.ck_barrier_centralized_state** %5, align 8
  %10 = getelementptr inbounds %struct.ck_barrier_centralized_state, %struct.ck_barrier_centralized_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.ck_barrier_centralized_state*, %struct.ck_barrier_centralized_state** %5, align 8
  %14 = getelementptr inbounds %struct.ck_barrier_centralized_state, %struct.ck_barrier_centralized_state* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  store i32 %12, i32* %7, align 4
  %15 = load %struct.ck_barrier_centralized*, %struct.ck_barrier_centralized** %4, align 8
  %16 = getelementptr inbounds %struct.ck_barrier_centralized, %struct.ck_barrier_centralized* %15, i32 0, i32 1
  %17 = call i32 @ck_pr_faa_uint(i32* %16, i32 1)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub i32 %19, 1
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.ck_barrier_centralized*, %struct.ck_barrier_centralized** %4, align 8
  %24 = getelementptr inbounds %struct.ck_barrier_centralized, %struct.ck_barrier_centralized* %23, i32 0, i32 1
  %25 = call i32 @ck_pr_store_uint(i32* %24, i32 0)
  %26 = call i32 (...) @ck_pr_fence_memory()
  %27 = load %struct.ck_barrier_centralized*, %struct.ck_barrier_centralized** %4, align 8
  %28 = getelementptr inbounds %struct.ck_barrier_centralized, %struct.ck_barrier_centralized* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ck_pr_store_uint(i32* %28, i32 %29)
  br label %43

31:                                               ; preds = %3
  %32 = call i32 (...) @ck_pr_fence_atomic_load()
  br label %33

33:                                               ; preds = %39, %31
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ck_barrier_centralized*, %struct.ck_barrier_centralized** %4, align 8
  %36 = getelementptr inbounds %struct.ck_barrier_centralized, %struct.ck_barrier_centralized* %35, i32 0, i32 0
  %37 = call i32 @ck_pr_load_uint(i32* %36)
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (...) @ck_pr_stall()
  br label %33

41:                                               ; preds = %33
  %42 = call i32 (...) @ck_pr_fence_acquire()
  br label %43

43:                                               ; preds = %41, %22
  ret void
}

declare dso_local i32 @ck_pr_faa_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_fence_memory(...) #1

declare dso_local i32 @ck_pr_fence_atomic_load(...) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_pr_stall(...) #1

declare dso_local i32 @ck_pr_fence_acquire(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
