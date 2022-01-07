; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_umode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_umode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32 }

@ATA_FLAG_88 = common dso_local global i32 0, align 4
@ATA_UDMA6 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_UDMA4 = common dso_local global i32 0, align 4
@ATA_UDMA3 = common dso_local global i32 0, align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@ATA_UDMA1 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_max_umode(%struct.ata_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %5 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ATA_FLAG_88, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %1
  %11 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %12 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ATA_UDMA6, align 4
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %10
  %19 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %20 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ATA_UDMA5, align 4
  store i32 %25, i32* %2, align 4
  br label %68

26:                                               ; preds = %18
  %27 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %28 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ATA_UDMA4, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %26
  %35 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %36 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ATA_UDMA3, align 4
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %34
  %43 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %44 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %49, i32* %2, align 4
  br label %68

50:                                               ; preds = %42
  %51 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %52 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @ATA_UDMA1, align 4
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %50
  %59 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %60 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @ATA_UDMA0, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %1
  store i32 -1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %64, %56, %48, %40, %32, %24, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
