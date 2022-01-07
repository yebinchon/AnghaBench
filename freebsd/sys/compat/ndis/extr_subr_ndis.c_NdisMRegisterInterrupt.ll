; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMRegisterInterrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMRegisterInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ndis_softc = type { i32 }

@NonPagedPool = common dso_local global i32 0, align 4
@NDIS_STATUS_RESOURCES = common dso_local global i32 0, align 4
@EVENT_TYPE_NOTIFY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ndis_intrhand = common dso_local global i64 0, align 8
@KDPC_IMPORTANCE_LOW = common dso_local global i32 0, align 4
@ndis_intr = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i32, i32, i8*, i8*, i32)* @NdisMRegisterInterrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NdisMRegisterInterrupt(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.ndis_softc*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %16, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ndis_softc* @device_get_softc(i32 %26)
  store %struct.ndis_softc* %27, %struct.ndis_softc** %18, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_12__* @IoGetDriverObjectExtension(i32 %32, i8* inttoptr (i64 1 to i8*))
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %17, align 8
  %34 = load i32, i32* @NonPagedPool, align 4
  %35 = call i32* @ExAllocatePoolWithTag(i32 %34, i32 4, i32 0)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 9
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %7
  %43 = load i32, i32* @NDIS_STATUS_RESOURCES, align 4
  store i32 %43, i32* %8, align 4
  br label %104

44:                                               ; preds = %7
  %45 = load i8*, i8** %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 8
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 5
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* @EVENT_TYPE_NOTIFY, align 4
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @KeInitializeEvent(i32* %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* @ndis_intrhand, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @ndis_findwrap(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = call i32 @KeInitializeDpc(i32* %72, i32 %75, %struct.TYPE_11__* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* @KDPC_IMPORTANCE_LOW, align 4
  %81 = call i32 @KeSetImportanceDpc(i32* %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i64, i64* @ndis_intr, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @ndis_findwrap(i32 %85)
  %87 = load %struct.ndis_softc*, %struct.ndis_softc** %18, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @IoConnectInterrupt(i32* %83, i32 %86, %struct.ndis_softc* %87, i32* null, i32 %88, i32 %89, i32 0, i32 %90, i8* %91, i32 0, i32 %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @STATUS_SUCCESS, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %44
  %98 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %98, i32* %8, align 4
  br label %104

99:                                               ; preds = %44
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %102, align 8
  %103 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %97, %42
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_12__* @IoGetDriverObjectExtension(i32, i8*) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #1

declare dso_local i32 @KeInitializeDpc(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ndis_findwrap(i32) #1

declare dso_local i32 @KeSetImportanceDpc(i32*, i32) #1

declare dso_local i32 @IoConnectInterrupt(i32*, i32, %struct.ndis_softc*, i32*, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
