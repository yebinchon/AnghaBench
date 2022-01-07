; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32, i32, i64, i32, i32, i32 }

@FWOHCI_STATE_INIT = common dso_local global i32 0, align 4
@FWOHCI_STATE_DEAD = common dso_local global i32 0, align 4
@BIOSPCI_16BITS = common dso_local global i32 0, align 4
@BIOSPCI_32BITS = common dso_local global i32 0, align 4
@OHCI_BUS_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.fwohci_softc*)* @fw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_probe(i32 %0, %struct.fwohci_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fwohci_softc* %1, %struct.fwohci_softc** %4, align 8
  %6 = load i32, i32* @FWOHCI_STATE_INIT, align 4
  %7 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %8 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %10, i32 0, i32 3
  %12 = call i32 @biospci_find_devclass(i32 786448, i32 %9, i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @FWOHCI_STATE_DEAD, align 4
  %17 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BIOSPCI_16BITS, align 4
  %24 = call i32 @biospci_write_config(i32 %22, i32 4, i32 %23, i32 6)
  %25 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BIOSPCI_32BITS, align 4
  %29 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %30 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %29, i32 0, i32 4
  %31 = call i32 @biospci_read_config(i32 %27, i32 0, i32 %28, i32* %30)
  %32 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %33 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BIOSPCI_32BITS, align 4
  %36 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %37 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %36, i32 0, i32 1
  %38 = call i32 @biospci_read_config(i32 %34, i32 16, i32 %35, i32* %37)
  %39 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %40 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @PTOV(i32 %41)
  %43 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %44 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %46 = load i32, i32* @OHCI_BUS_ID, align 4
  %47 = call i32 @OREAD(%struct.fwohci_softc* %45, i32 %46)
  %48 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %49 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @biospci_find_devclass(i32, i32, i32*) #1

declare dso_local i32 @biospci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @biospci_read_config(i32, i32, i32, i32*) #1

declare dso_local i64 @PTOV(i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
