; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_28bit_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_28bit_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i64, i32 }

@ATA_READ_DMA = common dso_local global i64 0, align 8
@ATA_READ_DMA_QUEUED = common dso_local global i64 0, align 8
@ATA_WRITE_DMA = common dso_local global i64 0, align 8
@ATA_WRITE_DMA_QUEUED = common dso_local global i64 0, align 8
@ATA_TRUSTED_RECEIVE_DMA = common dso_local global i64 0, align 8
@ATA_TRUSTED_SEND_DMA = common dso_local global i64 0, align 8
@ATA_DOWNLOAD_MICROCODE_DMA = common dso_local global i64 0, align 8
@ATA_READ_BUFFER_DMA = common dso_local global i64 0, align 8
@ATA_WRITE_BUFFER_DMA = common dso_local global i64 0, align 8
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@ATA_DEV_LBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_28bit_cmd(%struct.ccb_ataio* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ccb_ataio*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %12 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %11, i32 0, i32 0
  %13 = call i32 @bzero(%struct.TYPE_2__* %12, i32 48)
  %14 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %15 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  store i32 0, i32* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @ATA_READ_DMA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %52, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @ATA_READ_DMA_QUEUED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ATA_WRITE_DMA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ATA_WRITE_DMA_QUEUED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @ATA_TRUSTED_RECEIVE_DMA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @ATA_TRUSTED_SEND_DMA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @ATA_DOWNLOAD_MICROCODE_DMA, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @ATA_READ_BUFFER_DMA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @ATA_WRITE_BUFFER_DMA, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48, %44, %40, %36, %32, %28, %24, %20, %5
  %53 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %54 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %55 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %62 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 6
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %66 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 5
  store i64 %64, i64* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %70 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = ashr i32 %72, 8
  %74 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %75 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 16
  %79 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %80 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @ATA_DEV_LBA, align 4
  %83 = load i32, i32* %9, align 4
  %84 = ashr i32 %83, 24
  %85 = and i32 %84, 15
  %86 = or i32 %82, %85
  %87 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.ccb_ataio*, %struct.ccb_ataio** %6, align 8
  %92 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 4
  store i64 %90, i64* %93, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
