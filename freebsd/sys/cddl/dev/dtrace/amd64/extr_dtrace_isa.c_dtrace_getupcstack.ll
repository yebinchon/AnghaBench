; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.trapframe* }
%struct.trapframe = type { i64, i64, i64 }

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
  br label %105

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %105

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
  br label %97

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
  br label %105

48:                                               ; preds = %36
  %49 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  %55 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %56 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %59 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %48
  %62 = load i64, i64* %7, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %3, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %3, align 8
  store i8* %63, i8** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %105

71:                                               ; preds = %61
  %72 = load i64, i64* %8, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = call i64 @dtrace_fuword64(i8* %73)
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %71, %48
  %76 = load i8**, i8*** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @dtrace_getustack_common(i8** %76, i32 %77, i64 %78, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sge i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @ASSERT(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp sle i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = load i8**, i8*** %3, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %91, i64 %92
  store i8** %93, i8*** %3, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %75, %35
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %4, align 4
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i8**, i8*** %3, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i32 1
  store i8** %104, i8*** %3, align 8
  store i8* null, i8** %103, align 8
  br label %98

105:                                              ; preds = %22, %26, %47, %70, %98
  ret void
}

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @dtrace_fuword64(i8*) #1

declare dso_local i32 @dtrace_getustack_common(i8**, i32, i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
