; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_pmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_max_pmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_params = type { i32, i32, i32, i32 }

@ATA_FLAG_64_70 = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_PIO3 = common dso_local global i32 0, align 4
@ATA_PIO2 = common dso_local global i32 0, align 4
@ATA_RETIRED_PIO_MASK = common dso_local global i32 0, align 4
@ATA_PIO1 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_max_pmode(%struct.ata_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_params*, align 8
  store %struct.ata_params* %0, %struct.ata_params** %3, align 8
  %4 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %5 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ATA_FLAG_64_70, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %12 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @ATA_PIO4, align 4
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %10
  %19 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %20 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @ATA_PIO3, align 4
  store i32 %25, i32* %2, align 4
  br label %80

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %29 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ATA_PIO4, align 4
  store i32 %34, i32* %2, align 4
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %37 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ATA_PIO3, align 4
  store i32 %42, i32* %2, align 4
  br label %80

43:                                               ; preds = %35
  %44 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %45 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ATA_PIO2, align 4
  store i32 %50, i32* %2, align 4
  br label %80

51:                                               ; preds = %43
  %52 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %53 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATA_RETIRED_PIO_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 512
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @ATA_PIO2, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %51
  %61 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %62 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATA_RETIRED_PIO_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 256
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @ATA_PIO1, align 4
  store i32 %68, i32* %2, align 4
  br label %80

69:                                               ; preds = %60
  %70 = load %struct.ata_params*, %struct.ata_params** %3, align 8
  %71 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATA_RETIRED_PIO_MASK, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @ATA_PIO0, align 4
  store i32 %77, i32* %2, align 4
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @ATA_PIO0, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %76, %67, %58, %49, %41, %33, %24, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
