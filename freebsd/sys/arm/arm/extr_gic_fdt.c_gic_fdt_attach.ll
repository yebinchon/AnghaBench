; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_gic_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_gic_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_fdt_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32**, i32 }

@GIC_BUS_FDT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@arm_gic_intr = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"could not set PIC as a root\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"not root PIC must have defined interrupt\0A\00", align 1
@INTR_TYPE_CLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not setup irq handler\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gic_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_gic_fdt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.arm_gic_fdt_softc* @device_get_softc(i32 %8)
  store %struct.arm_gic_fdt_softc* %9, %struct.arm_gic_fdt_softc** %4, align 8
  %10 = load i32, i32* @GIC_BUS_FDT, align 4
  %11 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %12 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32 %10, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @arm_gic_attach(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %113

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  %23 = call i64 @OF_xref_from_node(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @intr_pic_register(i32 %24, i64 %25)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %109

31:                                               ; preds = %20
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ofw_bus_get_node(i32 %32)
  %34 = call i64 @ofw_bus_find_iparent(i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37, %31
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* @arm_gic_intr, align 4
  %45 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %46 = load i64, i64* @GIC_LAST_SGI, align 8
  %47 = load i64, i64* @GIC_FIRST_SGI, align 8
  %48 = sub nsw i64 %46, %47
  %49 = add nsw i64 %48, 1
  %50 = call i64 @intr_pic_claim_root(i32 %42, i64 %43, i32 %44, %struct.arm_gic_fdt_softc* %45, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %3, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @intr_pic_deregister(i32 %55, i64 %56)
  br label %109

58:                                               ; preds = %41
  br label %96

59:                                               ; preds = %37
  %60 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %61 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %3, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @intr_pic_deregister(i32 %70, i64 %71)
  br label %109

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %76 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @INTR_TYPE_CLK, align 4
  %82 = load i32, i32* @arm_gic_intr, align 4
  %83 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %84 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %4, align 8
  %85 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i64 @bus_setup_intr(i32 %74, i32* %80, i32 %81, i32 %82, i32* null, %struct.arm_gic_fdt_softc* %83, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %73
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* %3, align 4
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @intr_pic_deregister(i32 %92, i64 %93)
  br label %109

95:                                               ; preds = %73
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @OF_device_register_xref(i64 %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @arm_gic_add_children(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @bus_generic_probe(i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @bus_generic_attach(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %113

108:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %89, %67, %52, %28
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @arm_gic_detach(i32 %110)
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %108, %103, %18
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.arm_gic_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @arm_gic_attach(i32) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ofw_bus_find_iparent(i32) #1

declare dso_local i64 @intr_pic_claim_root(i32, i64, i32, %struct.arm_gic_fdt_softc*, i64) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32, i32*, %struct.arm_gic_fdt_softc*, i32*) #1

declare dso_local i32 @OF_device_register_xref(i64, i32) #1

declare dso_local i64 @arm_gic_add_children(i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @arm_gic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
