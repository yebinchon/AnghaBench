; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_logical_sector_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_logical_sector_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i64, i64 }

@ATA_PSS_VALID_MASK = common dso_local global i32 0, align 4
@ATA_PSS_VALID_VALUE = common dso_local global i32 0, align 4
@ATA_PSS_LSSABOVE512 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_logical_sector_size(%struct.ata_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %5 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ATA_PSS_VALID_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @ATA_PSS_VALID_VALUE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %13 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ATA_PSS_LSSABOVE512, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %20 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %24 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 16
  %28 = or i32 %22, %27
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %11, %1
  store i32 512, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
