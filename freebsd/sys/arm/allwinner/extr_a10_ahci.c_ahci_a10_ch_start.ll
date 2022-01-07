; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_ch_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_ahci.c_ahci_a10_ch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32 }

@AHCI_P0DMACR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_channel*)* @ahci_a10_ch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_a10_ch_start(%struct.ahci_channel* %0) #0 {
  %2 = alloca %struct.ahci_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.ahci_channel* %0, %struct.ahci_channel** %2, align 8
  %4 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %5 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AHCI_P0DMACR, align 4
  %8 = call i32 @ATA_INL(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, -65281
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, 17408
  store i32 %12, i32* %3, align 4
  %13 = load %struct.ahci_channel*, %struct.ahci_channel** %2, align 8
  %14 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AHCI_P0DMACR, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ATA_OUTL(i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
