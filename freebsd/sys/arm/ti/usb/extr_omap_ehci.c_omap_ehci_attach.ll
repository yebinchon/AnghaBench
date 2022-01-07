; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_ehci.c_omap_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_ehci_softc = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8* }

@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Texas Instruments\00", align 1
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error: Could not map EHCI memory\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error: could not allocate irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error: could not add USB device\0A\00", align 1
@OMAP_EHCI_HC_DEVSTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Error: could not setup OMAP EHCI, %d\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Error: could not setup irq, %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Error: USB init failed err=%d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @omap_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_ehci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.omap_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.omap_ehci_softc* @device_get_softc(i8* %8)
  store %struct.omap_ehci_softc* %9, %struct.omap_ehci_softc** %4, align 8
  %10 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.omap_ehci_softc, %struct.omap_ehci_softc* %10, i32 0, i32 1
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 4
  store i8* %12, i8** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 32, i32* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sprintf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.omap_ehci_softc, %struct.omap_ehci_softc* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @USB_GET_DMA_TAG(i8* %38)
  %40 = call i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %37, i32 %39, i32* @ehci_iterate_hw_softc)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %2, align 4
  br label %172

44:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i8* %45, i32 %46, i32* %7, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i8*, ...) @device_printf(i8* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %168

58:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* @SYS_RES_IRQ, align 4
  %61 = load i32, i32* @RF_ACTIVE, align 4
  %62 = call i8* @bus_alloc_resource_any(i8* %59, i32 %60, i32* %7, i32 %61)
  %63 = bitcast i8* %62 to i32*
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 (i8*, i8*, ...) @device_printf(i8* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %168

73:                                               ; preds = %58
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @device_add_child(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %73
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 (i8*, i8*, ...) @device_printf(i8* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %168

87:                                               ; preds = %73
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @device_set_ivars(i32 %91, %struct.TYPE_7__* %93)
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @OMAP_EHCI_HC_DEVSTR, align 4
  %100 = call i32 @device_set_desc(i32 %98, i32 %99)
  %101 = load %struct.omap_ehci_softc*, %struct.omap_ehci_softc** %4, align 8
  %102 = call i32 @omap_ehci_init(%struct.omap_ehci_softc* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %87
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, i8*, ...) @device_printf(i8* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %168

109:                                              ; preds = %87
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @rman_get_bushandle(i8* %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @rman_get_bustag(i8* %118)
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @rman_get_size(i8* %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @INTR_TYPE_BIO, align 4
  %133 = load i32, i32* @INTR_MPSAFE, align 4
  %134 = or i32 %132, %133
  %135 = load i64, i64* @ehci_interrupt, align 8
  %136 = inttoptr i64 %135 to i32*
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = call i32 @bus_setup_intr(i8* %128, i32* %131, i32 %134, i32* null, i32* %136, %struct.TYPE_6__* %137, i32** %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %109
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 (i8*, i8*, ...) @device_printf(i8* %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  store i32* null, i32** %148, align 8
  br label %168

149:                                              ; preds = %109
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = call i32 @ehci_init(%struct.TYPE_6__* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_probe_and_attach(i32 %158)
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %154, %149
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i32 (i8*, i8*, ...) @device_printf(i8* %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  br label %168

167:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %172

168:                                              ; preds = %163, %143, %105, %84, %70, %55
  %169 = load i8*, i8** %3, align 8
  %170 = call i32 @omap_ehci_detach(i8* %169)
  %171 = load i32, i32* @ENXIO, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %167, %42
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.omap_ehci_softc* @device_get_softc(i8*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i64 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @omap_ehci_init(%struct.omap_ehci_softc*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_size(i8*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32*, %struct.TYPE_6__*, i32**) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32) #1

declare dso_local i32 @omap_ehci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
