; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_temp_log_sense_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_temp_log_sense_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.ctl_page_index = type { i64 }
%struct.ctl_lun = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_log_temperature = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@SLP_TEMPERATURE = common dso_local global i32 0, align 4
@SLP_LBIN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@SLP_REFTEMPERATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"reftemperature\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_temp_log_sense_handler(%struct.ctl_scsiio* %0, %struct.ctl_page_index* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.ctl_page_index*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca %struct.scsi_log_temperature*, align 8
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
  %15 = inttoptr i64 %14 to %struct.scsi_log_temperature*
  store %struct.scsi_log_temperature* %15, %struct.scsi_log_temperature** %8, align 8
  %16 = load i32, i32* @SLP_TEMPERATURE, align 4
  %17 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %18 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @scsi_ulto2b(i32 %16, i32 %20)
  %22 = load i8*, i8** @SLP_LBIN, align 8
  %23 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %27 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 28, i32* %28, align 8
  %29 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %30 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @dnvlist_get_string(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %34, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load i8*, i8** %9, align 8
  %38 = call i8* @strtol(i8* %37, i32* null, i32 0)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %41 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %45

42:                                               ; preds = %3
  %43 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %44 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %43, i32 0, i32 0
  store i32 255, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %47 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %46, i32 1
  store %struct.scsi_log_temperature* %47, %struct.scsi_log_temperature** %8, align 8
  %48 = load i32, i32* @SLP_REFTEMPERATURE, align 4
  %49 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %50 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @scsi_ulto2b(i32 %48, i32 %52)
  %54 = load i8*, i8** @SLP_LBIN, align 8
  %55 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %59 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 28, i32* %60, align 8
  %61 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %62 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @dnvlist_get_string(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %66, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %45
  %69 = load i8*, i8** %9, align 8
  %70 = call i8* @strtol(i8* %69, i32* null, i32 0)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %73 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %77

74:                                               ; preds = %45
  %75 = load %struct.scsi_log_temperature*, %struct.scsi_log_temperature** %8, align 8
  %76 = getelementptr inbounds %struct.scsi_log_temperature, %struct.scsi_log_temperature* %75, i32 0, i32 0
  store i32 255, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  ret i32 0
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
