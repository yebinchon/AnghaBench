; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_rod_token_information.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_receive_rod_token_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ctl_lun = type { i32, i32 }
%struct.scsi_receive_rod_token_information = type { i32, i32 }
%struct.scsi_receive_copy_status_lid4_data = type { i64, i64, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32* }
%struct.tpc_list = type { i32, i32*, i64, i32, i32, i32, i32, i64, i64, i64, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"ctl_receive_rod_token_information\0A\00", align 1
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
@RCS_TC_LBAS = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_receive_rod_token_information(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_receive_rod_token_information*, align 8
  %6 = alloca %struct.scsi_receive_copy_status_lid4_data*, align 8
  %7 = alloca %struct.tpc_list*, align 8
  %8 = alloca %struct.tpc_list, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %15 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %16 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %15)
  store %struct.ctl_lun* %16, %struct.ctl_lun** %4, align 8
  %17 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.scsi_receive_rod_token_information*
  store %struct.scsi_receive_rod_token_information* %21, %struct.scsi_receive_rod_token_information** %5, align 8
  %22 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.scsi_receive_rod_token_information*, %struct.scsi_receive_rod_token_information** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_receive_rod_token_information, %struct.scsi_receive_rod_token_information* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @scsi_4btoul(i32 %25)
  store i8* %26, i8** %14, align 8
  %27 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %28 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %27, i32 0, i32 0
  %29 = call i32 @mtx_lock(i32* %28)
  %30 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @ctl_get_initindex(i32* %34)
  %36 = call %struct.tpc_list* @tpc_find_list(%struct.ctl_lun* %30, i8* %31, i32 %35)
  store %struct.tpc_list* %36, %struct.tpc_list** %7, align 8
  %37 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %38 = icmp eq %struct.tpc_list* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %1
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %44 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %43, i32 1, i32 1, i32 2, i32 0, i32 0)
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %46 = bitcast %struct.ctl_scsiio* %45 to %union.ctl_io*
  %47 = call i32 @ctl_done(%union.ctl_io* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %2, align 4
  br label %245

49:                                               ; preds = %1
  %50 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %51 = bitcast %struct.tpc_list* %8 to i8*
  %52 = bitcast %struct.tpc_list* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 72, i1 false)
  %53 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %54 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %59 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %58, i32 0, i32 1
  %60 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %61 = load i32, i32* @links, align 4
  %62 = call i32 @TAILQ_REMOVE(i32* %59, %struct.tpc_list* %60, i32 %61)
  %63 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %64 = load i32, i32* @M_CTL, align 4
  %65 = call i32 @free(%struct.tpc_list* %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %49
  %67 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %68 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %67, i32 0, i32 0
  %69 = call i32 @mtx_unlock(i32* %68)
  %70 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i64 10, i64 0
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add i64 72, %78
  %80 = add i64 %79, 4
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load %struct.scsi_receive_rod_token_information*, %struct.scsi_receive_rod_token_information** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_receive_rod_token_information, %struct.scsi_receive_rod_token_information* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @scsi_4btoul(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @M_CTL, align 4
  %92 = load i32, i32* @M_WAITOK, align 4
  %93 = load i32, i32* @M_ZERO, align 4
  %94 = or i32 %92, %93
  %95 = call i64 @malloc(i32 %90, i32 %91, i32 %94)
  %96 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %97 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %99 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %98, i32 0, i32 6
  store i64 0, i64* %99, align 8
  %100 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %101 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %100, i32 0, i32 5
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @min(i32 %102, i32 %103)
  %105 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %106 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %108 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %111 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %113 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to %struct.scsi_receive_copy_status_lid4_data*
  store %struct.scsi_receive_copy_status_lid4_data* %115, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %116 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = add i64 68, %118
  %120 = add i64 %119, 4
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %126 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @scsi_ulto4b(i32 %124, i32* %127)
  %129 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %132 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 9
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %66
  %137 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load i32, i32* @RCS_CCS_ERROR, align 4
  %142 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %143 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 8
  br label %157

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, i32* @RCS_CCS_ABORTED, align 4
  %150 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %151 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 8
  br label %156

152:                                              ; preds = %144
  %153 = load i32, i32* @RCS_CCS_COMPLETED, align 4
  %154 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %155 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %140
  br label %162

158:                                              ; preds = %66
  %159 = load i32, i32* @RCS_CCS_INPROG_FG, align 4
  %160 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %157
  %163 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %166 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @scsi_ulto2b(i32 %164, i32* %167)
  %169 = load i32, i32* @UINT32_MAX, align 4
  %170 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %171 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %170, i32 0, i32 6
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @scsi_ulto4b(i32 %169, i32* %172)
  %174 = load i32, i32* @RCS_TC_LBAS, align 4
  %175 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %176 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %180 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @scsi_u64to8b(i32 %178, i32 %181)
  %183 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %186 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @scsi_ulto2b(i32 %184, i32* %187)
  %189 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %193 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %198 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %197, i32 0, i32 1
  store i64 %196, i64* %198, align 8
  %199 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %200 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 3
  %203 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @memcpy(i32* %201, i32* %202, i32 %204)
  %206 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %207 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.scsi_receive_copy_status_lid4_data*, %struct.scsi_receive_copy_status_lid4_data** %6, align 8
  %210 = getelementptr inbounds %struct.scsi_receive_copy_status_lid4_data, %struct.scsi_receive_copy_status_lid4_data* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32* %212, i32** %9, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = call i32 @scsi_ulto4b(i32 %213, i32* %215)
  %217 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %162
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = call i32 @scsi_ulto2b(i32 0, i32* %222)
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 6
  %226 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %8, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @memcpy(i32* %225, i32* %227, i32 8)
  br label %229

229:                                              ; preds = %220, %162
  %230 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %231 = call i32 @ctl_set_success(%struct.ctl_scsiio* %230)
  %232 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %233 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %234 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %232
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* @ctl_config_move_done, align 4
  %239 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %240 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %242 = bitcast %struct.ctl_scsiio* %241 to %union.ctl_io*
  %243 = call i32 @ctl_datamove(%union.ctl_io* %242)
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %229, %39
  %246 = load i32, i32* %2, align 4
  ret i32 %246
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

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
