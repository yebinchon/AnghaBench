; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_enqueue_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_enqueue_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.aac_softc = type { %struct.TYPE_9__*, %struct.TYPE_8__** }
%struct.TYPE_9__ = type { i64** }
%struct.TYPE_8__ = type { i64, i64 }
%struct.aac_command = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_PRODUCER_INDEX = common dso_local global i64 0, align 8
@AAC_CONSUMER_INDEX = common dso_local global i64 0, align 8
@aac_qinfo = common dso_local global %struct.TYPE_10__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32, %struct.aac_command*)* @aac_enqueue_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_enqueue_fib(%struct.aac_softc* %0, i32 %1, %struct.aac_command* %2) #0 {
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aac_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.aac_command* %2, %struct.aac_command** %6, align 8
  %12 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %13 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %14 = call i32 @fwprintf(%struct.aac_softc* %12, i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %16 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %22 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
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
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
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
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
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
  br label %122

67:                                               ; preds = %60
  %68 = load %struct.aac_command*, %struct.aac_command** %6, align 8
  %69 = call i32 @aac_enqueue_busy(%struct.aac_command* %68)
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 %70, i64* %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %83 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i64 %81, i64* %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add nsw i64 %92, 1
  %94 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %95 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64**, i64*** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64*, i64** %98, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load i64, i64* @AAC_PRODUCER_INDEX, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64 %93, i64* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %67
  %113 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @AAC_QNOTIFY(%struct.aac_softc* %113, i64 %119)
  br label %121

121:                                              ; preds = %112, %67
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %121, %65
  %123 = load i32, i32* %9, align 4
  ret i32 %123
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @aac_enqueue_busy(%struct.aac_command*) #1

declare dso_local i32 @AAC_QNOTIFY(%struct.aac_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
