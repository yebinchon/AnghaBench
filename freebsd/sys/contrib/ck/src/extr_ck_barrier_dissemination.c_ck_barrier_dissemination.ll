; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_dissemination.c_ck_barrier_dissemination.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_dissemination.c_ck_barrier_dissemination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_dissemination = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.ck_barrier_dissemination_state = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ck_barrier_dissemination(%struct.ck_barrier_dissemination* %0, %struct.ck_barrier_dissemination_state* %1) #0 {
  %3 = alloca %struct.ck_barrier_dissemination*, align 8
  %4 = alloca %struct.ck_barrier_dissemination_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.ck_barrier_dissemination* %0, %struct.ck_barrier_dissemination** %3, align 8
  store %struct.ck_barrier_dissemination_state* %1, %struct.ck_barrier_dissemination_state** %4, align 8
  %9 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %3, align 8
  %10 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %3, align 8
  %18 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %19 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %17, i64 %20
  %22 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %25 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %7, align 8
  %34 = load %struct.ck_barrier_dissemination*, %struct.ck_barrier_dissemination** %3, align 8
  %35 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %36 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %34, i64 %37
  %39 = getelementptr inbounds %struct.ck_barrier_dissemination, %struct.ck_barrier_dissemination* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %42 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %52 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ck_pr_store_uint(i32* %50, i32 %53)
  br label %55

55:                                               ; preds = %62, %16
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @ck_pr_load_uint(i32* %56)
  %58 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %59 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (...) @ck_pr_stall()
  br label %55

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %70 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %75 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, -1
  %78 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %79 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %82 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 1, %83
  %85 = load %struct.ck_barrier_dissemination_state*, %struct.ck_barrier_dissemination_state** %4, align 8
  %86 = getelementptr inbounds %struct.ck_barrier_dissemination_state, %struct.ck_barrier_dissemination_state* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = call i32 (...) @ck_pr_fence_acquire()
  ret void
}

declare dso_local i32 @ck_pr_store_uint(i32*, i32) #1

declare dso_local i32 @ck_pr_load_uint(i32*) #1

declare dso_local i32 @ck_pr_stall(...) #1

declare dso_local i32 @ck_pr_fence_acquire(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
