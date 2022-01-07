; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_start_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_start_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*, i32*)* @bcm_sdhci_start_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhci_start_transfer(i32 %0, %struct.sdhci_slot* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %8 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MMC_DATA_READ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %20 = call i32 @bcm_sdhci_read_dma(i32 %18, %struct.sdhci_slot* %19)
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %5, align 8
  %24 = call i32 @bcm_sdhci_write_dma(i32 %22, %struct.sdhci_slot* %23)
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @bcm_sdhci_read_dma(i32, %struct.sdhci_slot*) #1

declare dso_local i32 @bcm_sdhci_write_dma(i32, %struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
