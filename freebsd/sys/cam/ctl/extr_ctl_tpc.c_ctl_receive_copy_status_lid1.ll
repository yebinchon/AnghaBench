; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_status_lid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_status_lid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_lun = type { i32, i32 }
%struct.scsi_receive_copy_status_lid1 = type { i32, i32 }
%struct.scsi_receive_copy_status_lid1_data = type { i32, i32, i32, i32, i32 }
%struct.tpc_list = type { i32, i32, i64, i64, i64 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ctl_receive_copy_status_lid1\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RCS_CCS_ERROR = common dso_local global i32 0, align 4
@RCS_CCS_COMPLETED = common dso_local global i32 0, align 4
@RCS_CCS_INPROG = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@RCS_TC_BYTES = common dso_local global i32 0, align 4
@RCS_TC_MBYTES = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_receive_copy_status_lid1(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_receive_copy_status_lid1*, align 8
  %6 = alloca %struct.scsi_receive_copy_status_lid1_data*, align 8
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
  %15 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_receive_copy_status_lid1*
  store %struct.scsi_receive_copy_status_lid1* %19, %struct.scsi_receive_copy_status_lid1** %5, align 8
  %20 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.scsi_receive_copy_status_lid1*, %struct.scsi_receive_copy_status_lid1** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1, %struct.scsi_receive_copy_status_lid1* %21, i32 0, i32 1
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
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %38 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %37, i32 0, i32 0
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %41 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %40, i32 1, i32 1, i32 2, i32 0, i32 0)
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %43 = bitcast %struct.ctl_scsiio* %42 to %union.ctl_io*
  %44 = call i32 @ctl_done(%union.ctl_io* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %2, align 4
  br label %173

46:                                               ; preds = %1
  %47 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %48 = bitcast %struct.tpc_list* %8 to i8*
  %49 = bitcast %struct.tpc_list* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 32, i1 false)
  %50 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %51 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 1
  %57 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %58 = load i32, i32* @links, align 4
  %59 = call i32 @TAILQ_REMOVE(i32* %56, %struct.tpc_list* %57, i32 %58)
  %60 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %61 = load i32, i32* @M_CTL, align 4
  %62 = call i32 @free(%struct.tpc_list* %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %46
  %64 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %65 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock(i32* %65)
  store i32 20, i32* %11, align 4
  %67 = load %struct.scsi_receive_copy_status_lid1*, %struct.scsi_receive_copy_status_lid1** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1, %struct.scsi_receive_copy_status_lid1* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @scsi_4btoul(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @M_CTL, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = load i32, i32* @M_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call i64 @malloc(i32 %71, i32 %72, i32 %75)
  %77 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %78 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %80 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %79, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %82 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @min(i32 %83, i32 %84)
  %86 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %87 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %89 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %92 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %94 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.scsi_receive_copy_status_lid1_data*
  store %struct.scsi_receive_copy_status_lid1_data* %96, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %97 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @scsi_ulto4b(i32 16, i32 %99)
  %101 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %63
  %105 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108, %104
  %113 = load i32, i32* @RCS_CCS_ERROR, align 4
  %114 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %120

116:                                              ; preds = %108
  %117 = load i32, i32* @RCS_CCS_COMPLETED, align 4
  %118 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %119 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %125

121:                                              ; preds = %63
  %122 = load i32, i32* @RCS_CCS_INPROG, align 4
  %123 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %124 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %129 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @scsi_ulto2b(i32 %127, i32 %130)
  %132 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @UINT32_MAX, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = load i32, i32* @RCS_TC_BYTES, align 4
  %138 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %139 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %143 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @scsi_ulto4b(i32 %141, i32 %144)
  br label %157

146:                                              ; preds = %125
  %147 = load i32, i32* @RCS_TC_MBYTES, align 4
  %148 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %149 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = ashr i32 %151, 20
  %153 = load %struct.scsi_receive_copy_status_lid1_data*, %struct.scsi_receive_copy_status_lid1_data** %6, align 8
  %154 = getelementptr inbounds %struct.scsi_receive_copy_status_lid1_data, %struct.scsi_receive_copy_status_lid1_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @scsi_ulto4b(i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %146, %136
  %158 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %159 = call i32 @ctl_set_success(%struct.ctl_scsiio* %158)
  %160 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %161 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %162 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* @ctl_config_move_done, align 4
  %167 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %168 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %170 = bitcast %struct.ctl_scsiio* %169 to %union.ctl_io*
  %171 = call i32 @ctl_datamove(%union.ctl_io* %170)
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %157, %36
  %174 = load i32, i32* %2, align 4
  ret i32 %174
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

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
