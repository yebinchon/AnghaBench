; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_ind_tbl_convert_to_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ena-com/extr_ena_com.c_ena_com_ind_tbl_convert_to_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_io_sq*, %struct.ena_rss }
%struct.ena_com_io_sq = type { i64, i32 }
%struct.ena_rss = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENA_TOTAL_NUM_QUEUES = common dso_local global i64 0, align 8
@ENA_COM_INVAL = common dso_local global i32 0, align 4
@ENA_COM_IO_QUEUE_DIRECTION_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*)* @ena_com_ind_tbl_convert_to_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_ind_tbl_convert_to_device(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_rss*, align 8
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %8 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %8, i32 0, i32 1
  store %struct.ena_rss* %9, %struct.ena_rss** %4, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %54, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ena_rss*, %struct.ena_rss** %4, align 8
  %13 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %10
  %18 = load %struct.ena_rss*, %struct.ena_rss** %4, align 8
  %19 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %17
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %32 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %31, i32 0, i32 0
  %33 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %33, i64 %34
  store %struct.ena_com_io_sq* %35, %struct.ena_com_io_sq** %5, align 8
  %36 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %37 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_RX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @ENA_COM_INVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %30
  %44 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %45 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ena_rss*, %struct.ena_rss** %4, align 8
  %48 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %10

57:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %41, %28
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
