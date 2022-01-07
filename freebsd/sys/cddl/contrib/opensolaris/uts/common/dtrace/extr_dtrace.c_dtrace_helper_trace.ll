; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i64 }

@cpu_core = common dso_local global %struct.TYPE_13__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@dtrace_helptrace_buffer = common dso_local global %struct.TYPE_12__* null, align 8
@dtrace_helptrace_nlocals = common dso_local global i32 0, align 4
@dtrace_helptrace_next = common dso_local global i64 0, align 8
@dtrace_helptrace_bufsize = common dso_local global i64 0, align 8
@dtrace_helptrace_wrapped = common dso_local global i32 0, align 4
@DTRACE_MSTATE_FLTOFFS = common dso_local global i32 0, align 4
@NCPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, %struct.TYPE_9__*, i32)* @dtrace_helper_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helper_trace(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %18 = load i64, i64* @curcpu, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtrace_helptrace_buffer, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %14, align 8
  %23 = icmp eq %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %150

25:                                               ; preds = %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @dtrace_helptrace_nlocals, align 4
  %30 = icmp sle i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @dtrace_helptrace_nlocals, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 40, %35
  %37 = sub i64 %36, 4
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %52, %25
  %39 = load i64, i64* @dtrace_helptrace_next, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i64, i64* @dtrace_helptrace_bufsize, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %11, align 8
  br label %51

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @dtrace_cas32(i64* @dtrace_helptrace_next, i64 %53, i64 %54)
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %38, label %58

58:                                               ; preds = %52
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @dtrace_helptrace_wrapped, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @dtrace_helptrace_wrapped, align 4
  store i64 0, i64* %10, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = ptrtoint %struct.TYPE_12__* %66 to i64
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %67, %68
  %70 = inttoptr i64 %69 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %13, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 6
  store i32* %71, i32** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DTRACE_MSTATE_FLTOFFS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %65
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  br label %93

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %88
  %94 = phi i32 [ %91, %88 ], [ -1, %92 ]
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @DTRACE_FLAGS2FLT(i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cpu_core, align 8
  %102 = load i64, i64* @curcpu, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  store i32 %105, i32* %107, align 8
  store i64 0, i64* %12, align 8
  br label %108

108:                                              ; preds = %147, %93
  %109 = load i64, i64* %12, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %109, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %108
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %118, i64 %119
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  store %struct.TYPE_10__* %121, %struct.TYPE_10__** %16, align 8
  %122 = icmp eq %struct.TYPE_10__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %147

124:                                              ; preds = %115
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = load i32, i32* @NCPU, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 4
  %132 = icmp uge i64 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @ASSERT(i32 %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i64, i64* @curcpu, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %146, align 4
  br label %147

147:                                              ; preds = %124, %123
  %148 = load i64, i64* %12, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %12, align 8
  br label %108

150:                                              ; preds = %24, %108
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dtrace_cas32(i64*, i64, i64) #1

declare dso_local i32 @DTRACE_FLAGS2FLT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
