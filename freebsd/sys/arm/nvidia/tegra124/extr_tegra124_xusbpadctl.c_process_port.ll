; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_process_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_port = type { i32, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot read port name.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown port: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"nvidia,usb2-companion\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Missing 'nvidia,usb2-companion' property for port: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"vbus-supply\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Cannot get 'vbus-supply' regulator for port: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"nvidia,internal\00", align 1
@PADCTL_PAD_USB2 = common dso_local global i32 0, align 4
@PADCTL_PAD_ULPI = common dso_local global i32 0, align 4
@PADCTL_PAD_HSIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Cannot find lane for port: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, i32)* @process_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_port(%struct.padctl_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.padctl_port*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @OF_getprop_alloc(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %15 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call %struct.padctl_port* @search_port(%struct.padctl_softc* %20, i8* %21)
  store %struct.padctl_port* %22, %struct.padctl_port** %6, align 8
  %23 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %24 = icmp eq %struct.padctl_port* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %27 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %8, align 4
  br label %143

32:                                               ; preds = %19
  %33 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %34 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 128
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %40 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %39, i32 0, i32 6
  %41 = call i32 @OF_getencprop(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %40, i32 4)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %46 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %8, align 4
  br label %143

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @OF_hasprop(i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %58 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %61 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %60, i32 0, i32 5
  %62 = call i32 @regulator_get_by_ofw_property(i32 %59, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %67 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %68, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %8, align 4
  br label %143

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @OF_hasprop(i32 %74, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %79 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %82 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %128

85:                                               ; preds = %80
  %86 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %87 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %127 [
    i32 129, label %89
    i32 130, label %99
    i32 131, label %109
    i32 128, label %119
  ]

89:                                               ; preds = %85
  %90 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %91 = load i32, i32* @PADCTL_PAD_USB2, align 4
  %92 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %93 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @search_pad_lane(%struct.padctl_softc* %90, i32 %91, i32 %94)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %98 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  br label %127

99:                                               ; preds = %85
  %100 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %101 = load i32, i32* @PADCTL_PAD_ULPI, align 4
  %102 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %103 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @search_pad_lane(%struct.padctl_softc* %100, i32 %101, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %108 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %107, i32 0, i32 3
  store i32* %106, i32** %108, align 8
  br label %127

109:                                              ; preds = %85
  %110 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %111 = load i32, i32* @PADCTL_PAD_HSIC, align 4
  %112 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %113 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @search_pad_lane(%struct.padctl_softc* %110, i32 %111, i32 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %118 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  br label %127

119:                                              ; preds = %85
  %120 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %121 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %122 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32* @search_usb3_pad_lane(%struct.padctl_softc* %120, i32 %123)
  %125 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %126 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %125, i32 0, i32 3
  store i32* %124, i32** %126, align 8
  br label %127

127:                                              ; preds = %85, %119, %109, %99, %89
  br label %128

128:                                              ; preds = %127, %80
  %129 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %130 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %135 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 (i32, i8*, ...) @device_printf(i32 %136, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* @ENXIO, align 4
  store i32 %139, i32* %8, align 4
  br label %143

140:                                              ; preds = %128
  %141 = load %struct.padctl_port*, %struct.padctl_port** %6, align 8
  %142 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %140, %133, %65, %44, %25
  %144 = load i8*, i8** %7, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @OF_prop_free(i8* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %13
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.padctl_port* @search_port(%struct.padctl_softc*, i8*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i8* @search_pad_lane(%struct.padctl_softc*, i32, i32) #1

declare dso_local i32* @search_usb3_pad_lane(%struct.padctl_softc*, i32) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
