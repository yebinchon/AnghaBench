; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_luns.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ctl_softc = type { i32, %struct.ctl_lun** }
%struct.ctl_lun = type { i32 }
%struct.ctl_port = type { i32, i64 }
%struct.scsi_report_luns = type { i32, i32 }
%struct.scsi_report_luns_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%union.ctl_io = type { i32 }

@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ctl_report_luns\0A\00", align 1
@ctl_max_luns = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_UA_LUN_CHANGE = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_report_luns(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_softc*, align 8
  %5 = alloca %struct.ctl_port*, align 8
  %6 = alloca %struct.ctl_lun*, align 8
  %7 = alloca %struct.ctl_lun*, align 8
  %8 = alloca %struct.scsi_report_luns*, align 8
  %9 = alloca %struct.scsi_report_luns_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %19 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %20 = call %struct.ctl_softc* @CTL_SOFTC(%struct.ctl_scsiio* %19)
  store %struct.ctl_softc* %20, %struct.ctl_softc** %4, align 8
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = call %struct.ctl_port* @CTL_PORT(%struct.ctl_scsiio* %21)
  store %struct.ctl_port* %22, %struct.ctl_port** %5, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %24 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %23)
  store %struct.ctl_lun* %24, %struct.ctl_lun** %7, align 8
  %25 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %25, i32* %13, align 4
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.scsi_report_luns*
  store %struct.scsi_report_luns* %29, %struct.scsi_report_luns** %8, align 8
  %30 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  %31 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %32 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %1
  %36 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %37 = getelementptr inbounds %struct.ctl_port, %struct.ctl_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %41

39:                                               ; preds = %1
  %40 = load i32, i32* @ctl_max_luns, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %38, %35 ], [ %40, %39 ]
  store i32 %42, i32* %12, align 4
  %43 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_lock(i32* %44)
  store i32 0, i32* %17, align 4
  br label %46

46:                                               ; preds = %60, %41
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i64 @ctl_lun_map_from_port(%struct.ctl_port* %51, i32 %52)
  %54 = load i64, i64* @UINT32_MAX, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %17, align 4
  br label %46

63:                                               ; preds = %46
  %64 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %64, i32 0, i32 0
  %66 = call i32 @mtx_unlock(i32* %65)
  %67 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %8, align 8
  %68 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %72 [
    i32 130, label %70
    i32 132, label %70
    i32 129, label %70
    i32 128, label %71
    i32 133, label %71
    i32 131, label %71
  ]

70:                                               ; preds = %63, %63, %63
  br label %79

71:                                               ; preds = %63, %63, %63
  store i32 0, i32* %11, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %74 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %73, i32 1, i32 1, i32 2, i32 0, i32 0)
  %75 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %76 = bitcast %struct.ctl_scsiio* %75 to %union.ctl_io*
  %77 = call i32 @ctl_done(%union.ctl_io* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %2, align 4
  br label %226

79:                                               ; preds = %71, %70
  %80 = load %struct.scsi_report_luns*, %struct.scsi_report_luns** %8, align 8
  %81 = getelementptr inbounds %struct.scsi_report_luns, %struct.scsi_report_luns* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @scsi_4btoul(i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ult i64 %85, 20
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %89 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %88, i32 1, i32 1, i32 6, i32 0, i32 0)
  %90 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %91 = bitcast %struct.ctl_scsiio* %90 to %union.ctl_io*
  %92 = call i32 @ctl_done(%union.ctl_io* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %2, align 4
  br label %226

94:                                               ; preds = %79
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = add i64 16, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @M_CTL, align 4
  %102 = load i32, i32* @M_WAITOK, align 4
  %103 = load i32, i32* @M_ZERO, align 4
  %104 = or i32 %102, %103
  %105 = call i64 @malloc(i32 %100, i32 %101, i32 %104)
  %106 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %107 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %106, i32 0, i32 6
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %109 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.scsi_report_luns_data*
  store %struct.scsi_report_luns_data* %111, %struct.scsi_report_luns_data** %9, align 8
  %112 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %113 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %115 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = call i32 @ctl_get_initindex(i32* %116)
  store i32 %117, i32* %16, align 4
  %118 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %119 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %118, i32 0, i32 0
  %120 = call i32 @mtx_lock(i32* %119)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %179, %94
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %126, %127
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i1 [ false, %121 ], [ %128, %125 ]
  br i1 %130, label %131, label %182

131:                                              ; preds = %129
  %132 = load %struct.ctl_port*, %struct.ctl_port** %5, align 8
  %133 = load i32, i32* %17, align 4
  %134 = call i64 @ctl_lun_map_from_port(%struct.ctl_port* %132, i32 %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @UINT32_MAX, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %179

141:                                              ; preds = %131
  %142 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %143 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %142, i32 0, i32 1
  %144 = load %struct.ctl_lun**, %struct.ctl_lun*** %143, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.ctl_lun*, %struct.ctl_lun** %144, i64 %146
  %148 = load %struct.ctl_lun*, %struct.ctl_lun** %147, align 8
  store %struct.ctl_lun* %148, %struct.ctl_lun** %6, align 8
  %149 = load %struct.ctl_lun*, %struct.ctl_lun** %6, align 8
  %150 = icmp eq %struct.ctl_lun* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %141
  br label %179

152:                                              ; preds = %141
  %153 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %154 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @ctl_encode_lun(i32 %162)
  %164 = call i32 @be64enc(i32 %161, i32 %163)
  %165 = load %struct.ctl_lun*, %struct.ctl_lun** %7, align 8
  %166 = icmp ne %struct.ctl_lun* %165, null
  br i1 %166, label %167, label %178

167:                                              ; preds = %152
  %168 = load %struct.ctl_lun*, %struct.ctl_lun** %6, align 8
  %169 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %168, i32 0, i32 0
  %170 = call i32 @mtx_lock(i32* %169)
  %171 = load %struct.ctl_lun*, %struct.ctl_lun** %6, align 8
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @CTL_UA_LUN_CHANGE, align 4
  %174 = call i32 @ctl_clr_ua(%struct.ctl_lun* %171, i32 %172, i32 %173)
  %175 = load %struct.ctl_lun*, %struct.ctl_lun** %6, align 8
  %176 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %175, i32 0, i32 0
  %177 = call i32 @mtx_unlock(i32* %176)
  br label %178

178:                                              ; preds = %167, %152
  br label %179

179:                                              ; preds = %178, %151, %140
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %121

182:                                              ; preds = %129
  %183 = load %struct.ctl_softc*, %struct.ctl_softc** %4, align 8
  %184 = getelementptr inbounds %struct.ctl_softc, %struct.ctl_softc* %183, i32 0, i32 0
  %185 = call i32 @mtx_unlock(i32* %184)
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = add i64 16, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %15, align 4
  %191 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %192 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %191, i32 0, i32 5
  store i64 0, i64* %192, align 8
  %193 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %194 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %193, i32 0, i32 4
  store i64 0, i64* %194, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @min(i32 %195, i32 %196)
  %198 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %199 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  %200 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %201 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %204 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %15, align 4
  %206 = sub nsw i32 %205, 8
  %207 = load %struct.scsi_report_luns_data*, %struct.scsi_report_luns_data** %9, align 8
  %208 = getelementptr inbounds %struct.scsi_report_luns_data, %struct.scsi_report_luns_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @scsi_ulto4b(i32 %206, i32 %209)
  %211 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %212 = call i32 @ctl_set_success(%struct.ctl_scsiio* %211)
  %213 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %214 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %215 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, %213
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* @ctl_config_move_done, align 4
  %220 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %221 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %223 = bitcast %struct.ctl_scsiio* %222 to %union.ctl_io*
  %224 = call i32 @ctl_datamove(%union.ctl_io* %223)
  %225 = load i32, i32* %13, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %182, %87, %72
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.ctl_softc* @CTL_SOFTC(%struct.ctl_scsiio*) #1

declare dso_local %struct.ctl_port* @CTL_PORT(%struct.ctl_scsiio*) #1

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @ctl_lun_map_from_port(%struct.ctl_port*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @be64enc(i32, i32) #1

declare dso_local i32 @ctl_encode_lun(i32) #1

declare dso_local i32 @ctl_clr_ua(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
