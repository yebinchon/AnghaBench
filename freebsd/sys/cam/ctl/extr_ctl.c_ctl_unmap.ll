; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, i32, %struct.TYPE_6__, i64, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.ctl_lun = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.scsi_unmap = type { i32, i32 }
%struct.ctl_ptr_len_flags = type { i32, i32, i8* }
%struct.scsi_unmap_header = type { i32, i32 }
%struct.scsi_unmap_desc = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ctl_unmap\0A\00", align 1
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_unmap(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_unmap*, align 8
  %6 = alloca %struct.ctl_ptr_len_flags*, align 8
  %7 = alloca %struct.scsi_unmap_header*, align 8
  %8 = alloca %struct.scsi_unmap_desc*, align 8
  %9 = alloca %struct.scsi_unmap_desc*, align 8
  %10 = alloca %struct.scsi_unmap_desc*, align 8
  %11 = alloca %struct.scsi_unmap_desc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %18 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %17)
  store %struct.ctl_lun* %18, %struct.ctl_lun** %4, align 8
  %19 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.scsi_unmap*
  store %struct.scsi_unmap* %23, %struct.scsi_unmap** %5, align 8
  %24 = load %struct.scsi_unmap*, %struct.scsi_unmap** %5, align 8
  %25 = getelementptr inbounds %struct.scsi_unmap, %struct.scsi_unmap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scsi_2btoul(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.scsi_unmap*, %struct.scsi_unmap** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_unmap, %struct.scsi_unmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %1
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @M_CTL, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i64 @malloc(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %47 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %51, i32 0, i32 7
  store i64 0, i64* %52, align 8
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %54 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %53, i32 0, i32 6
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %56 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %57 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @ctl_config_move_done, align 4
  %62 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %65 = bitcast %struct.ctl_scsiio* %64 to %union.ctl_io*
  %66 = call i32 @ctl_datamove(%union.ctl_io* %65)
  %67 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %67, i32* %2, align 4
  br label %262

68:                                               ; preds = %1
  %69 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %70 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %73 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %71, %74
  store i32 %75, i32* %14, align 4
  %76 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %77 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.scsi_unmap_header*
  store %struct.scsi_unmap_header* %79, %struct.scsi_unmap_header** %7, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %81, 8
  br i1 %82, label %111, label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.scsi_unmap_header*, %struct.scsi_unmap_header** %7, align 8
  %87 = getelementptr inbounds %struct.scsi_unmap_header, %struct.scsi_unmap_header* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @scsi_2btoul(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, 4
  %92 = icmp ult i64 %85, %91
  br i1 %92, label %111, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.scsi_unmap_header*, %struct.scsi_unmap_header** %7, align 8
  %97 = getelementptr inbounds %struct.scsi_unmap_header, %struct.scsi_unmap_header* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @scsi_2btoul(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 8
  %102 = icmp ult i64 %95, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %93
  %104 = load %struct.scsi_unmap_header*, %struct.scsi_unmap_header** %7, align 8
  %105 = getelementptr inbounds %struct.scsi_unmap_header, %struct.scsi_unmap_header* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @scsi_2btoul(i32 %106)
  %108 = sext i32 %107 to i64
  %109 = urem i64 %108, 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103, %93, %83, %68
  %112 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %113 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %112, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %236

114:                                              ; preds = %103
  %115 = load %struct.scsi_unmap_header*, %struct.scsi_unmap_header** %7, align 8
  %116 = getelementptr inbounds %struct.scsi_unmap_header, %struct.scsi_unmap_header* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @scsi_2btoul(i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load %struct.scsi_unmap_header*, %struct.scsi_unmap_header** %7, align 8
  %120 = getelementptr inbounds %struct.scsi_unmap_header, %struct.scsi_unmap_header* %119, i64 1
  %121 = bitcast %struct.scsi_unmap_header* %120 to %struct.scsi_unmap_desc*
  store %struct.scsi_unmap_desc* %121, %struct.scsi_unmap_desc** %8, align 8
  %122 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = udiv i64 %124, 8
  %126 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %122, i64 %125
  store %struct.scsi_unmap_desc* %126, %struct.scsi_unmap_desc** %9, align 8
  %127 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  store %struct.scsi_unmap_desc* %127, %struct.scsi_unmap_desc** %10, align 8
  %128 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  store %struct.scsi_unmap_desc* %128, %struct.scsi_unmap_desc** %11, align 8
  br label %129

129:                                              ; preds = %180, %114
  %130 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %131 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %9, align 8
  %132 = icmp ult %struct.scsi_unmap_desc* %130, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %129
  %134 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %135 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @scsi_8btou64(i32 %136)
  store i64 %137, i64* %12, align 8
  %138 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %139 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @scsi_4btoul(i32 %140)
  store i64 %141, i64* %13, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = add nsw i64 %142, %143
  %145 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %146 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  %151 = icmp sgt i64 %144, %150
  br i1 %151, label %158, label %152

152:                                              ; preds = %133
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %13, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %12, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %152, %133
  %159 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %160 = load i64, i64* %12, align 8
  %161 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %162 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  %167 = call i32 @MAX(i64 %160, i64 %166)
  %168 = call i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio* %159, i32 %167)
  %169 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %170 = bitcast %struct.ctl_scsiio* %169 to %union.ctl_io*
  %171 = call i32 @ctl_done(%union.ctl_io* %170)
  %172 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %172, i32* %2, align 4
  br label %262

173:                                              ; preds = %152
  %174 = load i64, i64* %13, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %178 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %177, i64 1
  store %struct.scsi_unmap_desc* %178, %struct.scsi_unmap_desc** %10, align 8
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %11, align 8
  %182 = getelementptr inbounds %struct.scsi_unmap_desc, %struct.scsi_unmap_desc* %181, i32 1
  store %struct.scsi_unmap_desc* %182, %struct.scsi_unmap_desc** %11, align 8
  br label %129

183:                                              ; preds = %129
  %184 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %10, align 8
  %185 = bitcast %struct.scsi_unmap_desc* %184 to i32*
  %186 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  %187 = bitcast %struct.scsi_unmap_desc* %186 to i32*
  %188 = ptrtoint i32* %185 to i64
  %189 = ptrtoint i32* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %183
  %196 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %197 = call i32 @ctl_set_success(%struct.ctl_scsiio* %196)
  br label %236

198:                                              ; preds = %183
  %199 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %200 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %199, i32 0, i32 1
  %201 = call i32 @mtx_lock(i32* %200)
  %202 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %203 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = bitcast i32* %207 to %struct.ctl_ptr_len_flags*
  store %struct.ctl_ptr_len_flags* %208, %struct.ctl_ptr_len_flags** %6, align 8
  %209 = load %struct.scsi_unmap_desc*, %struct.scsi_unmap_desc** %8, align 8
  %210 = bitcast %struct.scsi_unmap_desc* %209 to i8*
  %211 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %212 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %211, i32 0, i32 2
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %215 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %16, align 4
  %217 = load %struct.ctl_ptr_len_flags*, %struct.ctl_ptr_len_flags** %6, align 8
  %218 = getelementptr inbounds %struct.ctl_ptr_len_flags, %struct.ctl_ptr_len_flags* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 4
  %219 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %220 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %221 = bitcast %struct.ctl_scsiio* %220 to %union.ctl_io*
  %222 = load i32, i32* @FALSE, align 4
  %223 = call i32 @ctl_try_unblock_others(%struct.ctl_lun* %219, %union.ctl_io* %221, i32 %222)
  %224 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %225 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %224, i32 0, i32 1
  %226 = call i32 @mtx_unlock(i32* %225)
  %227 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %228 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %227, i32 0, i32 0
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %230, align 8
  %232 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %233 = bitcast %struct.ctl_scsiio* %232 to %union.ctl_io*
  %234 = call i32 %231(%union.ctl_io* %233)
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %15, align 4
  store i32 %235, i32* %2, align 4
  br label %262

236:                                              ; preds = %195, %111
  %237 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %238 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %236
  %245 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %246 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* @M_CTL, align 4
  %249 = call i32 @free(i64 %247, i32 %248)
  %250 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %253 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %251
  store i32 %256, i32* %254, align 8
  br label %257

257:                                              ; preds = %244, %236
  %258 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %259 = bitcast %struct.ctl_scsiio* %258 to %union.ctl_io*
  %260 = call i32 @ctl_done(%union.ctl_io* %259)
  %261 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %257, %198, %158, %38
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio*, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ctl_try_unblock_others(%struct.ctl_lun*, %union.ctl_io*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
