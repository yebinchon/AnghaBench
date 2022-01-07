; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_speculation_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_speculation_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_7__*, i64, i32)* @dtrace_speculation_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @dtrace_speculation_buffer(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %88

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpu_core, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %88

29:                                               ; preds = %15
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %35
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %8, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %40
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %11, align 8
  br label %42

42:                                               ; preds = %69, %29
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %66 [
    i32 128, label %47
    i32 130, label %47
    i32 129, label %47
    i32 131, label %48
    i32 132, label %55
    i32 133, label %63
    i32 134, label %65
  ]

47:                                               ; preds = %42, %42, %42
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %88

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %88

55:                                               ; preds = %42
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %4, align 8
  br label %88

62:                                               ; preds = %55
  store i32 133, i32* %10, align 4
  br label %68

63:                                               ; preds = %42
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %4, align 8
  br label %88

65:                                               ; preds = %42
  store i32 132, i32* %10, align 4
  br label %68

66:                                               ; preds = %42
  %67 = call i32 @ASSERT(i32 0)
  br label %68

68:                                               ; preds = %66, %65, %62
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @dtrace_cas32(i32* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %42, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 132
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 133
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ true, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %4, align 8
  br label %88

88:                                               ; preds = %83, %63, %60, %48, %47, %21, %14
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %89
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_cas32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
