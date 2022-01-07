; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_dequeue_fib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_dequeue_fib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64 }
%struct.aac_softc = type { i64, %struct.TYPE_9__*, %struct.TYPE_7__**, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i64** }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.aac_fib* }
%struct.aac_fib = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.aac_command = type { %struct.aac_fib* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_PRODUCER_INDEX = common dso_local global i64 0, align 8
@AAC_CONSUMER_INDEX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@aac_qinfo = common dso_local global %struct.TYPE_10__* null, align 8
@AAC_FIBSTATE_DONEADAP = common dso_local global i32 0, align 4
@AAC_ERROR_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid queue in aac_dequeue_fib()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32, i64*, %struct.aac_fib**)* @aac_dequeue_fib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_dequeue_fib(%struct.aac_softc* %0, i32 %1, i64* %2, %struct.aac_fib** %3) #0 {
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.aac_fib**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.aac_command*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store %struct.aac_fib** %3, %struct.aac_fib*** %8, align 8
  %15 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %16 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %17 = call i32 @fwprintf(%struct.aac_softc* %15, i8* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %19 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64**, i64*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64*, i64** %22, i64 %24
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @AAC_PRODUCER_INDEX, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64**, i64*** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @AAC_CONSUMER_INDEX, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* @ENOENT, align 4
  store i32 %46, i32* %12, align 4
  br label %189

47:                                               ; preds = %4
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %56, %47
  store i32 0, i32* %13, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %59, 1
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %66, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i64 0, i64* %10, align 8
  br label %75

75:                                               ; preds = %74, %65
  %76 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %77 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* %6, align 4
  switch i32 %88, label %153 [
    i32 129, label %89
    i32 131, label %89
    i32 128, label %111
    i32 130, label %111
  ]

89:                                               ; preds = %75, %75
  %90 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %91 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %92, i64 %94
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = udiv i64 %101, 16
  store i64 %102, i64* %11, align 8
  %103 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %104 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %103, i32 0, i32 3
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.aac_fib*, %struct.aac_fib** %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %107, i64 %108
  %110 = load %struct.aac_fib**, %struct.aac_fib*** %8, align 8
  store %struct.aac_fib* %109, %struct.aac_fib** %110, align 8
  br label %155

111:                                              ; preds = %75, %75
  %112 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 2
  %114 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %114, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %11, align 8
  %124 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %125 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %11, align 8
  %128 = ashr i64 %127, 2
  %129 = add nsw i64 %126, %128
  %130 = inttoptr i64 %129 to %struct.aac_command*
  store %struct.aac_command* %130, %struct.aac_command** %14, align 8
  %131 = load %struct.aac_command*, %struct.aac_command** %14, align 8
  %132 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %131, i32 0, i32 0
  %133 = load %struct.aac_fib*, %struct.aac_fib** %132, align 8
  %134 = load %struct.aac_fib**, %struct.aac_fib*** %8, align 8
  store %struct.aac_fib* %133, %struct.aac_fib** %134, align 8
  %135 = load i64, i64* %11, align 8
  %136 = and i64 %135, 1
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %111
  %139 = load i32, i32* @AAC_FIBSTATE_DONEADAP, align 4
  %140 = load %struct.aac_fib**, %struct.aac_fib*** %8, align 8
  %141 = load %struct.aac_fib*, %struct.aac_fib** %140, align 8
  %142 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %139
  store i32 %145, i32* %143, align 8
  %146 = load i64, i64* @AAC_ERROR_NORMAL, align 8
  %147 = load %struct.aac_fib**, %struct.aac_fib*** %8, align 8
  %148 = load %struct.aac_fib*, %struct.aac_fib** %147, align 8
  %149 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i64*
  store i64 %146, i64* %151, align 8
  br label %152

152:                                              ; preds = %138, %111
  br label %155

153:                                              ; preds = %75
  %154 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %155

155:                                              ; preds = %153, %152, %89
  %156 = load i64, i64* %10, align 8
  %157 = add nsw i64 %156, 1
  %158 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %159 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %158, i32 0, i32 1
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64**, i64*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64*, i64** %162, i64 %164
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* @AAC_CONSUMER_INDEX, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  store i64 %157, i64* %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %155
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %171
  %180 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** @aac_qinfo, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @AAC_QNOTIFY(%struct.aac_softc* %180, i64 %186)
  br label %188

188:                                              ; preds = %179, %171, %155
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %188, %45
  %190 = load i32, i32* %12, align 4
  ret i32 %190
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @AAC_QNOTIFY(%struct.aac_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
