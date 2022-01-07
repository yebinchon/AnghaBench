; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_log_sense_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_ie_log_sense_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.ctl_page_index = type { i64 }
%struct.ctl_lun = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_log_informational_exceptions = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SLP_IE_GEN = common dso_local global i32 0, align 4
@SLP_LBIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_ie_log_sense_handler(%struct.ctl_scsiio* %0, %struct.ctl_page_index* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_page_index*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca %struct.scsi_log_informational_exceptions*, align 8
  %9 = alloca i8*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.ctl_page_index* %1, %struct.ctl_page_index** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %11 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %10)
  store %struct.ctl_lun* %11, %struct.ctl_lun** %7, align 8
  %12 = load %struct.ctl_page_index*, %struct.ctl_page_index** %5, align 8
  %13 = getelementptr inbounds %struct.ctl_page_index, %struct.ctl_page_index* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.scsi_log_informational_exceptions*
  store %struct.scsi_log_informational_exceptions* %15, %struct.scsi_log_informational_exceptions** %8, align 8
  %16 = load i32, i32* @SLP_IE_GEN, align 4
  %17 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %18 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @scsi_ulto2b(i32 %16, i32 %20)
  %22 = load i32, i32* @SLP_LBIN, align 4
  %23 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %27 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 20, i32* %28, align 4
  %29 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %30 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %35 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %38 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @dnvlist_get_string(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %44, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strtol(i8* %47, i32* null, i32 0)
  %49 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %50 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %54

51:                                               ; preds = %3
  %52 = load %struct.scsi_log_informational_exceptions*, %struct.scsi_log_informational_exceptions** %8, align 8
  %53 = getelementptr inbounds %struct.scsi_log_informational_exceptions, %struct.scsi_log_informational_exceptions* %52, i32 0, i32 0
  store i32 255, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  ret i32 0
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
