; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i64 }

@fw_initialized = common dso_local global i64 0, align 8
@MAX_OHCI = common dso_local global i32 0, align 4
@fwinfo = common dso_local global %struct.fwohci_softc* null, align 8
@FWOHCI_STATE_ENABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_poll() #0 {
  %1 = alloca %struct.fwohci_softc*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @fw_initialized, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %28

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %25, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @MAX_OHCI, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** @fwinfo, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %12, i64 %14
  store %struct.fwohci_softc* %15, %struct.fwohci_softc** %1, align 8
  %16 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %17 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FWOHCI_STATE_ENABLED, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %28

22:                                               ; preds = %11
  %23 = load %struct.fwohci_softc*, %struct.fwohci_softc** %1, align 8
  %24 = call i32 @fwohci_poll(%struct.fwohci_softc* %23)
  br label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %7

28:                                               ; preds = %5, %21, %7
  ret void
}

declare dso_local i32 @fwohci_poll(%struct.fwohci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
