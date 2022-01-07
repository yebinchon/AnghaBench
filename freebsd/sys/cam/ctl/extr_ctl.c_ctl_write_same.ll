; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32*, i32, i32, %struct.TYPE_5__, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.ctl_lun = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.ctl_lba_len_flags = type { i32, i32, i64 }
%struct.scsi_write_same_10 = type { i32, i32, i32 }
%struct.scsi_write_same_16 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ctl_write_same\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@SWS_UNMAP = common dso_local global i32 0, align 4
@SWS_ANCHOR = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"write_same_max_lba\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@CTL_FLAG_IO_CONT = common dso_local global i32 0, align 4
@ctl_write_same_cont = common dso_local global i32 0, align 4
@SWS_NDOB = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_write_same(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.ctl_lba_len_flags*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_write_same_10*, align 8
  %14 = alloca %struct.scsi_write_same_16*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %15 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %16 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %15)
  store %struct.ctl_lun* %16, %struct.ctl_lun** %4, align 8
  %17 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %57 [
    i32 129, label %23
    i32 128, label %40
  ]

23:                                               ; preds = %1
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.scsi_write_same_10*
  store %struct.scsi_write_same_10* %27, %struct.scsi_write_same_10** %13, align 8
  %28 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %13, align 8
  %29 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @scsi_4btoul(i32 %30)
  %32 = ptrtoint i8* %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %13, align 8
  %34 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @scsi_2btoul(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.scsi_write_same_10*, %struct.scsi_write_same_10** %13, align 8
  %38 = getelementptr inbounds %struct.scsi_write_same_10, %struct.scsi_write_same_10* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  br label %64

40:                                               ; preds = %1
  %41 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = bitcast i32* %43 to %struct.scsi_write_same_16*
  store %struct.scsi_write_same_16* %44, %struct.scsi_write_same_16** %14, align 8
  %45 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %14, align 8
  %46 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @scsi_8btou64(i32 %47)
  store i64 %48, i64* %7, align 8
  %49 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %14, align 8
  %50 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @scsi_4btoul(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.scsi_write_same_16*, %struct.scsi_write_same_16** %14, align 8
  %55 = getelementptr inbounds %struct.scsi_write_same_16, %struct.scsi_write_same_16* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %1
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %59 = call i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio* %58)
  %60 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %61 = bitcast %struct.ctl_scsiio* %60 to %union.ctl_io*
  %62 = call i32 @ctl_done(%union.ctl_io* %61)
  %63 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %63, i32* %2, align 4
  br label %263

64:                                               ; preds = %40, %23
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SWS_UNMAP, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @SWS_ANCHOR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %76 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %75, i32 1, i32 1, i32 1, i32 1, i32 0)
  %77 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %78 = bitcast %struct.ctl_scsiio* %77 to %union.ctl_io*
  %79 = call i32 @ctl_done(%union.ctl_io* %78)
  %80 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %80, i32* %2, align 4
  br label %263

81:                                               ; preds = %69, %64
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %87 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = icmp sgt i64 %85, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %81
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load i64, i64* %7, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %93, %81
  %101 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %104 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @MAX(i64 %102, i64 %108)
  %110 = call i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio* %101, i32 %109)
  %111 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %112 = bitcast %struct.ctl_scsiio* %111 to %union.ctl_io*
  %113 = call i32 @ctl_done(%union.ctl_io* %112)
  %114 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %114, i32* %2, align 4
  br label %263

115:                                              ; preds = %93
  %116 = load i32, i32* %9, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %189

118:                                              ; preds = %115
  %119 = load i64, i64* @UINT64_MAX, align 8
  store i64 %119, i64* %8, align 8
  %120 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %121 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @dnvlist_get_string(i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %125, i8** %6, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 @ctl_expand_number(i8* %129, i64* %8)
  br label %131

131:                                              ; preds = %128, %118
  %132 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %133 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = load i64, i64* %7, align 8
  %139 = sub nsw i64 %137, %138
  %140 = load i64, i64* %8, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %131
  %143 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %144 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %145 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 129
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 7, i32 10
  %152 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %143, i32 1, i32 1, i32 %151, i32 0, i32 0)
  %153 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %154 = bitcast %struct.ctl_scsiio* %153 to %union.ctl_io*
  %155 = call i32 @ctl_done(%union.ctl_io* %154)
  %156 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %156, i32* %2, align 4
  br label %263

157:                                              ; preds = %131
  %158 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %159 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %158, i32 0, i32 1
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = load i64, i64* %7, align 8
  %165 = sub nsw i64 %163, %164
  %166 = load i64, i64* @UINT32_MAX, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %157
  %169 = load i32, i32* @CTL_FLAG_IO_CONT, align 4
  %170 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %171 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %169
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* @ctl_write_same_cont, align 4
  %176 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %177 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 4
  store i32 -2147483648, i32* %9, align 4
  br label %188

178:                                              ; preds = %157
  %179 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %180 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %179, i32 0, i32 1
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 1
  %185 = load i64, i64* %7, align 8
  %186 = sub nsw i64 %184, %185
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %178, %168
  br label %189

189:                                              ; preds = %188, %115
  %190 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %191 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @SWS_NDOB, align 4
  %197 = and i32 %195, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %237

199:                                              ; preds = %189
  %200 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %201 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %237

207:                                              ; preds = %199
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @M_CTL, align 4
  %210 = load i32, i32* @M_WAITOK, align 4
  %211 = call i32 @malloc(i32 %208, i32 %209, i32 %210)
  %212 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %213 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %212, i32 0, i32 7
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %216 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %219 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %221 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %220, i32 0, i32 6
  store i64 0, i64* %221, align 8
  %222 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %223 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %222, i32 0, i32 5
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %225 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %226 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %224
  store i32 %229, i32* %227, align 8
  %230 = load i32, i32* @ctl_config_move_done, align 4
  %231 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %232 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 8
  %233 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %234 = bitcast %struct.ctl_scsiio* %233 to %union.ctl_io*
  %235 = call i32 @ctl_datamove(%union.ctl_io* %234)
  %236 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %236, i32* %2, align 4
  br label %263

237:                                              ; preds = %199, %189
  %238 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %239 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = bitcast i32* %243 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %244, %struct.ctl_lba_len_flags** %5, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %247 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %250 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load i32, i32* %12, align 4
  %252 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %5, align 8
  %253 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %252, i32 0, i32 1
  store i32 %251, i32* %253, align 4
  %254 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %255 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %254, i32 0, i32 0
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %257, align 8
  %259 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %260 = bitcast %struct.ctl_scsiio* %259 to %union.ctl_io*
  %261 = call i32 %258(%union.ctl_io* %260)
  store i32 %261, i32* %11, align 4
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %237, %207, %142, %100, %74, %57
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i8* @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @ctl_set_invalid_opcode(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @ctl_expand_number(i8*, i64*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
