; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i64 }

@PCIB_IVAR_BUS = common dso_local global i32 0, align 4
@PCIERC_CFG006 = common dso_local global i32 0, align 4
@PCIB_IVAR_DOMAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @thunder_pem_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.thunder_pem_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.thunder_pem_softc* @device_get_softc(i32 %12)
  store %struct.thunder_pem_softc* %13, %struct.thunder_pem_softc** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PCIB_IVAR_BUS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %10, align 8
  %19 = load i32, i32* @PCIERC_CFG006, align 4
  %20 = call i32 @thunder_pem_config_reg_read(%struct.thunder_pem_softc* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @PCIERC_CFG006_SEC_BUS(i32 %21)
  %23 = load i64*, i64** %9, align 8
  store i64 %22, i64* %23, align 8
  store i32 0, i32* %5, align 4
  br label %35

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PCIB_IVAR_DOMAIN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %10, align 8
  %30 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  store i32 0, i32* %5, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %28, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local %struct.thunder_pem_softc* @device_get_softc(i32) #1

declare dso_local i32 @thunder_pem_config_reg_read(%struct.thunder_pem_softc*, i32) #1

declare dso_local i64 @PCIERC_CFG006_SEC_BUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
