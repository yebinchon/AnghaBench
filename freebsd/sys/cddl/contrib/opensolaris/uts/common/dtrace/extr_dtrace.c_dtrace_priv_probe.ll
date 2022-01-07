; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_priv_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_priv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 (i32, i32, i32)* }
%struct.TYPE_19__ = type { i32 }

@DTRACE_MODE_NOPRIV_DROP = common dso_local global i32 0, align 4
@DTRACE_COND_OWNER = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SNOCD = common dso_local global i32 0, align 4
@DTRACE_ACCESS_ARGS = common dso_local global i32 0, align 4
@DTRACE_ACCESS_PROC = common dso_local global i32 0, align 4
@DTRACE_COND_USERMODE = common dso_local global i32 0, align 4
@DTRACE_COND_ZONEOWNER = common dso_local global i32 0, align 4
@DTRACE_MODE_KERNEL = common dso_local global i32 0, align 4
@DTRACE_MODE_NOPRIV_RESTRICT = common dso_local global i32 0, align 4
@DTRACE_MODE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_24__*, %struct.TYPE_25__*)* @dtrace_priv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_priv_probe(%struct.TYPE_20__* %0, %struct.TYPE_24__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %7, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %8, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %9, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %10, align 8
  %23 = load i32, i32* @DTRACE_MODE_NOPRIV_DROP, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DTRACE_COND_OWNER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %112

34:                                               ; preds = %3
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  store %struct.TYPE_16__* %38, %struct.TYPE_16__** %13, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %40 = icmp ne %struct.TYPE_16__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = call %struct.TYPE_16__* (...) @CRED()
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %12, align 8
  %44 = icmp eq %struct.TYPE_16__* %43, null
  br i1 %44, label %104, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %104, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %104, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %104, label %69

69:                                               ; preds = %61
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %104, label %77

77:                                               ; preds = %69
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %80, %83
  br i1 %84, label %104, label %85

85:                                               ; preds = %77
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %104, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @curthread, align 4
  %95 = call %struct.TYPE_19__* @ttoproc(i32 %94)
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %14, align 8
  %96 = icmp eq %struct.TYPE_19__* %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SNOCD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97, %93, %85, %77, %69, %61, %53, %45, %34
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @DTRACE_MODE_NOPRIV_DROP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %113

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %97
  br label %112

112:                                              ; preds = %111, %3
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_16__* @CRED(...) #1

declare dso_local %struct.TYPE_19__* @ttoproc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
