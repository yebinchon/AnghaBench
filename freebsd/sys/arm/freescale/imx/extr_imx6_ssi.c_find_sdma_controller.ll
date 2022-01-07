; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_find_sdma_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ssi.c_find_sdma_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.sdma_softc*, i32, i8*, i8* }
%struct.sdma_softc = type { i32 }

@DMAS_TOTAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\22dmas\22 property length is invalid: %d (expected %d)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"No sDMA found. Can't operate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @find_sdma_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_sdma_controller(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.sdma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %12 = load i32, i32* @DMAS_TOTAL, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %78

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @OF_getproplen(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %10, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %78

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nuw i64 8, %13
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %36 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = mul nuw i64 8, %13
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %39)
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %78

42:                                               ; preds = %29
  %43 = load i32, i32* %5, align 4
  %44 = mul nuw i64 8, %13
  %45 = trunc i64 %44 to i32
  %46 = call i32 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, i32 %45)
  %47 = getelementptr inbounds i8*, i8** %15, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %50 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds i8*, i8** %15, i64 5
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %54 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds i8*, i8** %15, i64 0
  %56 = load i8*, i8** %55, align 16
  %57 = call i32 @OF_node_from_xref(i8* %56)
  store i32 %57, i32* %6, align 4
  store %struct.sdma_softc* null, %struct.sdma_softc** %4, align 8
  %58 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i64 @devclass_get_device(i32 %58, i32 0)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load i64, i64* %7, align 8
  %64 = call %struct.sdma_softc* @device_get_softc(i64 %63)
  store %struct.sdma_softc* %64, %struct.sdma_softc** %4, align 8
  br label %65

65:                                               ; preds = %62, %42
  %66 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %67 = icmp eq %struct.sdma_softc* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %70 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %78

74:                                               ; preds = %65
  %75 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %76 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 0
  store %struct.sdma_softc* %75, %struct.sdma_softc** %77, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %68, %34, %27, %21
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ofw_bus_get_node(i32) #2

declare dso_local i32 @OF_getproplen(i32, i8*) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #2

declare dso_local i32 @OF_getencprop(i32, i8*, i8**, i32) #2

declare dso_local i32 @OF_node_from_xref(i8*) #2

declare dso_local i64 @devclass_get_device(i32, i32) #2

declare dso_local i32 @devclass_find(i8*) #2

declare dso_local %struct.sdma_softc* @device_get_softc(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
