; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_fdt_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_fdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i64, i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GIC_BUS_FDT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"#redistributor-regions\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@arm_gic_v3_intr = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to attach ITS to this GIC\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to attach. Error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gic_v3_fdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_fdt_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gic_v3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.gic_v3_softc* @device_get_softc(i32 %8)
  store %struct.gic_v3_softc* %9, %struct.gic_v3_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %12 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @GIC_BUS_FDT, align 4
  %14 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %15 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  %18 = call i64 @OF_getencprop(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %5, i32 4)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %22 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gic_v3_attach(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %92

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @ofw_bus_get_node(i32 %36)
  %38 = call i64 @OF_xref_from_node(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32* @intr_pic_register(i32 %39, i64 %40)
  %42 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %43 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %45 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %7, align 4
  br label %92

52:                                               ; preds = %35
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @OF_device_register_xref(i64 %53, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @arm_gic_v3_intr, align 4
  %59 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %60 = load i64, i64* @GIC_LAST_SGI, align 8
  %61 = load i64, i64* @GIC_FIRST_SGI, align 8
  %62 = sub nsw i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = call i64 @intr_pic_claim_root(i32 %56, i64 %57, i32 %58, %struct.gic_v3_softc* %59, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %7, align 4
  br label %92

68:                                               ; preds = %52
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @gic_v3_ofw_bus_attach(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i64, i64* @bootverbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @device_printf(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %72
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %3, align 4
  %81 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %82 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %81, i32 0, i32 1
  %83 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %84 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %83, i32 0, i32 0
  %85 = call i64 @device_get_children(i32 %80, i32* %82, i64* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %89 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %66, %48, %34
  %93 = load i64, i64* @bootverbose, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @gic_v3_detach(i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %90
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @gic_v3_attach(i32) #1

declare dso_local i64 @OF_xref_from_node(i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OF_device_register_xref(i64, i32) #1

declare dso_local i64 @intr_pic_claim_root(i32, i64, i32, %struct.gic_v3_softc*, i64) #1

declare dso_local i64 @gic_v3_ofw_bus_attach(i32) #1

declare dso_local i64 @device_get_children(i32, i32*, i64*) #1

declare dso_local i32 @gic_v3_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
