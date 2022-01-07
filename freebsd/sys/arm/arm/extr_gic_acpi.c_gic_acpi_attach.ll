; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_gic_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_gic_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32 }

@GIC_BUS_ACPI = common dso_local global i32 0, align 4
@ACPI_INTR_XREF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"could not register PIC\0A\00", align 1
@arm_gic_intr = common dso_local global i32 0, align 4
@GIC_LAST_SGI = common dso_local global i64 0, align 8
@GIC_FIRST_SGI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"could not set PIC as a root\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gic_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_gic_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.arm_gic_softc* @device_get_softc(i32 %7)
  store %struct.arm_gic_softc* %8, %struct.arm_gic_softc** %4, align 8
  %9 = load i32, i32* @GIC_BUS_ACPI, align 4
  %10 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %11 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @arm_gic_attach(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load i64, i64* @ACPI_INTR_XREF, align 8
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32* @intr_pic_register(i32 %20, i64 %21)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @arm_gic_intr, align 4
  %31 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %32 = load i64, i64* @GIC_LAST_SGI, align 8
  %33 = load i64, i64* @GIC_FIRST_SGI, align 8
  %34 = sub nsw i64 %32, %33
  %35 = add nsw i64 %34, 1
  %36 = call i64 @intr_pic_claim_root(i32 %28, i64 %29, i32 %30, %struct.arm_gic_softc* %31, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @intr_pic_deregister(i32 %41, i64 %42)
  br label %54

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @arm_gic_add_children(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @bus_generic_probe(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @bus_generic_attach(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

54:                                               ; preds = %38, %24
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @arm_gic_detach(i32 %55)
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %53, %48, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i32 @arm_gic_attach(i32) #1

declare dso_local i32* @intr_pic_register(i32, i64) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @intr_pic_claim_root(i32, i64, i32, %struct.arm_gic_softc*, i64) #1

declare dso_local i32 @intr_pic_deregister(i32, i64) #1

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
