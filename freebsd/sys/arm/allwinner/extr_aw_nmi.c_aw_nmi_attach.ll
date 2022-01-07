; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_nmi.c_aw_nmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_nmi_softc = type { i32*, i32, %struct.TYPE_3__, i32, %struct.aw_nmi_reg_cfg* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.aw_nmi_reg_cfg = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@aw_nmi_res_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"can't allocate device resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@aw_nmi_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to register interrupt handler\0A\00", align 1
@NMI_IRQ_ENABLE = common dso_local global i32 0, align 4
@NMI_IRQ_ACK = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"could not register pic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_nmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_nmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_nmi_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aw_nmi_softc* @device_get_softc(i32 %6)
  store %struct.aw_nmi_softc* %7, %struct.aw_nmi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @compat_data, align 4
  %13 = call %struct.TYPE_4__* @ofw_bus_search_compatible(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.aw_nmi_reg_cfg*
  %17 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %17, i32 0, i32 4
  store %struct.aw_nmi_reg_cfg* %16, %struct.aw_nmi_reg_cfg** %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @aw_nmi_res_spec, align 4
  %21 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @bus_alloc_resources(i32 %19, i32 %20, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %132

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @INTR_TYPE_MISC, align 4
  %38 = load i32, i32* @aw_nmi_intr, align 4
  %39 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %40 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %40, i32 0, i32 1
  %42 = call i64 @bus_setup_intr(i32 %31, i32 %36, i32 %37, i32 %38, i32* null, %struct.aw_nmi_softc* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %30
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @aw_nmi_res_spec, align 4
  %49 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %50 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resources(i32 %47, i32 %48, i32* %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %132

54:                                               ; preds = %30
  %55 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %56 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %57 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %56, i32 0, i32 4
  %58 = load %struct.aw_nmi_reg_cfg*, %struct.aw_nmi_reg_cfg** %57, align 8
  %59 = getelementptr inbounds %struct.aw_nmi_reg_cfg, %struct.aw_nmi_reg_cfg* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NMI_IRQ_ENABLE, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @SC_NMI_WRITE(%struct.aw_nmi_softc* %55, i32 %60, i32 %64)
  %66 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %67 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %67, i32 0, i32 4
  %69 = load %struct.aw_nmi_reg_cfg*, %struct.aw_nmi_reg_cfg** %68, align 8
  %70 = getelementptr inbounds %struct.aw_nmi_reg_cfg, %struct.aw_nmi_reg_cfg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NMI_IRQ_ACK, align 4
  %73 = call i32 @SC_NMI_WRITE(%struct.aw_nmi_softc* %66, i32 %71, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @ofw_bus_get_node(i32 %74)
  %76 = call i64 @OF_xref_from_node(i32 %75)
  store i64 %76, i64* %5, align 8
  %77 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %78 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %81 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %82 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %85 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 4
  %88 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %92 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @device_get_nameunit(i32 %96)
  %98 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @intr_isrc_register(i32* %90, i32 %93, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %97, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %54
  br label %114

105:                                              ; preds = %54
  %106 = load i32, i32* %3, align 4
  %107 = load i64, i64* %5, align 8
  %108 = call i32* @intr_pic_register(i32 %106, i64 %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @device_printf(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %114

113:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %132

114:                                              ; preds = %110, %104
  %115 = load i32, i32* %3, align 4
  %116 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %117 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %122 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @bus_teardown_intr(i32 %115, i32 %120, i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* @aw_nmi_res_spec, align 4
  %127 = load %struct.aw_nmi_softc*, %struct.aw_nmi_softc** %4, align 8
  %128 = getelementptr inbounds %struct.aw_nmi_softc, %struct.aw_nmi_softc* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @bus_release_resources(i32 %125, i32 %126, i32* %129)
  %131 = load i32, i32* @ENXIO, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %114, %113, %44, %26
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.aw_nmi_softc* @device_get_softc(i32) #1

declare dso_local %struct.TYPE_4__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.aw_nmi_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @SC_NMI_WRITE(%struct.aw_nmi_softc*, i32, i32) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @intr_isrc_register(i32*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
