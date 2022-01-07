; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i64, i32*, i64 }

@fw_initialized = common dso_local global i64 0, align 8
@MAX_OHCI = common dso_local global i32 0, align 4
@fwinfo = common dso_local global %struct.fwohci_softc* null, align 8
@FWOHCI_STATE_INIT = common dso_local global i64 0, align 8
@CROMSIZE = common dso_local global i32 0, align 4
@FWOHCI_STATE_ENABLED = common dso_local global i64 0, align 8
@FWOHCI_STATE_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_enable() #0 {
  %1 = alloca %struct.fwohci_softc*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @fw_initialized, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @fw_init()
  br label %7

7:                                                ; preds = %5, %0
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %53, %7
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MAX_OHCI, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load %struct.fwohci_softc*, %struct.fwohci_softc** @fwinfo, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %13, i64 %15
  store %struct.fwohci_softc* %16, %struct.fwohci_softc** %1, align 8
  %17 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %18 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FWOHCI_STATE_INIT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %56

23:                                               ; preds = %12
  %24 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %25 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @CROMSIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* @CROMSIZE, align 4
  %32 = sub nsw i32 %31, 1
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %38 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %40 = call i64 @fwohci_init(%struct.fwohci_softc* %39, i32 0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load i64, i64* @FWOHCI_STATE_ENABLED, align 8
  %44 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %45 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %47 = call i32 @fw_busreset(%struct.fwohci_softc* %46)
  br label %52

48:                                               ; preds = %23
  %49 = load i64, i64* @FWOHCI_STATE_DEAD, align 8
  %50 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %51 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %8

56:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @fw_init(...) #1

declare dso_local i64 @fwohci_init(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @fw_busreset(%struct.fwohci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
