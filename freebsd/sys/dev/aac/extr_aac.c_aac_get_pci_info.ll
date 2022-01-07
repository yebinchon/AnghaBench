; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_pci_info = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*, i32)* @aac_get_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_get_pci_info(%struct.aac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aac_pci_info, align 4
  %6 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %11 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_get_bus(i32 %12)
  %14 = getelementptr inbounds %struct.aac_pci_info, %struct.aac_pci_info* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pci_get_slot(i32 %17)
  %19 = getelementptr inbounds %struct.aac_pci_info, %struct.aac_pci_info* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = ptrtoint %struct.aac_pci_info* %5 to i32
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @copyout(i32 %20, i32 %21, i32 8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @pci_get_bus(i32) #1

declare dso_local i32 @pci_get_slot(i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
