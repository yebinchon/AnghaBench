; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_pid_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_fasttrap.c_fasttrap_pid_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_15__* }

@PGET_HOLD = common dso_local global i32 0, align 4
@PGET_NOTWEXIT = common dso_local global i32 0, align 4
@FASTTRAP_ENABLE_FAIL = common dso_local global i32 0, align 4
@FASTTRAP_ENABLE_PARTIAL = common dso_local global i32 0, align 4
@SFORKING = common dso_local global i32 0, align 4
@SIDL = common dso_local global i64 0, align 8
@SVFORK = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_15__* null, align 8
@pidlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*)* @fasttrap_pid_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_pid_enable(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %8, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %14 = icmp ne %struct.TYPE_18__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = call i32 @mutex_enter(i32* %34)
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = call i32 @mutex_exit(i32* %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %3
  br label %115

54:                                               ; preds = %3
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PGET_HOLD, align 4
  %59 = load i32, i32* @PGET_NOTWEXIT, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @pget(i32 %57, i32 %60, %struct.TYPE_17__** %8)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %115

64:                                               ; preds = %54
  %65 = call i32 (...) @fasttrap_enable_callbacks()
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %107, %64
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %110

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @fasttrap_tracepoint_enable(%struct.TYPE_17__* %73, %struct.TYPE_18__* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @FASTTRAP_ENABLE_FAIL, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %9, align 4
  br label %91

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @FASTTRAP_ENABLE_PARTIAL, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  br label %91

91:                                               ; preds = %85, %82
  br label %92

92:                                               ; preds = %95, %91
  %93 = load i32, i32* %9, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @fasttrap_tracepoint_disable(%struct.TYPE_17__* %96, %struct.TYPE_18__* %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %9, align 4
  br label %92

102:                                              ; preds = %92
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = call i32 @PRELE(%struct.TYPE_17__* %103)
  %105 = call i32 (...) @fasttrap_disable_callbacks()
  br label %115

106:                                              ; preds = %72
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %66

110:                                              ; preds = %66
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %112 = call i32 @PRELE(%struct.TYPE_17__* %111)
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %102, %63, %53
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @pget(i32, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @fasttrap_enable_callbacks(...) #1

declare dso_local i32 @fasttrap_tracepoint_enable(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @fasttrap_tracepoint_disable(%struct.TYPE_17__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @PRELE(%struct.TYPE_17__*) #1

declare dso_local i32 @fasttrap_disable_callbacks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
