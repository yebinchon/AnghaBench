; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_status_lid4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_copy_status_lid4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_lun = type { i32, i32 }
%struct.scsi_receive_copy_status_lid4 = type { i32, i32 }
%struct.scsi_receive_copy_status_lid4_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tpc_list = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ctl_receive_copy_status_lid4\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RCS_CCS_ERROR = common dso_local global i32 0, align 4
@RCS_CCS_ABORTED = common dso_local global i32 0, align 4
@RCS_CCS_COMPLETED = common dso_local global i32 0, align 4
@RCS_CCS_INPROG_FG = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@RCS_TC_BYTES = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_receive_copy_status_lid4(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_receive_copy_status_lid4*, align 8
  %6 = alloca %struct.scsi_receive_copy_status_lid4_data*, align 8
  %7 = alloca %struct.tpc_list*, align 8
  %8 = alloca %struct.tpc_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %13 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %14 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %13)
  store %struct.ctl_lun* %14, %struct.ctl_lun** %4, align 8
  %15 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_receive_copy_status_lid4*
  store %struct.scsi_receive_copy_status_lid4* %19, %struct.scsi_receive_copy_status_lid4** %5, align 8
  %20 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.scsi_receive_copy_status_lid4*, %struct.scsi_receive_copy_status_lid4** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4, %struct.scsi_receive_copy_status_lid4* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @scsi_4btoul(i32 %23)
  store i8* %24, i8** %12, align 8
  %25 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %26 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @ctl_get_initindex(i32* %32)
  %34 = call %struct.tpc_list* @tpc_find_list(%struct.ctl_lun* %28, i8* %29, i32 %33)
  store %struct.tpc_list* %34, %struct.tpc_list** %7, align 8
  %35 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %36 = icmp eq %struct.tpc_list* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %1
  %38 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %39 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %38, i32 0, i32 0
  %40 = call i32 @mtx_unlock(i32* %39)
  %41 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %42 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %41, i32 1, i32 1, i32 2, i32 0, i32 0)
  %43 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %44 = bitcast %struct.ctl_scsiio* %43 to %union.ctl_io*
  %45 = call i32 @ctl_done(%union.ctl_io* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %2, align 4
  br label %203

47:                                               ; preds = %1
  %48 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %49 = bitcast %struct.tpc_list* %8 to i8*
  %50 = bitcast %struct.tpc_list* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 56, i1 false)
  %51 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %52 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %47
  %56 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %57 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %56, i32 0, i32 1
  %58 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %59 = load i32, i32* @links, align 4
  %60 = call i32 @TAILQ_REMOVE(i32* %57, %struct.tpc_list* %58, i32 %59)
  %61 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %62 = load i32, i32* @M_CTL, align 4
  %63 = call i32 @free(%struct.tpc_list* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %47
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %66 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %65, i32 0, i32 0
  %67 = call i32 @mtx_unlock(i32* %66)
  %68 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add i64 44, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load %struct.scsi_receive_copy_status_lid4*, %struct.scsi_receive_copy_status_lid4** %5, align 8
  %74 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4, %struct.scsi_receive_copy_status_lid4* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @scsi_4btoul(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @M_CTL, align 4
  %80 = load i32, i32* @M_WAITOK, align 4
  %81 = load i32, i32* @M_ZERO, align 4
  %82 = or i32 %80, %81
  %83 = call i64 @malloc(i32 %78, i32 %79, i32 %82)
  %84 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %85 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %87 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %86, i32 0, i32 6
  store i64 0, i64* %87, align 8
  %88 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %89 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @min(i32 %90, i32 %91)
  %93 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %94 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %96 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %99 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %101 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.scsi_receive_copy_status_lid4_data*
  store %struct.scsi_receive_copy_status_lid4_data* %103, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %104 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add i64 40, %106
  %108 = trunc i64 %107 to i32
  %109 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %110 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @scsi_ulto4b(i32 %108, i32 %111)
  %113 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %142

120:                                              ; preds = %64
  %121 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* @RCS_CCS_ERROR, align 4
  %126 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %127 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  br label %141

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @RCS_CCS_ABORTED, align 4
  %134 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %135 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 4
  br label %140

136:                                              ; preds = %128
  %137 = load i32, i32* @RCS_CCS_COMPLETED, align 4
  %138 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %139 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %132
  br label %141

141:                                              ; preds = %140, %124
  br label %146

142:                                              ; preds = %64
  %143 = load i32, i32* @RCS_CCS_INPROG_FG, align 4
  %144 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %145 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %141
  %147 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %150 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @scsi_ulto2b(i32 %148, i32 %151)
  %153 = load i32, i32* @UINT32_MAX, align 4
  %154 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %155 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @scsi_ulto4b(i32 %153, i32 %156)
  %158 = load i32, i32* @RCS_TC_BYTES, align 4
  %159 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %160 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 4
  %161 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %164 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @scsi_u64to8b(i32 %162, i32 %165)
  %167 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %170 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @scsi_ulto2b(i32 %168, i32 %171)
  %173 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %176 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %180 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %182 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 1
  %185 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @memcpy(i32 %183, i32* %184, i32 %186)
  %188 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %189 = call i32 @ctl_set_success(%struct.ctl_scsiio* %188)
  %190 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %191 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %192 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* @ctl_config_move_done, align 4
  %197 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %198 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %200 = bitcast %struct.ctl_scsiio* %199 to %union.ctl_io*
  %201 = call i32 @ctl_datamove(%union.ctl_io* %200)
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %146, %37
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i8* @scsi_4btoul(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tpc_list* @tpc_find_list(%struct.ctl_lun*, i8*, i32) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.tpc_list*, i32) #1

declare dso_local i32 @free(%struct.tpc_list*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

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
