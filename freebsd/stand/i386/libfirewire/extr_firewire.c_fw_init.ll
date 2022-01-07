; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i64 }

@fw_initialized = common dso_local global i32 0, align 4
@MAX_OHCI = common dso_local global i32 0, align 4
@fwinfo = common dso_local global %struct.fwohci_softc* null, align 8
@FWOHCI_STATE_DEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = load i32, i32* @fw_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

8:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %30, %8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MAX_OHCI, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** @fwinfo, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %14, i64 %16
  store %struct.fwohci_softc* %17, %struct.fwohci_softc** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %20 = call i32 @fw_probe(i32 %18, %struct.fwohci_softc* %19)
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %22 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FWOHCI_STATE_DEAD, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %33

27:                                               ; preds = %13
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; No predecessors!
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %9

33:                                               ; preds = %27, %26, %9
  store i32 1, i32* @fw_initialized, align 4
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %33, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @fw_probe(i32, %struct.fwohci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
