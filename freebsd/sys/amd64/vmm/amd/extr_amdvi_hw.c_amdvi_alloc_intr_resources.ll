; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_alloc_intr_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_alloc_intr_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, %struct.amdvi_ctrl*, i32, i32, i32*, i64, i32 }
%struct.amdvi_ctrl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"warning: IOMMU device is claimed by another driver %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't find event MSI IRQ resource.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't set event MSI resource.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to allocate event INTR resource.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@amdvi_event_intr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Fail to setup event intr\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Event interrupt config failed, err=%d.\0A\00", align 1
@AMDVI_STATUS_EV_OF = common dso_local global i32 0, align 4
@AMDVI_STATUS_EV_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdvi_softc*)* @amdvi_alloc_intr_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdvi_alloc_intr_resources(%struct.amdvi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca %struct.amdvi_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  %11 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %18 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @PCI_RID2BUS(i32 %19)
  %21 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %22 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PCI_RID2SLOT(i32 %23)
  %25 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PCI_RID2FUNC(i32 %27)
  %29 = call i32 @pci_find_bsf(i32 %20, i32 %24, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @device_is_attached(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.TYPE_2__* @device_get_driver(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %48 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %47, i32 0, i32 0
  %49 = call i32 @PCIB_ALLOC_MSI(i32 %45, i32 %46, i32 1, i32 1, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %2, align 4
  br label %161

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SYS_RES_IRQ, align 4
  %59 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %60 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %63 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @bus_set_resource(i32 %57, i32 %58, i64 %61, i32 %64, i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %161

72:                                               ; preds = %56
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SYS_RES_IRQ, align 4
  %75 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %76 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %75, i32 0, i32 5
  %77 = load i32, i32* @RF_ACTIVE, align 4
  %78 = call i32* @bus_alloc_resource_any(i32 %73, i32 %74, i64* %76, i32 %77)
  %79 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %80 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %79, i32 0, i32 4
  store i32* %78, i32** %80, align 8
  %81 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %82 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %5, align 4
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %86, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %161

89:                                               ; preds = %72
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* @INTR_TYPE_MISC, align 4
  %95 = load i32, i32* @INTR_MPSAFE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @amdvi_event_intr, align 4
  %98 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %99 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %100 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %99, i32 0, i32 3
  %101 = call i64 @bus_setup_intr(i32 %90, i32* %93, i32 %96, i32* null, i32 %97, %struct.amdvi_softc* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %89
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %107 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SYS_RES_IRQ, align 4
  %110 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %111 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %114 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resource(i32 %108, i32 %109, i64 %112, i32* %115)
  %117 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %118 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %117, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = load i32, i32* @ENXIO, align 4
  store i32 %119, i32* %2, align 4
  br label %161

120:                                              ; preds = %89
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %123 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %122, i32 0, i32 4
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %126 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @bus_describe_intr(i32 %121, i32* %124, i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %132 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @PCIB_MAP_MSI(i32 %129, i32 %130, i32 %133, i32* %8, i32* %9)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %120
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %142 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @amdvi_free_evt_intr_res(i32 %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %2, align 4
  br label %161

146:                                              ; preds = %120
  %147 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %148 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %147, i32 0, i32 1
  %149 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %148, align 8
  store %struct.amdvi_ctrl* %149, %struct.amdvi_ctrl** %4, align 8
  %150 = load i32, i32* @AMDVI_STATUS_EV_OF, align 4
  %151 = load i32, i32* @AMDVI_STATUS_EV_INTR, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %154 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @pci_enable_msi(i32 %157, i32 %158, i32 %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %146, %137, %103, %85, %68, %52
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_find_bsf(i32, i32, i32) #1

declare dso_local i32 @PCI_RID2BUS(i32) #1

declare dso_local i32 @PCI_RID2SLOT(i32) #1

declare dso_local i32 @PCI_RID2FUNC(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @device_get_driver(i32) #1

declare dso_local i32 @PCIB_ALLOC_MSI(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @bus_set_resource(i32, i32, i64, i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.amdvi_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

declare dso_local i32 @bus_describe_intr(i32, i32*, i32, i8*) #1

declare dso_local i32 @PCIB_MAP_MSI(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @amdvi_free_evt_intr_res(i32) #1

declare dso_local i32 @pci_enable_msi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
