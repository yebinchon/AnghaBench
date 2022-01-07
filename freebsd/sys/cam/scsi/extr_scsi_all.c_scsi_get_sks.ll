; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_sks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_sks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.scsi_sense_data_desc = type { i32 }
%struct.scsi_sense_sks = type { i32* }
%struct.scsi_sense_data_fixed = type { i32* }

@SSD_DESC_SKS = common dso_local global i32 0, align 4
@SSD_SKS_VALID = common dso_local global i32 0, align 4
@sense_key_spec = common dso_local global i32 0, align 4
@SSD_SCS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_sks(%struct.scsi_sense_data* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_sense_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_data_desc*, align 8
  %10 = alloca %struct.scsi_sense_sks*, align 8
  %11 = alloca %struct.scsi_sense_data_fixed*, align 8
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %78

15:                                               ; preds = %3
  %16 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %5, align 8
  %17 = call i32 @scsi_sense_type(%struct.scsi_sense_data* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %76 [
    i32 129, label %19
    i32 128, label %46
  ]

19:                                               ; preds = %15
  %20 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %5, align 8
  %21 = bitcast %struct.scsi_sense_data* %20 to %struct.scsi_sense_data_desc*
  store %struct.scsi_sense_data_desc* %21, %struct.scsi_sense_data_desc** %9, align 8
  %22 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @SSD_DESC_SKS, align 4
  %25 = call i64 @scsi_find_desc(%struct.scsi_sense_data_desc* %22, i64 %23, i32 %24)
  %26 = inttoptr i64 %25 to %struct.scsi_sense_sks*
  store %struct.scsi_sense_sks* %26, %struct.scsi_sense_sks** %10, align 8
  %27 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %10, align 8
  %28 = icmp eq %struct.scsi_sense_sks* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %78

30:                                               ; preds = %19
  %31 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %10, align 8
  %32 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SSD_SKS_VALID, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %78

40:                                               ; preds = %30
  %41 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %10, align 8
  %42 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @bcopy(i32* %43, i32* %44, i32 8)
  br label %77

46:                                               ; preds = %15
  %47 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %5, align 8
  %48 = bitcast %struct.scsi_sense_data* %47 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %48, %struct.scsi_sense_data_fixed** %11, align 8
  %49 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %11, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @sense_key_spec, align 4
  %52 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %49, i64 %50, i32 %51)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46
  %55 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %11, align 8
  %56 = load i32, i32* @sense_key_spec, align 4
  %57 = call i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed* %55, i32 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %46
  br label %78

60:                                               ; preds = %54
  %61 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %11, align 8
  %62 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SSD_SCS_VALID, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %78

70:                                               ; preds = %60
  %71 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %11, align 8
  %72 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @bcopy(i32* %73, i32* %74, i32 8)
  br label %77

76:                                               ; preds = %15
  br label %78

77:                                               ; preds = %70, %40
  store i32 0, i32* %4, align 4
  br label %79

78:                                               ; preds = %76, %69, %59, %39, %29, %14
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @scsi_sense_type(%struct.scsi_sense_data*) #1

declare dso_local i64 @scsi_find_desc(%struct.scsi_sense_data_desc*, i64, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed*, i64, i32) #1

declare dso_local i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
