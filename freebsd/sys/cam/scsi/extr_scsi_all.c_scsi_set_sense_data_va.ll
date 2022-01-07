; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_set_sense_data_va.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_set_sense_data_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }

@SSD_FULL_SIZE = common dso_local global i64 0, align 8
@SSD_TYPE_DESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_set_sense_data_va(%struct.scsi_sense_data* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i64*, i64** %10, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSD_FULL_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i64, i64* @SSD_FULL_SIZE, align 8
  %23 = load i64*, i64** %10, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @SSD_TYPE_DESC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @scsi_set_sense_data_desc_va(%struct.scsi_sense_data* %29, i64* %30, i64 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36)
  br label %48

38:                                               ; preds = %24
  %39 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @scsi_set_sense_data_fixed_va(%struct.scsi_sense_data* %39, i64* %40, i64 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %28
  ret void
}

declare dso_local i32 @scsi_set_sense_data_desc_va(%struct.scsi_sense_data*, i64*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_set_sense_data_fixed_va(%struct.scsi_sense_data*, i64*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
