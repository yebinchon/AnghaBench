; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i64, i32, i32*, i32, i32 }

@GIC_BUS_ACPI = common dso_local global i32 0, align 4
@ACPI_INTR_XREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@arm_gic_v3_intr = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to attach. Error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gic_v3_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.gic_v3_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.gic_v3_softc* @device_get_softc(i32 %6)
  store %struct.gic_v3_softc* %7, %struct.gic_v3_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %10 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @GIC_BUS_ACPI, align 4
  %12 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @gic_v3_acpi_count_regions(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %66

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @gic_v3_attach(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %66

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ACPI_INTR_XREF, align 4
  %28 = call i32* @intr_pic_register(i32 %26, i32 %27)
  %29 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %30 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %32 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, i8*, ...) @device_printf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENXIO, align 4
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ACPI_INTR_XREF, align 4
  %42 = load i32, i32* @arm_gic_v3_intr, align 4
  %43 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %44 = load i64, i64* @GIC_LAST_SGI, align 8
  %45 = load i64, i64* @GIC_FIRST_SGI, align 8
  %46 = sub nsw i64 %44, %45
  %47 = add nsw i64 %46, 1
  %48 = call i64 @intr_pic_claim_root(i32 %40, i32 %41, i32 %42, %struct.gic_v3_softc* %43, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %5, align 4
  br label %66

52:                                               ; preds = %39
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @gic_v3_acpi_bus_attach(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %57 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %56, i32 0, i32 1
  %58 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %59 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %58, i32 0, i32 0
  %60 = call i64 @device_get_children(i32 %55, i32* %57, i64* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %64 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %52
  store i32 0, i32* %2, align 4
  br label %77

66:                                               ; preds = %50, %35, %24, %18
  %67 = load i64, i64* @bootverbose, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @gic_v3_detach(i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i32 @gic_v3_acpi_count_regions(i32) #1

declare dso_local i32 @gic_v3_attach(i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @intr_pic_claim_root(i32, i32, i32, %struct.gic_v3_softc*, i64) #1

declare dso_local i32 @gic_v3_acpi_bus_attach(i32) #1

declare dso_local i64 @device_get_children(i32, i32*, i64*) #1

declare dso_local i32 @gic_v3_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
