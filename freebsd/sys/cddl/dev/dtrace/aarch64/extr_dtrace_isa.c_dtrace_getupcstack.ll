; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/aarch64/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/aarch64/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64, i64*, i64 }

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
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curproc, align 8
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %5, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpu_core, align 8
  %14 = load i64, i64* @curcpu, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load volatile i32, i32* %17, align 4
  %19 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %107

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %107

27:                                               ; preds = %23
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curthread, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.trapframe*, %struct.trapframe** %32, align 8
  store %struct.trapframe* %33, %struct.trapframe** %6, align 8
  %34 = icmp eq %struct.trapframe* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27
  br label %99

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i8**, i8*** %3, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %3, align 8
  store i8* %40, i8** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %107

48:                                               ; preds = %36
  %49 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 29
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %61 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %48
  %64 = load i64, i64* %7, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8**, i8*** %3, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %3, align 8
  store i8* %65, i8** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %107

73:                                               ; preds = %63
  %74 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %73, %48
  %78 = load i8**, i8*** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @dtrace_getustack_common(i8** %78, i32 %79, i64 %80, i64 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sge i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp sle i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = load i8**, i8*** %3, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8** %95, i8*** %3, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %77, %35
  br label %100

100:                                              ; preds = %104, %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %4, align 4
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8**, i8*** %3, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %3, align 8
  store i8* null, i8** %105, align 8
  br label %100

107:                                              ; preds = %22, %26, %47, %72, %100
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
