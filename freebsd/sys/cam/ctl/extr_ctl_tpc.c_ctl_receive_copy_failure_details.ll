; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_failure_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_failure_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_lun = type { i32, i32 }
%struct.scsi_receive_copy_failure_details = type { i32, i32 }
%struct.scsi_receive_copy_failure_details_data = type { i32, i32, i32, i32 }
%struct.tpc_list = type { i32, i32, i64, i64, i64 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ctl_receive_copy_failure_details\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RCS_CCS_ERROR = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_receive_copy_failure_details(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_receive_copy_failure_details*, align 8
  %6 = alloca %struct.scsi_receive_copy_failure_details_data*, align 8
  %7 = alloca %struct.tpc_list*, align 8
  %8 = alloca %struct.tpc_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %14 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %13)
  store %struct.ctl_lun* %14, %struct.ctl_lun** %4, align 8
  %15 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_receive_copy_failure_details*
  store %struct.scsi_receive_copy_failure_details* %19, %struct.scsi_receive_copy_failure_details** %5, align 8
  %20 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.scsi_receive_copy_failure_details*, %struct.scsi_receive_copy_failure_details** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_receive_copy_failure_details, %struct.scsi_receive_copy_failure_details* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %24, i32 0, i32 0
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @ctl_get_initindex(i32* %31)
  %33 = call %struct.tpc_list* @tpc_find_list(%struct.ctl_lun* %27, i32 %28, i32 %32)
  store %struct.tpc_list* %33, %struct.tpc_list** %7, align 8
  %34 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %35 = icmp eq %struct.tpc_list* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %1
  %37 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %38 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %43 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %46 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %45, i32 1, i32 1, i32 2, i32 0, i32 0)
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %48 = bitcast %struct.ctl_scsiio* %47 to %union.ctl_io*
  %49 = call i32 @ctl_done(%union.ctl_io* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %159

51:                                               ; preds = %36
  %52 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %53 = bitcast %struct.tpc_list* %8 to i8*
  %54 = bitcast %struct.tpc_list* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 32, i1 false)
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 1
  %57 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %58 = load i32, i32* @links, align 4
  %59 = call i32 @TAILQ_REMOVE(i32* %56, %struct.tpc_list* %57, i32 %58)
  %60 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %61 = load i32, i32* @M_CTL, align 4
  %62 = call i32 @free(%struct.tpc_list* %60, i32 %61)
  %63 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %64 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %63, i32 0, i32 0
  %65 = call i32 @mtx_unlock(i32* %64)
  %66 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add i64 16, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.scsi_receive_copy_failure_details*, %struct.scsi_receive_copy_failure_details** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_receive_copy_failure_details, %struct.scsi_receive_copy_failure_details* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @scsi_4btoul(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @M_CTL, align 4
  %77 = load i32, i32* @M_WAITOK, align 4
  %78 = load i32, i32* @M_ZERO, align 4
  %79 = or i32 %77, %78
  %80 = call i64 @malloc(i32 %75, i32 %76, i32 %79)
  %81 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %82 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %84 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %86 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @min(i32 %87, i32 %88)
  %90 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %91 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %93 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %96 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %98 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.scsi_receive_copy_failure_details_data*
  store %struct.scsi_receive_copy_failure_details_data* %100, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %101 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %51
  %105 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108, %104
  %113 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add i64 12, %115
  %117 = trunc i64 %116 to i32
  %118 = load %struct.scsi_receive_copy_failure_details_data*, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %119 = getelementptr inbounds %struct.scsi_receive_copy_failure_details_data, %struct.scsi_receive_copy_failure_details_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @scsi_ulto4b(i32 %117, i32 %120)
  %122 = load i32, i32* @RCS_CCS_ERROR, align 4
  %123 = load %struct.scsi_receive_copy_failure_details_data*, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_receive_copy_failure_details_data, %struct.scsi_receive_copy_failure_details_data* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %130

125:                                              ; preds = %108, %51
  %126 = load %struct.scsi_receive_copy_failure_details_data*, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %127 = getelementptr inbounds %struct.scsi_receive_copy_failure_details_data, %struct.scsi_receive_copy_failure_details_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @scsi_ulto4b(i32 0, i32 %128)
  br label %130

130:                                              ; preds = %125, %112
  %131 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.scsi_receive_copy_failure_details_data*, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %134 = getelementptr inbounds %struct.scsi_receive_copy_failure_details_data, %struct.scsi_receive_copy_failure_details_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @scsi_ulto2b(i32 %132, i32 %135)
  %137 = load %struct.scsi_receive_copy_failure_details_data*, %struct.scsi_receive_copy_failure_details_data** %6, align 8
  %138 = getelementptr inbounds %struct.scsi_receive_copy_failure_details_data, %struct.scsi_receive_copy_failure_details_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 1
  %141 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i32 %139, i32* %140, i32 %142)
  %144 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %145 = call i32 @ctl_set_success(%struct.ctl_scsiio* %144)
  %146 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %147 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %148 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %146
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @ctl_config_move_done, align 4
  %153 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %154 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %156 = bitcast %struct.ctl_scsiio* %155 to %union.ctl_io*
  %157 = call i32 @ctl_datamove(%union.ctl_io* %156)
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %130, %41
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tpc_list* @tpc_find_list(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tpc_list*, i32) #1

declare dso_local i32 @free(%struct.tpc_list*, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
