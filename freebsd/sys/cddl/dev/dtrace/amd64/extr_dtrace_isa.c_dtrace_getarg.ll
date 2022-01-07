; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_frame = type { i32, %struct.amd64_frame* }
%struct.trapframe = type { i64, i32, i32, i32, i32, i32, i32 }

@dtrace_invop_callsite = common dso_local global i64 0, align 8
@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@CPU_DTRACE_NOFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_getarg(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.amd64_frame*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.trapframe*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = call i64 (...) @dtrace_getfp()
  %13 = inttoptr i64 %12 to %struct.amd64_frame*
  store %struct.amd64_frame* %13, %struct.amd64_frame** %7, align 8
  store i32 5, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %14

14:                                               ; preds = %72, %2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %14
  %19 = load %struct.amd64_frame*, %struct.amd64_frame** %7, align 8
  %20 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %19, i32 0, i32 1
  %21 = load %struct.amd64_frame*, %struct.amd64_frame** %20, align 8
  store %struct.amd64_frame* %21, %struct.amd64_frame** %7, align 8
  %22 = load %struct.amd64_frame*, %struct.amd64_frame** %7, align 8
  %23 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @P2ROUNDUP(i32 %24, i32 16)
  %26 = load i64, i64* @dtrace_invop_callsite, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %18
  %29 = load %struct.amd64_frame*, %struct.amd64_frame** %7, align 8
  %30 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %29, i64 1
  %31 = bitcast %struct.amd64_frame* %30 to %struct.trapframe*
  store %struct.trapframe* %31, %struct.trapframe** %11, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %61 [
    i32 0, label %37
    i32 1, label %41
    i32 2, label %45
    i32 3, label %49
    i32 4, label %53
    i32 5, label %57
  ]

37:                                               ; preds = %35
  %38 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 6
  %40 = bitcast i32* %39 to i64*
  store i64* %40, i64** %8, align 8
  br label %61

41:                                               ; preds = %35
  %42 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 5
  %44 = bitcast i32* %43 to i64*
  store i64* %44, i64** %8, align 8
  br label %61

45:                                               ; preds = %35
  %46 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 4
  %48 = bitcast i32* %47 to i64*
  store i64* %48, i64** %8, align 8
  br label %61

49:                                               ; preds = %35
  %50 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 3
  %52 = bitcast i32* %51 to i64*
  store i64* %52, i64** %8, align 8
  br label %61

53:                                               ; preds = %35
  %54 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 2
  %56 = bitcast i32* %55 to i64*
  store i64* %56, i64** %8, align 8
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 1
  %60 = bitcast i32* %59 to i64*
  store i64* %60, i64** %8, align 8
  br label %61

61:                                               ; preds = %35, %57, %53, %49, %45, %41, %37
  store i32 0, i32* %4, align 4
  br label %70

62:                                               ; preds = %28
  %63 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i64*
  store i64* %66, i64** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %61
  br label %92

71:                                               ; preds = %18
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %14

75:                                               ; preds = %14
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %83 = call i32 @DTRACE_CPUFLAG_SET(i32 %82)
  store i64 0, i64* %3, align 8
  br label %103

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %4, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.amd64_frame*, %struct.amd64_frame** %7, align 8
  %90 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %89, i64 1
  %91 = bitcast %struct.amd64_frame* %90 to i64*
  store i64* %91, i64** %8, align 8
  br label %92

92:                                               ; preds = %84, %70
  %93 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %94 = call i32 @DTRACE_CPUFLAG_SET(i32 %93)
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %6, align 8
  %100 = load i32, i32* @CPU_DTRACE_NOFAULT, align 4
  %101 = call i32 @DTRACE_CPUFLAG_CLEAR(i32 %100)
  %102 = load i64, i64* %6, align 8
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %92, %81
  %104 = load i64, i64* %3, align 8
  ret i64 %104
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
