; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_mark.c_v_emark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_mark.c_v_emark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32 }

@HMAP = common dso_local global %struct.TYPE_17__* null, align 8
@TMAP = common dso_local global %struct.TYPE_17__* null, align 8
@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"320|Unknown cursor position.\00", align 1
@BQMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_emark(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** @HMAP, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i64 %12
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** @TMAP, align 8
  %16 = icmp ugt %struct.TYPE_17__* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = load i32, i32* @M_BERR, align 4
  %20 = call i32 @msgq(%struct.TYPE_18__* %18, i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %35, %44
  %46 = call i32 @vs_colpos(%struct.TYPE_18__* %28, i32 %31, i64 %45)
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = load i32, i32* @BQMARK, align 4
  %53 = call i32 @mark(%struct.TYPE_18__* %50, %struct.TYPE_16__* %51, i32 0, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %21, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @msgq(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @vs_colpos(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @mark(%struct.TYPE_18__*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
