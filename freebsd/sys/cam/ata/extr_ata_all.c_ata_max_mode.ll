; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32 }

@ATA_DMA_MAX = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_max_mode(%struct.ata_params* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_params*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_params* %0, %struct.ata_params** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ATA_DMA_MAX, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ATA_UDMA0, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %16 = call i64 @ata_max_umode(%struct.ata_params* %15)
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %21 = call i64 @ata_max_umode(%struct.ata_params* %20)
  %22 = call i32 @min(i32 %19, i64 %21)
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %14, %10
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @ATA_WDMA0, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %29 = call i64 @ata_max_wmode(%struct.ata_params* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %34 = call i64 @ata_max_wmode(%struct.ata_params* %33)
  %35 = call i32 @min(i32 %32, i64 %34)
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ata_params*, %struct.ata_params** %4, align 8
  %39 = call i64 @ata_max_pmode(%struct.ata_params* %38)
  %40 = call i32 @min(i32 %37, i64 %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %31, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ata_max_umode(%struct.ata_params*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i64 @ata_max_wmode(%struct.ata_params*) #1

declare dso_local i64 @ata_max_pmode(%struct.ata_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
