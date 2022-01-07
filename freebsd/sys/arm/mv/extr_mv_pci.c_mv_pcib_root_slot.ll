; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_root_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_root_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32 }

@PCIR_VENDOR = common dso_local global i32 0, align 4
@PCIR_VENDOR_LENGTH = common dso_local global i32 0, align 4
@PCIR_DEVICE = common dso_local global i32 0, align 4
@PCIR_DEVICE_LENGTH = common dso_local global i32 0, align 4
@MV_DEV_FAMILY_MASK = common dso_local global i64 0, align 8
@PCI_VENDORID_MRVL = common dso_local global i64 0, align 8
@MV_DEV_ARMADA38X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @mv_pcib_root_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_root_slot(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mv_pcib_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mv_pcib_softc* @device_get_softc(i32 %13)
  store %struct.mv_pcib_softc* %14, %struct.mv_pcib_softc** %10, align 8
  %15 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %16 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PCIR_VENDOR, align 4
  %29 = load i32, i32* @PCIR_VENDOR_LENGTH, align 4
  %30 = call i64 @mv_pcib_hw_cfgread(%struct.mv_pcib_softc* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PCIR_DEVICE, align 4
  %36 = load i32, i32* @PCIR_DEVICE_LENGTH, align 4
  %37 = call i64 @mv_pcib_hw_cfgread(%struct.mv_pcib_softc* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i64, i64* @MV_DEV_FAMILY_MASK, align 8
  %39 = and i64 %37, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @PCI_VENDORID_MRVL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @MV_DEV_ARMADA38X, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %23
  %48 = phi i1 [ false, %23 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.mv_pcib_softc* @device_get_softc(i32) #1

declare dso_local i64 @mv_pcib_hw_cfgread(%struct.mv_pcib_softc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
