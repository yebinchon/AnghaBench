; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_hw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_hw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_hw_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ccp_softc* @device_get_softc(i32 %5)
  store %struct.ccp_softc* %6, %struct.ccp_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nitems(i32 %11)
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ccp_hw_detach_queue(i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.ccp_softc*, %struct.ccp_softc** %3, align 8
  %23 = call i32 @ccp_release_interrupts(%struct.ccp_softc* %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @pci_disable_busmaster(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @ccp_unmap_pci_bar(i32 %26)
  ret void
}

declare dso_local %struct.ccp_softc* @device_get_softc(i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @ccp_hw_detach_queue(i32, i32) #1

declare dso_local i32 @ccp_release_interrupts(%struct.ccp_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @ccp_unmap_pci_bar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
