; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/i386/extr_dtrace_isa.c_dtrace_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i64 }
%struct.i386_frame = type { i32, %struct.i386_frame* }

@dtrace_invop_callsite = common dso_local global i64 0, align 8
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_getarg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.i386_frame*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = call i64 (...) @dtrace_getfp()
  %11 = inttoptr i64 %10 to %struct.i386_frame*
  store %struct.i386_frame* %11, %struct.i386_frame** %6, align 8
  store i32 1, i32* %9, align 4
  br label %12

12:                                               ; preds = %39, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %12
  %17 = load %struct.i386_frame*, %struct.i386_frame** %6, align 8
  %18 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %17, i32 0, i32 1
  %19 = load %struct.i386_frame*, %struct.i386_frame** %18, align 8
  store %struct.i386_frame* %19, %struct.i386_frame** %6, align 8
  %20 = load %struct.i386_frame*, %struct.i386_frame** %6, align 8
  %21 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @P2ROUNDUP(i32 %22, i32 4)
  %24 = load i64, i64* @dtrace_invop_callsite, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load %struct.i386_frame*, %struct.i386_frame** %6, align 8
  %28 = getelementptr inbounds %struct.i386_frame, %struct.i386_frame* %27, i64 1
  %29 = bitcast %struct.i386_frame* %28 to i64**
  %30 = getelementptr inbounds i64*, i64** %29, i64 0
  %31 = load i64*, i64** %30, align 8
  %32 = bitcast i64* %31 to %struct.trapframe*
  store %struct.trapframe* %32, %struct.trapframe** %5, align 8
  %33 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i64*
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  store i64* %37, i64** %7, align 8
  br label %48

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = load %struct.i386_frame*, %struct.i386_frame** %6, align 8
  %46 = bitcast %struct.i386_frame* %45 to i64*
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  store i64* %47, i64** %7, align 8
  br label %48

48:                                               ; preds = %42, %26
  %49 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %50 = call i32 @DTRACE_CPUFLAG_SET(i32 %49)
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %57 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %56)
  %58 = load i64, i64* %8, align 8
  ret i64 %58
}

declare dso_local i64 @dtrace_getfp(...) #1

declare dso_local i64 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_SET(i32) #1

declare dso_local i32 @DTRACE_CPUFLAG_CLEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
