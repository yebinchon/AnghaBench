; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_request_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ctl_softc = type { i64 }
%struct.ctl_lun = type { i32, i32, i32, i32, %struct.TYPE_3__, %struct.scsi_sense_data** }
%struct.TYPE_3__ = type { i64 }
%struct.scsi_sense_data = type { i64 }
%struct.scsi_request_sense = type { i32, i32 }
%struct.scsi_sense_data_fixed = type { i32 }
%struct.scsi_sense_data_desc = type { i32 }
%union.ctl_io = type { i32 }

@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ctl_request_sense\0A\00", align 1
@SRS_DESC = common dso_local global i32 0, align 4
@SSD_TYPE_DESC = common dso_local global i64 0, align 8
@SSD_TYPE_FIXED = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@CTL_LUN_PRIMARY_SC = common dso_local global i32 0, align 4
@CTL_HA_LINK_UNKNOWN = common dso_local global i64 0, align 8
@SSD_KEY_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@CTL_MAX_INIT_PER_PORT = common dso_local global i64 0, align 8
@CTL_UA_NONE = common dso_local global i64 0, align 8
@SIEP_MRIE_NO = common dso_local global i64 0, align 8
@SSD_KEY_NO_SENSE = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_request_sense(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.ctl_softc*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_request_sense*, align 8
  %6 = alloca %struct.scsi_sense_data*, align 8
  %7 = alloca %struct.scsi_sense_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %17 = call %struct.ctl_softc* @CTL_SOFTC(%struct.ctl_scsiio* %16)
  store %struct.ctl_softc* %17, %struct.ctl_softc** %3, align 8
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %19 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %18)
  store %struct.ctl_lun* %19, %struct.ctl_lun** %4, align 8
  %20 = load i32, i32* @SSD_FULL_SIZE, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %22 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.scsi_request_sense*
  store %struct.scsi_request_sense* %24, %struct.scsi_request_sense** %5, align 8
  %25 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SRS_DESC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i64, i64* @SSD_TYPE_DESC, align 8
  store i64 %33, i64* %11, align 8
  br label %36

34:                                               ; preds = %1
  %35 = load i64, i64* @SSD_TYPE_FIXED, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* @M_CTL, align 4
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i64 @malloc(i32 8, i32 %37, i32 %38)
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.scsi_sense_data*
  store %struct.scsi_sense_data* %45, %struct.scsi_sense_data** %6, align 8
  %46 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %47 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %46, i32 0, i32 5
  store i64 0, i64* %47, align 8
  %48 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %49 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %54 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.scsi_request_sense*, %struct.scsi_request_sense** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_request_sense, %struct.scsi_request_sense* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %61 = icmp eq %struct.ctl_lun* %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %36
  %63 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %64 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @CTL_LUN_PRIMARY_SC, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.ctl_softc*, %struct.ctl_softc** %3, align 8
  %71 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CTL_HA_LINK_UNKNOWN, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69, %36
  %76 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i32, i32* @SSD_KEY_ILLEGAL_REQUEST, align 4
  %79 = load i32, i32* @SSD_ELEM_NONE, align 4
  %80 = call i32 @ctl_set_sense_data(%struct.scsi_sense_data* %76, i32* %10, %struct.ctl_lun* null, i64 %77, i32 1, i32 %78, i32 37, i32 0, i32 %79)
  br label %192

81:                                               ; preds = %69, %62
  store i32 0, i32* %9, align 4
  %82 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %83 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i64 @ctl_get_initindex(i32* %84)
  store i64 %85, i64* %8, align 8
  %86 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %87 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %86, i32 0, i32 3
  %88 = call i32 @mtx_lock(i32* %87)
  %89 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %90 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %89, i32 0, i32 5
  %91 = load %struct.scsi_sense_data**, %struct.scsi_sense_data*** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %94 = udiv i64 %92, %93
  %95 = getelementptr inbounds %struct.scsi_sense_data*, %struct.scsi_sense_data** %91, i64 %94
  %96 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %95, align 8
  store %struct.scsi_sense_data* %96, %struct.scsi_sense_data** %7, align 8
  %97 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %98 = icmp ne %struct.scsi_sense_data* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %81
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @CTL_MAX_INIT_PER_PORT, align 8
  %102 = urem i64 %100, %101
  %103 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %104 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %103, i64 %102
  store %struct.scsi_sense_data* %104, %struct.scsi_sense_data** %7, align 8
  br label %105

105:                                              ; preds = %99, %81
  %106 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %107 = icmp ne %struct.scsi_sense_data* %106, null
  br i1 %107, label %108, label %151

108:                                              ; preds = %105
  %109 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %110 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %151

113:                                              ; preds = %108
  %114 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %115 = call i64 @scsi_sense_type(%struct.scsi_sense_data* %114)
  store i64 %115, i64* %15, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* @SSD_TYPE_FIXED, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @SSD_TYPE_DESC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %125 = bitcast %struct.scsi_sense_data* %124 to %struct.scsi_sense_data_fixed*
  %126 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %127 = bitcast %struct.scsi_sense_data* %126 to %struct.scsi_sense_data_desc*
  %128 = call i32 @ctl_sense_to_desc(%struct.scsi_sense_data_fixed* %125, %struct.scsi_sense_data_desc* %127)
  br label %148

129:                                              ; preds = %119, %113
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @SSD_TYPE_DESC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %129
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @SSD_TYPE_FIXED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %139 = bitcast %struct.scsi_sense_data* %138 to %struct.scsi_sense_data_desc*
  %140 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %141 = bitcast %struct.scsi_sense_data* %140 to %struct.scsi_sense_data_fixed*
  %142 = call i32 @ctl_sense_to_fixed(%struct.scsi_sense_data_desc* %139, %struct.scsi_sense_data_fixed* %141)
  br label %147

143:                                              ; preds = %133, %129
  %144 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %145 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %146 = call i32 @memcpy(%struct.scsi_sense_data* %144, %struct.scsi_sense_data* %145, i32 8)
  br label %147

147:                                              ; preds = %143, %137
  br label %148

148:                                              ; preds = %147, %123
  %149 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %150 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  store i32 1, i32* %9, align 4
  br label %162

151:                                              ; preds = %108, %105
  %152 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %155 = load i64, i64* %11, align 8
  %156 = call i64 @ctl_build_ua(%struct.ctl_lun* %152, i64 %153, %struct.scsi_sense_data* %154, i32* %10, i64 %155)
  store i64 %156, i64* %12, align 8
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @CTL_UA_NONE, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 1, i32* %9, align 4
  br label %161

161:                                              ; preds = %160, %151
  br label %162

162:                                              ; preds = %161, %148
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %188

165:                                              ; preds = %162
  %166 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %167 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SIEP_MRIE_NO, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %174 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %13, align 4
  %176 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %177 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %14, align 4
  br label %179

179:                                              ; preds = %172, %165
  %180 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %6, align 8
  %181 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i32, i32* @SSD_KEY_NO_SENSE, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @SSD_ELEM_NONE, align 4
  %187 = call i32 @ctl_set_sense_data(%struct.scsi_sense_data* %180, i32* %10, %struct.ctl_lun* %181, i64 %182, i32 1, i32 %183, i32 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %162
  %189 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %190 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %189, i32 0, i32 3
  %191 = call i32 @mtx_unlock(i32* %190)
  br label %192

192:                                              ; preds = %188, %75
  %193 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %194 = call i32 @ctl_set_success(%struct.ctl_scsiio* %193)
  %195 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %196 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %197 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %195
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* @ctl_config_move_done, align 4
  %202 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %203 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 8
  %204 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %205 = bitcast %struct.ctl_scsiio* %204 to %union.ctl_io*
  %206 = call i32 @ctl_datamove(%union.ctl_io* %205)
  %207 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %207
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%struct.ctl_scsiio*) #1

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_set_sense_data(%struct.scsi_sense_data*, i32*, %struct.ctl_lun*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @scsi_sense_type(%struct.scsi_sense_data*) #1

declare dso_local i32 @ctl_sense_to_desc(%struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_desc*) #1

declare dso_local i32 @ctl_sense_to_fixed(%struct.scsi_sense_data_desc*, %struct.scsi_sense_data_fixed*) #1

declare dso_local i32 @memcpy(%struct.scsi_sense_data*, %struct.scsi_sense_data*, i32) #1

declare dso_local i64 @ctl_build_ua(%struct.ctl_lun*, i64, %struct.scsi_sense_data*, i32*, i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
