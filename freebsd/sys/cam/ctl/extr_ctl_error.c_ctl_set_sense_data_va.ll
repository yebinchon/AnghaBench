; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_sense_data_va.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_set_sense_data_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@SSD_TYPE_NONE = common dso_local global i64 0, align 8
@SSD_TYPE_FIXED = common dso_local global i64 0, align 8
@SCP_DSENSE = common dso_local global i32 0, align 4
@SSD_TYPE_DESC = common dso_local global i64 0, align 8
@SSD_FULL_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_set_sense_data_va(%struct.scsi_sense_data* %0, i64* %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.scsi_sense_data*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ctl_lun*, align 8
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %10, align 8
  store i64* %1, i64** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.ctl_lun*
  store %struct.ctl_lun* %21, %struct.ctl_lun** %19, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @SSD_TYPE_NONE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %9
  %26 = load i32, i32* %16, align 4
  %27 = icmp eq i32 %26, 41
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %25
  %35 = load i64, i64* @SSD_TYPE_FIXED, align 8
  store i64 %35, i64* %13, align 8
  br label %52

36:                                               ; preds = %31, %28
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %19, align 8
  %38 = icmp ne %struct.ctl_lun* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %19, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SCP_DSENSE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* @SSD_TYPE_DESC, align 8
  store i64 %48, i64* %13, align 8
  br label %51

49:                                               ; preds = %39, %36
  %50 = load i64, i64* @SSD_TYPE_FIXED, align 8
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %34
  br label %53

53:                                               ; preds = %52, %9
  %54 = load i64*, i64** %11, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.ctl_lun*, %struct.ctl_lun** %19, align 8
  %59 = icmp ne %struct.ctl_lun* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.ctl_lun*, %struct.ctl_lun** %19, align 8
  %62 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.ctl_lun*, %struct.ctl_lun** %19, align 8
  %68 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %11, align 8
  store i64 %70, i64* %71, align 8
  br label %75

72:                                               ; preds = %60, %57
  %73 = load i64, i64* @SSD_FULL_SIZE, align 8
  %74 = load i64*, i64** %11, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %66
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %10, align 8
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @scsi_set_sense_data_va(%struct.scsi_sense_data* %77, i64* %78, i64 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @scsi_set_sense_data_va(%struct.scsi_sense_data*, i64*, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
