; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_mcs.c_ck_barrier_mcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_mcs.c_ck_barrier_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_mcs = type { i32*, i32, i32, i32 }
%struct.ck_barrier_mcs_state = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_mcs(%struct.ck_barrier_mcs* %0, %struct.ck_barrier_mcs_state* %1) #0 {
  %3 = alloca %struct.ck_barrier_mcs*, align 8
  %4 = alloca %struct.ck_barrier_mcs_state*, align 8
  store %struct.ck_barrier_mcs* %0, %struct.ck_barrier_mcs** %3, align 8
  store %struct.ck_barrier_mcs_state* %1, %struct.ck_barrier_mcs_state** %4, align 8
  br label %5

5:                                                ; preds = %15, %2
  %6 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %7 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %6, i64 %9
  %11 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ck_barrier_mcs_check_children(i32 %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @ck_pr_stall()
  br label %5

17:                                               ; preds = %5
  %18 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %19 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %20 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %18, i64 %21
  %23 = call i32 @ck_barrier_mcs_reinitialize_children(%struct.ck_barrier_mcs* %22)
  %24 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %25 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %26 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %24, i64 %27
  %29 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ck_pr_store_uint(i32 %30, i32 0)
  %32 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %33 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %49, %36
  %38 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %39 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %40 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %38, i64 %41
  %43 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %42, i32 0, i32 1
  %44 = call i32 @ck_pr_load_uint(i32* %43)
  %45 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %46 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 (...) @ck_pr_stall()
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %54 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %55 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %53, i64 %56
  %58 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %63 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ck_pr_store_uint(i32 %61, i32 %64)
  %66 = load %struct.ck_barrier_mcs*, %struct.ck_barrier_mcs** %3, align 8
  %67 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %68 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %66, i64 %69
  %71 = getelementptr inbounds %struct.ck_barrier_mcs, %struct.ck_barrier_mcs* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %76 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ck_pr_store_uint(i32 %74, i32 %77)
  %79 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %80 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = xor i32 %81, -1
  %83 = load %struct.ck_barrier_mcs_state*, %struct.ck_barrier_mcs_state** %4, align 8
  %84 = getelementptr inbounds %struct.ck_barrier_mcs_state, %struct.ck_barrier_mcs_state* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = call i32 (...) @ck_pr_fence_memory()
  ret void
}

declare dso_local i32 @ck_barrier_mcs_check_children(i32) #1

declare dso_local i32 @ck_pr_stall(...) #1

declare dso_local i32 @ck_barrier_mcs_reinitialize_children(%struct.ck_barrier_mcs*) #1

declare dso_local i32 @ck_pr_store_uint(i32, i32) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_pr_fence_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
