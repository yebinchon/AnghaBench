; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_supported_opcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_report_supported_opcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_cmd_entry = type { i32, i32, i64, i32 }
%struct.ctl_scsiio = type { i32, %struct.TYPE_3__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_report_supported_opcodes = type { i32, i32, i32, i32 }
%struct.scsi_report_supported_opcodes_all = type { i32, %struct.scsi_report_supported_opcodes_descr* }
%struct.scsi_report_supported_opcodes_descr = type { i32, i32, i32, i32 }
%struct.scsi_report_supported_opcodes_one = type { i32, i32*, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ctl_report_supported_opcodes\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@RSO_OPTIONS_MASK = common dso_local global i32 0, align 4
@ctl_cmd_table = common dso_local global %struct.ctl_cmd_entry* null, align 8
@CTL_CMD_FLAG_SA5 = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RSO_SERVACTV = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_report_supported_opcodes(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_report_supported_opcodes*, align 8
  %6 = alloca %struct.ctl_cmd_entry*, align 8
  %7 = alloca %struct.ctl_cmd_entry*, align 8
  %8 = alloca %struct.scsi_report_supported_opcodes_all*, align 8
  %9 = alloca %struct.scsi_report_supported_opcodes_descr*, align 8
  %10 = alloca %struct.scsi_report_supported_opcodes_one*, align 8
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
  %20 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %19)
  store %struct.ctl_lun* %20, %struct.ctl_lun** %4, align 8
  %21 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 7
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.scsi_report_supported_opcodes*
  store %struct.scsi_report_supported_opcodes* %25, %struct.scsi_report_supported_opcodes** %5, align 8
  %26 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.scsi_report_supported_opcodes*, %struct.scsi_report_supported_opcodes** %5, align 8
  %28 = getelementptr inbounds %struct.scsi_report_supported_opcodes, %struct.scsi_report_supported_opcodes* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.scsi_report_supported_opcodes*, %struct.scsi_report_supported_opcodes** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_report_supported_opcodes, %struct.scsi_report_supported_opcodes* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @scsi_2btoul(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.scsi_report_supported_opcodes*, %struct.scsi_report_supported_opcodes** %5, align 8
  %35 = getelementptr inbounds %struct.scsi_report_supported_opcodes, %struct.scsi_report_supported_opcodes* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RSO_OPTIONS_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %145 [
    i32 131, label %39
    i32 130, label %105
    i32 128, label %123
    i32 129, label %144
  ]

39:                                               ; preds = %1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %96, %39
  %41 = load i32, i32* %16, align 4
  %42 = icmp slt i32 %41, 256
  br i1 %42, label %43, label %99

43:                                               ; preds = %40
  %44 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %44, i64 %46
  store %struct.ctl_cmd_entry* %47, %struct.ctl_cmd_entry** %6, align 8
  %48 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %49 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %43
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %17, align 4
  %57 = icmp slt i32 %56, 32
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %60 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.ctl_cmd_entry*
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %62, i64 %64
  store %struct.ctl_cmd_entry* %65, %struct.ctl_cmd_entry** %7, align 8
  %66 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %67 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %7, align 8
  %72 = call i32 @ctl_cmd_applicable(i32 %70, %struct.ctl_cmd_entry* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %74, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %55

81:                                               ; preds = %55
  br label %95

82:                                               ; preds = %43
  %83 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %84 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %89 = call i32 @ctl_cmd_applicable(i32 %87, %struct.ctl_cmd_entry* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %91, %82
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %40

99:                                               ; preds = %40
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 16
  %103 = add i64 16, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %13, align 4
  br label %152

105:                                              ; preds = %1
  %106 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %106, i64 %108
  %110 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %117 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %116, i32 1, i32 1, i32 2, i32 1, i32 2)
  %118 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %119 = bitcast %struct.ctl_scsiio* %118 to %union.ctl_io*
  %120 = call i32 @ctl_done(%union.ctl_io* %119)
  %121 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %121, i32* %2, align 4
  br label %413

122:                                              ; preds = %105
  store i32 56, i32* %13, align 4
  br label %152

123:                                              ; preds = %1
  %124 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %124, i64 %126
  %128 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %131 = and i32 %129, %130
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %123
  %134 = load i32, i32* %15, align 4
  %135 = icmp sge i32 %134, 32
  br i1 %135, label %136, label %143

136:                                              ; preds = %133, %123
  %137 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %138 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %137, i32 1, i32 1, i32 2, i32 1, i32 2)
  %139 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %140 = bitcast %struct.ctl_scsiio* %139 to %union.ctl_io*
  %141 = call i32 @ctl_done(%union.ctl_io* %140)
  %142 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %142, i32* %2, align 4
  br label %413

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %1, %143
  store i32 56, i32* %13, align 4
  br label %152

145:                                              ; preds = %1
  %146 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %147 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %146, i32 1, i32 1, i32 2, i32 1, i32 2)
  %148 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %149 = bitcast %struct.ctl_scsiio* %148 to %union.ctl_io*
  %150 = call i32 @ctl_done(%union.ctl_io* %149)
  %151 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %151, i32* %2, align 4
  br label %413

152:                                              ; preds = %144, %122, %99
  %153 = load %struct.scsi_report_supported_opcodes*, %struct.scsi_report_supported_opcodes** %5, align 8
  %154 = getelementptr inbounds %struct.scsi_report_supported_opcodes, %struct.scsi_report_supported_opcodes* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @scsi_4btoul(i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @M_CTL, align 4
  %159 = load i32, i32* @M_WAITOK, align 4
  %160 = load i32, i32* @M_ZERO, align 4
  %161 = or i32 %159, %160
  %162 = call i64 @malloc(i32 %157, i32 %158, i32 %161)
  %163 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %164 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %163, i32 0, i32 2
  store i64 %162, i64* %164, align 8
  %165 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %166 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %165, i32 0, i32 6
  store i64 0, i64* %166, align 8
  %167 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %168 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %167, i32 0, i32 5
  store i64 0, i64* %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @min(i32 %169, i32 %170)
  %172 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %173 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %175 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %178 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 4
  %179 = load %struct.scsi_report_supported_opcodes*, %struct.scsi_report_supported_opcodes** %5, align 8
  %180 = getelementptr inbounds %struct.scsi_report_supported_opcodes, %struct.scsi_report_supported_opcodes* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RSO_OPTIONS_MASK, align 4
  %183 = and i32 %181, %182
  switch i32 %183, label %397 [
    i32 131, label %184
    i32 130, label %301
    i32 128, label %310
    i32 129, label %366
  ]

184:                                              ; preds = %152
  %185 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %186 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = inttoptr i64 %187 to %struct.scsi_report_supported_opcodes_all*
  store %struct.scsi_report_supported_opcodes_all* %188, %struct.scsi_report_supported_opcodes_all** %8, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %289, %184
  %190 = load i32, i32* %16, align 4
  %191 = icmp slt i32 %190, 256
  br i1 %191, label %192, label %292

192:                                              ; preds = %189
  %193 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %193, i64 %195
  store %struct.ctl_cmd_entry* %196, %struct.ctl_cmd_entry** %6, align 8
  %197 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %198 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %254

203:                                              ; preds = %192
  store i32 0, i32* %17, align 4
  br label %204

204:                                              ; preds = %250, %203
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %205, 32
  br i1 %206, label %207, label %253

207:                                              ; preds = %204
  %208 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %209 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to %struct.ctl_cmd_entry*
  %212 = load i32, i32* %17, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %211, i64 %213
  store %struct.ctl_cmd_entry* %214, %struct.ctl_cmd_entry** %7, align 8
  %215 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %216 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %215, i32 0, i32 0
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %7, align 8
  %221 = call i32 @ctl_cmd_applicable(i32 %219, %struct.ctl_cmd_entry* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %207
  br label %250

224:                                              ; preds = %207
  %225 = load %struct.scsi_report_supported_opcodes_all*, %struct.scsi_report_supported_opcodes_all** %8, align 8
  %226 = getelementptr inbounds %struct.scsi_report_supported_opcodes_all, %struct.scsi_report_supported_opcodes_all* %225, i32 0, i32 1
  %227 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %18, align 4
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %227, i64 %230
  store %struct.scsi_report_supported_opcodes_descr* %231, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %234 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %237 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @scsi_ulto2b(i32 %235, i32 %238)
  %240 = load i32, i32* @RSO_SERVACTV, align 4
  %241 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %242 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 4
  %243 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %7, align 8
  %244 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %247 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @scsi_ulto2b(i32 %245, i32 %248)
  br label %250

250:                                              ; preds = %224, %223
  %251 = load i32, i32* %17, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %204

253:                                              ; preds = %204
  br label %288

254:                                              ; preds = %192
  %255 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %256 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %255, i32 0, i32 0
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %261 = call i32 @ctl_cmd_applicable(i32 %259, %struct.ctl_cmd_entry* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %254
  br label %289

264:                                              ; preds = %254
  %265 = load %struct.scsi_report_supported_opcodes_all*, %struct.scsi_report_supported_opcodes_all** %8, align 8
  %266 = getelementptr inbounds %struct.scsi_report_supported_opcodes_all, %struct.scsi_report_supported_opcodes_all* %265, i32 0, i32 1
  %267 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %266, align 8
  %268 = load i32, i32* %18, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %18, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %267, i64 %270
  store %struct.scsi_report_supported_opcodes_descr* %271, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %272 = load i32, i32* %16, align 4
  %273 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %274 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 4
  %275 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %276 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @scsi_ulto2b(i32 0, i32 %277)
  %279 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %280 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %279, i32 0, i32 2
  store i32 0, i32* %280, align 4
  %281 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %282 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.scsi_report_supported_opcodes_descr*, %struct.scsi_report_supported_opcodes_descr** %9, align 8
  %285 = getelementptr inbounds %struct.scsi_report_supported_opcodes_descr, %struct.scsi_report_supported_opcodes_descr* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @scsi_ulto2b(i32 %283, i32 %286)
  br label %288

288:                                              ; preds = %264, %253
  br label %289

289:                                              ; preds = %288, %263
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %16, align 4
  br label %189

292:                                              ; preds = %189
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = mul i64 %294, 16
  %296 = trunc i64 %295 to i32
  %297 = load %struct.scsi_report_supported_opcodes_all*, %struct.scsi_report_supported_opcodes_all** %8, align 8
  %298 = getelementptr inbounds %struct.scsi_report_supported_opcodes_all, %struct.scsi_report_supported_opcodes_all* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @scsi_ulto4b(i32 %296, i32 %299)
  br label %397

301:                                              ; preds = %152
  %302 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %303 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = inttoptr i64 %304 to %struct.scsi_report_supported_opcodes_one*
  store %struct.scsi_report_supported_opcodes_one* %305, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %306 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %306, i64 %308
  store %struct.ctl_cmd_entry* %309, %struct.ctl_cmd_entry** %6, align 8
  br label %326

310:                                              ; preds = %152
  %311 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %312 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = inttoptr i64 %313 to %struct.scsi_report_supported_opcodes_one*
  store %struct.scsi_report_supported_opcodes_one* %314, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %315 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %316 = load i32, i32* %14, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %315, i64 %317
  store %struct.ctl_cmd_entry* %318, %struct.ctl_cmd_entry** %6, align 8
  %319 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %320 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = inttoptr i64 %321 to %struct.ctl_cmd_entry*
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %322, i64 %324
  store %struct.ctl_cmd_entry* %325, %struct.ctl_cmd_entry** %6, align 8
  br label %326

326:                                              ; preds = %396, %310, %301
  %327 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %328 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %327, i32 0, i32 0
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %333 = call i32 @ctl_cmd_applicable(i32 %331, %struct.ctl_cmd_entry* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %362

335:                                              ; preds = %326
  %336 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %337 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %336, i32 0, i32 0
  store i32 3, i32* %337, align 8
  %338 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %339 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %342 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @scsi_ulto2b(i32 %340, i32 %343)
  %345 = load i32, i32* %14, align 4
  %346 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %347 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  store i32 %345, i32* %349, align 4
  %350 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %351 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 1
  %354 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %355 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %358 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = sub nsw i32 %359, 1
  %361 = call i32 @memcpy(i32* %353, i32 %356, i32 %360)
  br label %365

362:                                              ; preds = %326
  %363 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %364 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %363, i32 0, i32 0
  store i32 1, i32* %364, align 8
  br label %365

365:                                              ; preds = %362, %335
  br label %397

366:                                              ; preds = %152
  %367 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %368 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = inttoptr i64 %369 to %struct.scsi_report_supported_opcodes_one*
  store %struct.scsi_report_supported_opcodes_one* %370, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %371 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** @ctl_cmd_table, align 8
  %372 = load i32, i32* %14, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %371, i64 %373
  store %struct.ctl_cmd_entry* %374, %struct.ctl_cmd_entry** %6, align 8
  %375 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %376 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @CTL_CMD_FLAG_SA5, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %389

381:                                              ; preds = %366
  %382 = load %struct.ctl_cmd_entry*, %struct.ctl_cmd_entry** %6, align 8
  %383 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = inttoptr i64 %384 to %struct.ctl_cmd_entry*
  %386 = load i32, i32* %15, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds %struct.ctl_cmd_entry, %struct.ctl_cmd_entry* %385, i64 %387
  store %struct.ctl_cmd_entry* %388, %struct.ctl_cmd_entry** %6, align 8
  br label %396

389:                                              ; preds = %366
  %390 = load i32, i32* %15, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %389
  %393 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %10, align 8
  %394 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %393, i32 0, i32 0
  store i32 1, i32* %394, align 8
  br label %397

395:                                              ; preds = %389
  br label %396

396:                                              ; preds = %395, %381
  br label %326

397:                                              ; preds = %152, %392, %365, %292
  %398 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %399 = call i32 @ctl_set_success(%struct.ctl_scsiio* %398)
  %400 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %401 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %402 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %404, %400
  store i32 %405, i32* %403, align 4
  %406 = load i32, i32* @ctl_config_move_done, align 4
  %407 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %408 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 8
  %409 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %410 = bitcast %struct.ctl_scsiio* %409 to %union.ctl_io*
  %411 = call i32 @ctl_datamove(%union.ctl_io* %410)
  %412 = load i32, i32* %11, align 4
  store i32 %412, i32* %2, align 4
  br label %413

413:                                              ; preds = %397, %145, %136, %115
  %414 = load i32, i32* %2, align 4
  ret i32 %414
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @ctl_cmd_applicable(i32, %struct.ctl_cmd_entry*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
