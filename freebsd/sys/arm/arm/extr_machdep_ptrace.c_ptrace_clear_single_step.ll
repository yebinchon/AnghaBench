; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_ptrace.c_ptrace_clear_single_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep_ptrace.c_ptrace_clear_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__, %struct.proc*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.proc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PSR_T = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_clear_single_step(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %5 = load %struct.thread*, %struct.thread** %3, align 8
  %6 = getelementptr inbounds %struct.thread, %struct.thread* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PSR_T, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 1
  %24 = load %struct.proc*, %struct.proc** %23, align 8
  store %struct.proc* %24, %struct.proc** %4, align 8
  %25 = load %struct.proc*, %struct.proc** %4, align 8
  %26 = call i32 @PROC_UNLOCK(%struct.proc* %25)
  %27 = load %struct.thread*, %struct.thread** %3, align 8
  %28 = load %struct.thread*, %struct.thread** %3, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ptrace_write_int(%struct.thread* %27, i32 %31, i64 %35)
  %37 = load %struct.proc*, %struct.proc** %4, align 8
  %38 = call i32 @PROC_LOCK(%struct.proc* %37)
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %21, %15
  %43 = load %struct.thread*, %struct.thread** %3, align 8
  %44 = getelementptr inbounds %struct.thread, %struct.thread* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.thread*, %struct.thread** %3, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 1
  %51 = load %struct.proc*, %struct.proc** %50, align 8
  store %struct.proc* %51, %struct.proc** %4, align 8
  %52 = load %struct.proc*, %struct.proc** %4, align 8
  %53 = call i32 @PROC_UNLOCK(%struct.proc* %52)
  %54 = load %struct.thread*, %struct.thread** %3, align 8
  %55 = load %struct.thread*, %struct.thread** %3, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.thread*, %struct.thread** %3, align 8
  %60 = getelementptr inbounds %struct.thread, %struct.thread* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ptrace_write_int(%struct.thread* %54, i32 %58, i64 %62)
  %64 = load %struct.proc*, %struct.proc** %4, align 8
  %65 = call i32 @PROC_LOCK(%struct.proc* %64)
  %66 = load %struct.thread*, %struct.thread** %3, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %48, %42
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @ptrace_write_int(%struct.thread*, i32, i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
