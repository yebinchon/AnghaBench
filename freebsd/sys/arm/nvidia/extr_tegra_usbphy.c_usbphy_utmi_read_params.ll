; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_utmi_read_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_utmi_read_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbphy_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"nvidia,hssync-start-delay\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"nvidia,elastic-limit\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"nvidia,idle-wait-delay\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"nvidia,term-range-adj\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsfslew\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"nvidia,xcvr-lsrslew\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"nvidia,xcvr-hsslew\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"nvidia,hssquelch-level\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"nvidia,hsdiscon-level\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"nvidia,xcvr-setup-use-fuses\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"nvidia,xcvr-setup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbphy_softc*, i32)* @usbphy_utmi_read_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbphy_utmi_read_params(%struct.usbphy_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbphy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbphy_softc* %0, %struct.usbphy_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %9 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %8, i32 0, i32 10
  %10 = call i32 @OF_getencprop(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %106

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %18 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %17, i32 0, i32 9
  %19 = call i32 @OF_getencprop(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %18, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  br label %106

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %27 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %26, i32 0, i32 8
  %28 = call i32 @OF_getencprop(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %27, i32 4)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %3, align 4
  br label %106

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %36 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %35, i32 0, i32 7
  %37 = call i32 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %36, i32 4)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %3, align 4
  br label %106

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %45 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %44, i32 0, i32 6
  %46 = call i32 @OF_getencprop(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %45, i32 4)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %54 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %53, i32 0, i32 5
  %55 = call i32 @OF_getencprop(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %54, i32 4)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %3, align 4
  br label %106

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %63 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %62, i32 0, i32 4
  %64 = call i32 @OF_getencprop(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32* %63, i32 4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %3, align 4
  br label %106

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %72 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %71, i32 0, i32 3
  %73 = call i32 @OF_getencprop(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %72, i32 4)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %69
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %81 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %80, i32 0, i32 2
  %82 = call i32 @OF_getencprop(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %81, i32 4)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %3, align 4
  br label %106

87:                                               ; preds = %78
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @OF_getproplen(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %94 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  br label %105

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %98 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %97, i32 0, i32 1
  %99 = call i32 @OF_getencprop(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %98, i32 4)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %3, align 4
  br label %106

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %92
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102, %85, %76, %67, %58, %49, %40, %31, %22, %13
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
