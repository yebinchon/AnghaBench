; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_remap_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_hpet.c_hpet_remap_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_softc = type { i32, i32, %struct.hpet_timer* }
%struct.hpet_timer = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @hpet_remap_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_remap_intr(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.hpet_softc*, align 8
  %9 = alloca %struct.hpet_timer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.hpet_softc* @device_get_softc(i32 %14)
  store %struct.hpet_softc* %15, %struct.hpet_softc** %8, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %65, %3
  %17 = load i32, i32* %13, align 4
  %18 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %19 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %24 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %23, i32 0, i32 2
  %25 = load %struct.hpet_timer*, %struct.hpet_timer** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %25, i64 %27
  store %struct.hpet_timer* %28, %struct.hpet_timer** %9, align 8
  %29 = load %struct.hpet_timer*, %struct.hpet_timer** %9, align 8
  %30 = getelementptr inbounds %struct.hpet_timer, %struct.hpet_timer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %65

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @device_get_parent(i32 %36)
  %38 = call i32 @device_get_parent(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @PCIB_MAP_MSI(i32 %38, i32 %39, i64 %40, i32* %10, i32* %11)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %35
  %47 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %48 = call i32 @hpet_disable(%struct.hpet_softc* %47)
  %49 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %50 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @HPET_TIMER_FSB_ADDR(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @bus_write_4(i32 %51, i32 %53, i32 %54)
  %56 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %57 = getelementptr inbounds %struct.hpet_softc, %struct.hpet_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @HPET_TIMER_FSB_VAL(i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @bus_write_4(i32 %58, i32 %60, i32 %61)
  %63 = load %struct.hpet_softc*, %struct.hpet_softc** %8, align 8
  %64 = call i32 @hpet_enable(%struct.hpet_softc* %63)
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %34
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %16

68:                                               ; preds = %16
  %69 = load i32, i32* @ENOENT, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %46, %44
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.hpet_softc* @device_get_softc(i32) #1

declare dso_local i32 @PCIB_MAP_MSI(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @hpet_disable(%struct.hpet_softc*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @HPET_TIMER_FSB_ADDR(i32) #1

declare dso_local i32 @HPET_TIMER_FSB_VAL(i32) #1

declare dso_local i32 @hpet_enable(%struct.hpet_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
