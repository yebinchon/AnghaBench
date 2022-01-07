; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_enqueue_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_enqueue_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.aac_softc = type { %struct.TYPE_7__*, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i64** }
%struct.TYPE_6__ = type { i64, i64 }
%struct.aac_fib = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_PRODUCER_INDEX = common dso_local global i64 0, align 8
@AAC_CONSUMER_INDEX = common dso_local global i64 0, align 8
@aac_qinfo = common dso_local global %struct.TYPE_8__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32, %struct.aac_fib*)* @aac_enqueue_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_enqueue_response(%struct.aac_softc* %0, i32 %1, %struct.aac_fib* %2) #0 {
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_fib*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aac_fib* %2, %struct.aac_fib** %6, align 8
  %12 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %13 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %14 = call i32 @fwprintf(%struct.aac_softc* %12, i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %16 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %20 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load %struct.aac_fib*, %struct.aac_fib** %6, align 8
  %25 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i64 %23, i64* %26, align 8
  %27 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64**, i64*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64*, i64** %31, i64 %33
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @AAC_PRODUCER_INDEX, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %7, align 8
  %39 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64**, i64*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64*, i64** %43, i64 %45
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @AAC_CONSUMER_INDEX, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aac_qinfo, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %59, %3
  %61 = load i64, i64* %7, align 8
  %62 = add nsw i64 %61, 1
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @EBUSY, align 4
  store i32 %66, i32* %9, align 4
  br label %120

67:                                               ; preds = %60
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %70 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i64 %68, i64* %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %81 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %82, i64 %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i64 %79, i64* %89, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  %92 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %93 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64**, i64*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64*, i64** %96, i64 %98
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @AAC_PRODUCER_INDEX, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 %91, i64* %102, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aac_qinfo, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %67
  %111 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aac_qinfo, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @AAC_QNOTIFY(%struct.aac_softc* %111, i64 %117)
  br label %119

119:                                              ; preds = %110, %67
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %65
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @AAC_QNOTIFY(%struct.aac_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
