; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_madt_gicv2m_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_madt_gicv2m_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.arm_gic_softc = type { i32* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.gic_acpi_devinfo = type { i32 }

@ACPI_MADT_TYPE_GENERIC_MSI_FRAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"frame: %x %lx %x %u %u\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @madt_gicv2m_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @madt_gicv2m_handler(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arm_gic_softc*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.gic_acpi_devinfo*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_MADT_TYPE_GENERIC_MSI_FRAME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.arm_gic_softc*
  store %struct.arm_gic_softc* %17, %struct.arm_gic_softc** %5, align 8
  %18 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %19 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = bitcast %struct.TYPE_4__* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @device_printf(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %29, i32 %32, i32 %35, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32* @device_add_child(i32* %40, i32* null, i32 -1)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %15
  br label %71

45:                                               ; preds = %15
  %46 = load i32, i32* @M_DEVBUF, align 4
  %47 = load i32, i32* @M_WAITOK, align 4
  %48 = load i32, i32* @M_ZERO, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.gic_acpi_devinfo* @malloc(i32 4, i32 %46, i32 %49)
  store %struct.gic_acpi_devinfo* %50, %struct.gic_acpi_devinfo** %7, align 8
  %51 = load %struct.gic_acpi_devinfo*, %struct.gic_acpi_devinfo** %7, align 8
  %52 = getelementptr inbounds %struct.gic_acpi_devinfo, %struct.gic_acpi_devinfo* %51, i32 0, i32 0
  %53 = call i32 @resource_list_init(i32* %52)
  %54 = load %struct.gic_acpi_devinfo*, %struct.gic_acpi_devinfo** %7, align 8
  %55 = getelementptr inbounds %struct.gic_acpi_devinfo, %struct.gic_acpi_devinfo* %54, i32 0, i32 0
  %56 = load i32, i32* @SYS_RES_MEMORY, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PAGE_SIZE, align 8
  %64 = add nsw i64 %62, %63
  %65 = sub nsw i64 %64, 1
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = call i32 @resource_list_add(i32* %55, i32 %56, i32 0, i64 %59, i64 %65, i64 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.gic_acpi_devinfo*, %struct.gic_acpi_devinfo** %7, align 8
  %70 = call i32 @device_set_ivars(i32* %68, %struct.gic_acpi_devinfo* %69)
  br label %71

71:                                               ; preds = %44, %45, %2
  ret void
}

declare dso_local i32 @device_printf(i32*, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32* @device_add_child(i32*, i32*, i32) #1

declare dso_local %struct.gic_acpi_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i64) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.gic_acpi_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
