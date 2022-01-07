; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getustackdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getustackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64* }

@curproc = common dso_local global i32* null, align 8
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getustackdepth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32*, i32** @curproc, align 8
  store i32* %7, i32** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.trapframe*, %struct.trapframe** %12, align 8
  store %struct.trapframe* %13, %struct.trapframe** %3, align 8
  %14 = icmp eq %struct.trapframe* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %0
  store i32 0, i32* %1, align 4
  br label %58

16:                                               ; preds = %10
  %17 = load i32, i32* @CPU_DTRACE_FAULT, align 4
  %18 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %58

21:                                               ; preds = %16
  %22 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %31 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %21
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @SV_ILP32, align 4
  %36 = call i64 @SV_PROC_FLAG(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = call i64 @dtrace_fuword32(i8* %40)
  store i64 %41, i64* %4, align 8
  br label %46

42:                                               ; preds = %33
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @dtrace_fuword64(i8* %44)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i64 @dtrace_getustack_common(i32* null, i32 0, i64 %50, i64 %51)
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %49, %20, %15
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @SV_PROC_FLAG(i32*, i32) #1

declare dso_local i64 @dtrace_fuword32(i8*) #1

declare dso_local i64 @dtrace_fuword64(i8*) #1

declare dso_local i64 @dtrace_getustack_common(i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
