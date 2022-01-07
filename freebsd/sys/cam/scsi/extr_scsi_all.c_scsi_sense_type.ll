; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }

@SSD_ERRCODE = common dso_local global i32 0, align 4
@SSD_TYPE_DESC = common dso_local global i32 0, align 4
@SSD_TYPE_FIXED = common dso_local global i32 0, align 4
@SSD_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_sense_type(%struct.scsi_sense_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_sense_data*, align 8
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %3, align 8
  %4 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %3, align 8
  %5 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SSD_ERRCODE, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %13 [
    i32 129, label %9
    i32 128, label %9
    i32 131, label %11
    i32 130, label %11
  ]

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @SSD_TYPE_DESC, align 4
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @SSD_TYPE_FIXED, align 4
  store i32 %12, i32* %2, align 4
  br label %16

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13
  %15 = load i32, i32* @SSD_TYPE_NONE, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %11, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
