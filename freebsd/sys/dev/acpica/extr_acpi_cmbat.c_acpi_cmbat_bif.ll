; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_bif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cmbat.c_acpi_cmbat_bif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bif = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.acpi_cmbat_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cmbat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_bif*)* @acpi_cmbat_bif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cmbat_bif(i32 %0, %struct.acpi_bif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_bif*, align 8
  %5 = alloca %struct.acpi_cmbat_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.acpi_bif* %1, %struct.acpi_bif** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.acpi_cmbat_softc* @device_get_softc(i32 %6)
  store %struct.acpi_cmbat_softc* %7, %struct.acpi_cmbat_softc** %5, align 8
  %8 = load i32, i32* @cmbat, align 4
  %9 = call i32 @ACPI_SERIAL_BEGIN(i32 %8)
  %10 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 4
  %22 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 4
  %46 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %57 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %65 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @strncpy(i32 %66, i32 %70, i32 4)
  %72 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strncpy(i32 %74, i32 %78, i32 4)
  %80 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %84 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strncpy(i32 %82, i32 %86, i32 4)
  %88 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %89 = getelementptr inbounds %struct.acpi_bif, %struct.acpi_bif* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.acpi_cmbat_softc*, %struct.acpi_cmbat_softc** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_cmbat_softc, %struct.acpi_cmbat_softc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strncpy(i32 %90, i32 %94, i32 4)
  %96 = load i32, i32* @cmbat, align 4
  %97 = call i32 @ACPI_SERIAL_END(i32 %96)
  ret i32 0
}

declare dso_local %struct.acpi_cmbat_softc* @device_get_softc(i32) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
