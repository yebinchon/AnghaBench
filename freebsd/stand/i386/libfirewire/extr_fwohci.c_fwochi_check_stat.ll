; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwochi_check_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwochi_check_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FWOHCI_INTSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device physically ejected?\0A\00", align 1
@FWOHCI_INTSTATCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*)* @fwochi_check_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwochi_check_stat(%struct.fwohci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  %5 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %6 = load i32, i32* @FWOHCI_INTSTAT, align 4
  %7 = call i32 @OREAD(%struct.fwohci_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %12 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %22 = load i32, i32* @FWOHCI_INTSTATCLR, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @OWRITE(%struct.fwohci_softc* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
