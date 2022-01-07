; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_acpi.c_gic_v3_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.gic_v3_acpi_devinfo = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gic_v3_softc = type { i32 }

@ACPI_MADT_TYPE_GENERIC_TRANSLATOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"its\00", align 1
@M_GIC_V3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ACPI_MSI_XREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @gic_v3_add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gic_v3_add_children(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.gic_v3_acpi_devinfo*, align 8
  %7 = alloca %struct.gic_v3_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_MADT_TYPE_GENERIC_TRANSLATOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = bitcast %struct.TYPE_6__* %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.gic_v3_softc* @device_get_softc(i32* %23)
  store %struct.gic_v3_softc* %24, %struct.gic_v3_softc** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @device_add_child(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %82

30:                                               ; preds = %18
  %31 = load i32, i32* @M_GIC_V3, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.gic_v3_acpi_devinfo* @malloc(i32 12, i32 %31, i32 %34)
  store %struct.gic_v3_acpi_devinfo* %35, %struct.gic_v3_acpi_devinfo** %6, align 8
  %36 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %37 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %36, i32 0, i32 1
  %38 = call i32 @resource_list_init(i32* %37)
  %39 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %40 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %39, i32 0, i32 1
  %41 = load i32, i32* @SYS_RES_MEMORY, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 131072
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @resource_list_add(i32* %40, i32 %41, i32 0, i64 %44, i64 %49, i32 131072)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @acpi_iort_its_lookup(i32 %53, i32* %10, i32* %12)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %30
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %60 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %64 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %74

66:                                               ; preds = %30
  %67 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %68 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 4
  %70 = load i32, i32* @ACPI_MSI_XREF, align 4
  %71 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %72 = getelementptr inbounds %struct.gic_v3_acpi_devinfo, %struct.gic_v3_acpi_devinfo* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %57
  %75 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %7, align 8
  %76 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.gic_v3_acpi_devinfo*, %struct.gic_v3_acpi_devinfo** %6, align 8
  %81 = call i32 @device_set_ivars(i32* %79, %struct.gic_v3_acpi_devinfo* %80)
  br label %82

82:                                               ; preds = %29, %74, %2
  ret void
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32*) #1

declare dso_local i32* @device_add_child(i32*, i8*, i32) #1

declare dso_local %struct.gic_v3_acpi_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @acpi_iort_its_lookup(i32, i32*, i32*) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.gic_v3_acpi_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
