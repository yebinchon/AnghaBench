; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_defect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_defect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i64*, i32, %struct.TYPE_2__, i64, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_read_defect_data_10 = type { i32, i8* }
%struct.scsi_read_defect_data_12 = type { i32, i8* }
%struct.scsi_read_defect_data_hdr_10 = type { i32, i8* }
%struct.scsi_read_defect_data_hdr_12 = type { i32, i32, i8* }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"ctl_read_defect\0A\00", align 1
@READ_DEFECT_DATA_10 = common dso_local global i64 0, align 8
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_read_defect(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.scsi_read_defect_data_10*, align 8
  %5 = alloca %struct.scsi_read_defect_data_12*, align 8
  %6 = alloca %struct.scsi_read_defect_data_hdr_10*, align 8
  %7 = alloca %struct.scsi_read_defect_data_hdr_12*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %11 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @READ_DEFECT_DATA_10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %20, i32 0, i32 0
  %22 = bitcast i64** %21 to %struct.scsi_read_defect_data_10*
  store %struct.scsi_read_defect_data_10* %22, %struct.scsi_read_defect_data_10** %4, align 8
  %23 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_read_defect_data_10, %struct.scsi_read_defect_data_10* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load %struct.scsi_read_defect_data_10*, %struct.scsi_read_defect_data_10** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_read_defect_data_10, %struct.scsi_read_defect_data_10* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @scsi_2btoul(i32 %28)
  store i64 %29, i64* %8, align 8
  store i64 16, i64* %9, align 8
  br label %41

30:                                               ; preds = %1
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %31, i32 0, i32 0
  %33 = bitcast i64** %32 to %struct.scsi_read_defect_data_12*
  store %struct.scsi_read_defect_data_12* %33, %struct.scsi_read_defect_data_12** %5, align 8
  %34 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load %struct.scsi_read_defect_data_12*, %struct.scsi_read_defect_data_12** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_read_defect_data_12, %struct.scsi_read_defect_data_12* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @scsi_4btoul(i32 %39)
  store i64 %40, i64* %8, align 8
  store i64 16, i64* %9, align 8
  br label %41

41:                                               ; preds = %30, %19
  %42 = load i64, i64* %8, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %46 = call i32 @ctl_set_success(%struct.ctl_scsiio* %45)
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %48 = bitcast %struct.ctl_scsiio* %47 to %union.ctl_io*
  %49 = call i32 @ctl_done(%union.ctl_io* %48)
  %50 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %50, i32* %2, align 4
  br label %125

51:                                               ; preds = %41
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @M_CTL, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = load i32, i32* @M_ZERO, align 4
  %56 = or i32 %54, %55
  %57 = call i64 @malloc(i64 %52, i32 %53, i32 %56)
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %61 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %62, i32 0, i32 6
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @min(i64 %64, i64 %65)
  %67 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %70 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %75 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @READ_DEFECT_DATA_10, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %51
  %82 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %83 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.scsi_read_defect_data_hdr_10*
  store %struct.scsi_read_defect_data_hdr_10* %85, %struct.scsi_read_defect_data_hdr_10** %6, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.scsi_read_defect_data_hdr_10*, %struct.scsi_read_defect_data_hdr_10** %6, align 8
  %88 = getelementptr inbounds %struct.scsi_read_defect_data_hdr_10, %struct.scsi_read_defect_data_hdr_10* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.scsi_read_defect_data_hdr_10*, %struct.scsi_read_defect_data_hdr_10** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_read_defect_data_hdr_10, %struct.scsi_read_defect_data_hdr_10* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @scsi_ulto2b(i32 0, i32 %91)
  br label %109

93:                                               ; preds = %51
  %94 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %95 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.scsi_read_defect_data_hdr_12*
  store %struct.scsi_read_defect_data_hdr_12* %97, %struct.scsi_read_defect_data_hdr_12** %7, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.scsi_read_defect_data_hdr_12*, %struct.scsi_read_defect_data_hdr_12** %7, align 8
  %100 = getelementptr inbounds %struct.scsi_read_defect_data_hdr_12, %struct.scsi_read_defect_data_hdr_12* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.scsi_read_defect_data_hdr_12*, %struct.scsi_read_defect_data_hdr_12** %7, align 8
  %102 = getelementptr inbounds %struct.scsi_read_defect_data_hdr_12, %struct.scsi_read_defect_data_hdr_12* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @scsi_ulto2b(i32 0, i32 %103)
  %105 = load %struct.scsi_read_defect_data_hdr_12*, %struct.scsi_read_defect_data_hdr_12** %7, align 8
  %106 = getelementptr inbounds %struct.scsi_read_defect_data_hdr_12, %struct.scsi_read_defect_data_hdr_12* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @scsi_ulto4b(i32 0, i32 %107)
  br label %109

109:                                              ; preds = %93, %81
  %110 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %111 = call i32 @ctl_set_success(%struct.ctl_scsiio* %110)
  %112 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %113 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %114 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @ctl_config_move_done, align 4
  %119 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %120 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %122 = bitcast %struct.ctl_scsiio* %121 to %union.ctl_io*
  %123 = call i32 @ctl_datamove(%union.ctl_io* %122)
  %124 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %109, %44
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_2btoul(i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
