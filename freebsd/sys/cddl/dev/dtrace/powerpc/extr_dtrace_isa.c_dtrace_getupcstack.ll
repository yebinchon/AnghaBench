; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/powerpc/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64*, i64 }

@curproc = common dso_local global %struct.TYPE_5__* null, align 8
@cpu_core = common dso_local global %struct.TYPE_7__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_6__* null, align 8
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getupcstack(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curproc, align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_core, align 8
  %13 = load i64, i64* @curcpu, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load volatile i32, i32* %16, align 4
  %18 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %103

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %103

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.trapframe*, %struct.trapframe** %31, align 8
  store %struct.trapframe* %32, %struct.trapframe** %6, align 8
  %33 = icmp eq %struct.trapframe* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %26
  br label %95

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** %3, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %3, align 8
  store i8* %39, i8** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %103

47:                                               ; preds = %35
  %48 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  %51 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %57 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %47
  %60 = load i64, i64* %7, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8**, i8*** %3, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %3, align 8
  store i8* %61, i8** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %103

69:                                               ; preds = %59
  %70 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %47
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @dtrace_getustack_common(i8** %74, i32 %75, i64 %76, i64 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i8**, i8*** %3, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8** %91, i8*** %3, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %73, %34
  br label %96

96:                                               ; preds = %100, %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8**, i8*** %3, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %3, align 8
  store i8* null, i8** %101, align 8
  br label %96

103:                                              ; preds = %21, %25, %46, %68, %96
  ret void
}

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i32 @dtrace_getustack_common(i8**, i32, i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
