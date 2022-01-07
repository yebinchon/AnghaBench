; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_arm_gic_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_acpi.c_arm_gic_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ACPI_SIG_MADT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"gic: Unable to map the MADT\0A\00", align 1
@madt_gicv2m_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_gic_add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_add_children(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.arm_gic_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.arm_gic_softc* @device_get_softc(i32 %7)
  store %struct.arm_gic_softc* %8, %struct.arm_gic_softc** %4, align 8
  %9 = load i32, i32* @ACPI_SIG_MADT, align 4
  %10 = call i64 @acpi_find_table(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @ACPI_SIG_MADT, align 4
  %17 = call %struct.TYPE_7__* @acpi_map_table(i64 %15, i32 %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %39

23:                                               ; preds = %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = bitcast %struct.TYPE_7__* %26 to i8*
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = load i32, i32* @madt_gicv2m_handler, align 4
  %35 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %4, align 8
  %36 = call i32 @acpi_walk_subtables(%struct.TYPE_7__* %25, i8* %33, i32 %34, %struct.arm_gic_softc* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call i32 @acpi_unmap_table(%struct.TYPE_7__* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %23, %20, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i64 @acpi_find_table(i32) #1

declare dso_local %struct.TYPE_7__* @acpi_map_table(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_walk_subtables(%struct.TYPE_7__*, i8*, i32, %struct.arm_gic_softc*) #1

declare dso_local i32 @acpi_unmap_table(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
