; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_physical_sector_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_physical_sector_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32 }

@ATA_PSS_VALID_MASK = common dso_local global i32 0, align 4
@ATA_PSS_VALID_VALUE = common dso_local global i32 0, align 4
@ATA_PSS_MULTLS = common dso_local global i32 0, align 4
@ATA_PSS_LSPPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_physical_sector_size(%struct.ata_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %5 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ATA_PSS_VALID_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @ATA_PSS_VALID_VALUE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %13 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATA_PSS_MULTLS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %20 = call i64 @ata_logical_sector_size(%struct.ata_params* %19)
  %21 = trunc i64 %20 to i32
  %22 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %23 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_PSS_LSPPS, align 4
  %26 = and i32 %24, %25
  %27 = shl i32 1, %26
  %28 = mul nsw i32 %21, %27
  store i32 %28, i32* %2, align 4
  br label %34

29:                                               ; preds = %11
  %30 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %31 = call i64 @ata_logical_sector_size(%struct.ata_params* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 512, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %29, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @ata_logical_sector_size(%struct.ata_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
