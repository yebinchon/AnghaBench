; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_wmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_wmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32 }

@ATA_WDMA2 = common dso_local global i32 0, align 4
@ATA_WDMA1 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_max_wmode(%struct.ata_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %5 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ATA_WDMA2, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %13 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @ATA_WDMA1, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %11
  %20 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %21 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @ATA_WDMA0, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %17, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
