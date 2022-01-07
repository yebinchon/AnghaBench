; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_48bit_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_48bit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@ATA_READ_DMA48 = common dso_local global i64 0, align 8
@ATA_READ_DMA_QUEUED48 = common dso_local global i64 0, align 8
@ATA_READ_STREAM_DMA48 = common dso_local global i64 0, align 8
@ATA_WRITE_DMA48 = common dso_local global i64 0, align 8
@ATA_WRITE_DMA_FUA48 = common dso_local global i64 0, align 8
@ATA_WRITE_DMA_QUEUED48 = common dso_local global i64 0, align 8
@ATA_WRITE_DMA_QUEUED_FUA48 = common dso_local global i64 0, align 8
@ATA_WRITE_STREAM_DMA48 = common dso_local global i64 0, align 8
@ATA_DATA_SET_MANAGEMENT = common dso_local global i64 0, align 8
@ATA_READ_LOG_DMA_EXT = common dso_local global i64 0, align 8
@ATA_WRITE_LOG_DMA_EXT = common dso_local global i64 0, align 8
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_DEV_LBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_48bit_cmd(%struct.ccb_ataio* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ccb_ataio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %12 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %13 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 13
  store i32 %11, i32* %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @ATA_READ_DMA48, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %58, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ATA_READ_DMA_QUEUED48, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @ATA_READ_STREAM_DMA48, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @ATA_WRITE_DMA48, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %58, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @ATA_WRITE_DMA_FUA48, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %58, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ATA_WRITE_DMA_QUEUED48, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ATA_WRITE_DMA_QUEUED_FUA48, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @ATA_WRITE_STREAM_DMA48, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ATA_DATA_SET_MANAGEMENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @ATA_READ_LOG_DMA_EXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @ATA_WRITE_LOG_DMA_EXT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %5
  %59 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %60 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %61 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %54
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %68 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 12
  store i64 %66, i64* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %72 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %76 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %81 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 16
  %85 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %86 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @ATA_DEV_LBA, align 4
  %89 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %90 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 11
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 24
  %94 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %95 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 32
  %99 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %100 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 40
  %104 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %105 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 6
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 8
  %109 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %110 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 7
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %114 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 8
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 8
  %118 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %119 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 9
  store i32 %117, i32* %120, align 4
  %121 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %122 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 10
  store i64 0, i64* %123, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
