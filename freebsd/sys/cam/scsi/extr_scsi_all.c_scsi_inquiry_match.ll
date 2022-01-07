; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_inquiry_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_inquiry_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_inquiry_pattern = type { i64, i32, i32, i32, i32 }
%struct.scsi_inquiry_data = type { i32, i32, i32 }

@T_ANY = common dso_local global i64 0, align 8
@SIP_MEDIA_REMOVABLE = common dso_local global i32 0, align 4
@SIP_MEDIA_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_inquiry_match(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.scsi_inquiry_pattern*, align 8
  %7 = alloca %struct.scsi_inquiry_data*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = inttoptr i64 %8 to %struct.scsi_inquiry_pattern*
  store %struct.scsi_inquiry_pattern* %9, %struct.scsi_inquiry_pattern** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %11, %struct.scsi_inquiry_data** %7, align 8
  %12 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %13 = call i64 @SID_TYPE(%struct.scsi_inquiry_data* %12)
  %14 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %15 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @T_ANY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %18, %2
  %25 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %26 = call i64 @SID_IS_REMOVABLE(%struct.scsi_inquiry_data* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SIP_MEDIA_REMOVABLE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %70

35:                                               ; preds = %24
  %36 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %37 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SIP_MEDIA_FIXED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %35, %28
  %43 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %47 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @cam_strmatch(i32 %45, i32 %48, i32 4)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %53 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %56 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @cam_strmatch(i32 %54, i32 %57, i32 4)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %62 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.scsi_inquiry_pattern*, %struct.scsi_inquiry_pattern** %6, align 8
  %65 = getelementptr inbounds %struct.scsi_inquiry_pattern, %struct.scsi_inquiry_pattern* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @cam_strmatch(i32 %63, i32 %66, i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %71

70:                                               ; preds = %60, %51, %42, %35, %28, %18
  store i32 -1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @SID_IS_REMOVABLE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @cam_strmatch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
