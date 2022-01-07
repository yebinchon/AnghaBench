; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_uhh_softc = type { i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error: Could not map UHH memory\0A\00", align 1
@OMAP_HS_USB_PORTS = common dso_local global i32 0, align 4
@EHCI_HCD_OMAP_MODE_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"port%d-mode\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ehci-phy\00", align 1
@EHCI_HCD_OMAP_MODE_PHY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ehci-tll\00", align 1
@EHCI_HCD_OMAP_MODE_TLL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ehci-hsic\00", align 1
@EHCI_HCD_OMAP_MODE_HSIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Error: could not setup OMAP EHCI, %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap_uhh_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_uhh_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_uhh_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.omap_uhh_softc* @device_get_softc(i32 %11)
  store %struct.omap_uhh_softc* %12, %struct.omap_uhh_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %15 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load i32, i32* @RF_ACTIVE, align 4
  %19 = call i32 @bus_alloc_resource_any(i32 %16, i32 %17, i32* %6, i32 %18)
  %20 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %21 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %23 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %129

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ofw_bus_get_node(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %129

35:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @OMAP_HS_USB_PORTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %99

40:                                               ; preds = %36
  %41 = load i32, i32* @EHCI_HCD_OMAP_MODE_UNKNOWN, align 4
  %42 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %43 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i32 @snprintf(i8* %48, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %54 = call i64 @OF_getprop_alloc(i32 %52, i8* %53, i8** %10)
  %55 = icmp sle i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %96

57:                                               ; preds = %40
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* @EHCI_HCD_OMAP_MODE_PHY, align 4
  %63 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %64 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %95

69:                                               ; preds = %57
  %70 = load i8*, i8** %10, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i32, i32* @EHCI_HCD_OMAP_MODE_TLL, align 4
  %75 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %76 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %94

81:                                               ; preds = %69
  %82 = load i8*, i8** %10, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i32, i32* @EHCI_HCD_OMAP_MODE_HSIC, align 4
  %87 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %88 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %81
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %61
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %36

99:                                               ; preds = %36
  %100 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %4, align 8
  %101 = call i32 @omap_uhh_init(%struct.omap_uhh_softc* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  br label %129

108:                                              ; preds = %99
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @simplebus_init(i32 %109, i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @bus_generic_probe(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @OF_child(i32 %114)
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %123, %108
  %117 = load i32, i32* %8, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @simplebus_add_device(i32 %120, i32 %121, i32 0, i32* null, i32 -1, i32* null)
  br label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @OF_peer(i32 %124)
  store i32 %125, i32* %8, align 4
  br label %116

126:                                              ; preds = %116
  %127 = load i32, i32* %3, align 4
  %128 = call i32 @bus_generic_attach(i32 %127)
  store i32 %128, i32* %2, align 4
  br label %133

129:                                              ; preds = %104, %34, %26
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @omap_uhh_detach(i32 %130)
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.omap_uhh_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @omap_uhh_init(%struct.omap_uhh_softc*) #1

declare dso_local i32 @simplebus_init(i32, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @simplebus_add_device(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @omap_uhh_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
