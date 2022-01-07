; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_find_edma_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_find_edma_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.edma_softc*, i32 }
%struct.edma_softc = type { i32, i32 (%struct.edma_softc*, i32, i32)* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"edma-controller\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"edma-src-transmit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"edma-mux-group\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@EDMA_NUM_DEVICES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"edma\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"no eDMA. can't operate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @find_edma_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_edma_controller(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.edma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @OF_getproplen(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %12, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %116

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @OF_getproplen(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %12, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @OF_getproplen(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %12, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %2, align 4
  br label %116

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @OF_getencprop(i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32 %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @OF_getencprop(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32 %45)
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @OF_getencprop(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @OF_node_from_xref(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @OF_getproplen(i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %54, i32* %12, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %116

58:                                               ; preds = %39
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @OF_getencprop(i32 %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32 %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %9, align 4
  store %struct.edma_softc* null, %struct.edma_softc** %4, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %84, %58
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @EDMA_NUM_DEVICES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* %13, align 4
  %70 = call i64 @devclass_get_device(i32 %68, i32 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i64, i64* %10, align 8
  %75 = call %struct.edma_softc* @device_get_softc(i64 %74)
  store %struct.edma_softc* %75, %struct.edma_softc** %4, align 8
  %76 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %77 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %87

82:                                               ; preds = %73
  store %struct.edma_softc* null, %struct.edma_softc** %4, align 8
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %63

87:                                               ; preds = %81, %63
  %88 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %89 = icmp eq %struct.edma_softc* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %92 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %116

96:                                               ; preds = %87
  %97 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %98 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %99 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %98, i32 0, i32 1
  store %struct.edma_softc* %97, %struct.edma_softc** %99, align 8
  %100 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %101 = getelementptr inbounds %struct.edma_softc, %struct.edma_softc* %100, i32 0, i32 1
  %102 = load i32 (%struct.edma_softc*, i32, i32)*, i32 (%struct.edma_softc*, i32, i32)** %101, align 8
  %103 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 %102(%struct.edma_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %108 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %110 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %96
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %116

115:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %115, %113, %90, %56, %37, %31, %25, %19
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i64 @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local %struct.edma_softc* @device_get_softc(i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
