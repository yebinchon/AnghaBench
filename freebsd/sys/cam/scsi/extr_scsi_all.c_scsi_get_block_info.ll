; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_block_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_block_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_data_desc = type { i32 }
%struct.scsi_sense_block = type { i32 }
%struct.scsi_sense_data_fixed = type { i32 }

@SSD_DESC_BLOCK = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@SSD_ILI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_block_info(%struct.scsi_sense_data* %0, i32 %1, %struct.scsi_inquiry_data* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_sense_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_inquiry_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.scsi_sense_data_desc*, align 8
  %12 = alloca %struct.scsi_sense_block*, align 8
  %13 = alloca %struct.scsi_sense_data_fixed*, align 8
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scsi_inquiry_data* %2, %struct.scsi_inquiry_data** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %15 = icmp ne %struct.scsi_inquiry_data* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %18 = call i32 @SID_TYPE(%struct.scsi_inquiry_data* %17)
  switch i32 %18, label %20 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %16, %16, %16
  br label %21

20:                                               ; preds = %16
  br label %60

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %4
  %23 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %24 = call i32 @scsi_sense_type(%struct.scsi_sense_data* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %58 [
    i32 132, label %26
    i32 131, label %42
  ]

26:                                               ; preds = %22
  %27 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %28 = bitcast %struct.scsi_sense_data* %27 to %struct.scsi_sense_data_desc*
  store %struct.scsi_sense_data_desc* %28, %struct.scsi_sense_data_desc** %11, align 8
  %29 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %11, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SSD_DESC_BLOCK, align 4
  %32 = call i64 @scsi_find_desc(%struct.scsi_sense_data_desc* %29, i32 %30, i32 %31)
  %33 = inttoptr i64 %32 to %struct.scsi_sense_block*
  store %struct.scsi_sense_block* %33, %struct.scsi_sense_block** %12, align 8
  %34 = load %struct.scsi_sense_block*, %struct.scsi_sense_block** %12, align 8
  %35 = icmp eq %struct.scsi_sense_block* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %60

37:                                               ; preds = %26
  %38 = load %struct.scsi_sense_block*, %struct.scsi_sense_block** %12, align 8
  %39 = getelementptr inbounds %struct.scsi_sense_block, %struct.scsi_sense_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %59

42:                                               ; preds = %22
  %43 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %44 = bitcast %struct.scsi_sense_data* %43 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %44, %struct.scsi_sense_data_fixed** %13, align 8
  %45 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %13, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @flags, align 4
  %48 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %45, i32 %46, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %60

51:                                               ; preds = %42
  %52 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %13, align 8
  %53 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SSD_ILI, align 4
  %56 = and i32 %54, %55
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  br label %59

58:                                               ; preds = %22
  br label %60

59:                                               ; preds = %51, %37
  store i32 0, i32* %5, align 4
  br label %61

60:                                               ; preds = %58, %50, %36, %20
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @scsi_sense_type(%struct.scsi_sense_data*) #1

declare dso_local i64 @scsi_find_desc(%struct.scsi_sense_data_desc*, i32, i32) #1

declare dso_local i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
