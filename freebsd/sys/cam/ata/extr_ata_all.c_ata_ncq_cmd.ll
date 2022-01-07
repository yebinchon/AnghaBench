; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_ncq_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_ncq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_ataio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32 }

@CAM_ATAIO_48BIT = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@ATA_DEV_LBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_ncq_cmd(%struct.ccb_ataio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ccb_ataio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ccb_ataio* %0, %struct.ccb_ataio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @CAM_ATAIO_48BIT, align 4
  %10 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %13 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %17 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 13
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %21 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %25 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %30 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 16
  %34 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %35 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @ATA_DEV_LBA, align 4
  %38 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %39 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 12
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 24
  %43 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %44 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 32
  %48 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %49 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 40
  %53 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %54 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %59 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 8
  store i32 %57, i32* %60, align 8
  %61 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %62 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 11
  store i64 0, i64* %63, align 8
  %64 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %65 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.ccb_ataio*, %struct.ccb_ataio** %5, align 8
  %68 = getelementptr inbounds %struct.ccb_ataio, %struct.ccb_ataio* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 9
  store i64 0, i64* %69, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
