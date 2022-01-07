; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_read_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cam_periph = type opaque
%union.ccb = type opaque
%struct.scsi_rw_6 = type { i32, i32*, i64, i32 }
%struct.scsi_rw_10 = type { i32*, i32*, i64, i64, i64, i32 }
%struct.scsi_rw_12 = type { i32*, i32*, i64, i64, i64, i32 }
%struct.scsi_rw_16 = type { i64, i32*, i64, i32, i64, i32 }
%struct.cam_periph.0 = type opaque
%union.ccb.1 = type opaque

@SCSI_RW_DIRMASK = common dso_local global i32 0, align 4
@SCSI_RW_READ = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i32 0, align 4
@WRITE_6 = common dso_local global i32 0, align 4
@CAM_DEBUG_SUBTRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"6byte: %x%x%x:%d:%d\0A\00", align 1
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"10byte: %x%x%x%x:%x%x: %d\0A\00", align 1
@READ_12 = common dso_local global i32 0, align 4
@WRITE_12 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"12byte: %x%x%x%x:%x%x%x%x: %d\0A\00", align 1
@READ_16 = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@SCSI_RW_BIO = common dso_local global i32 0, align 4
@CAM_DATA_BIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_read_write(%struct.ccb_scsiio* %0, i32 %1, void (%struct.cam_periph*, %union.ccb*)* %2, i64 %3, i32 %4, i64 %5, i32 %6, i32 %7, i32 %8, i64* %9, i32 %10, i64 %11, i32 %12) #0 {
  %14 = alloca %struct.ccb_scsiio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca void (%struct.cam_periph*, %union.ccb*)*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.scsi_rw_6*, align 8
  %30 = alloca %struct.scsi_rw_10*, align 8
  %31 = alloca %struct.scsi_rw_12*, align 8
  %32 = alloca %struct.scsi_rw_16*, align 8
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %14, align 8
  store i32 %1, i32* %15, align 4
  store void (%struct.cam_periph*, %union.ccb*)* %2, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  store i64 %3, i64* %17, align 8
  store i32 %4, i32* %18, align 4
  store i64 %5, i64* %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i64* %9, i64** %23, align 8
  store i32 %10, i32* %24, align 4
  store i64 %11, i64* %25, align 8
  store i32 %12, i32* %26, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* @SCSI_RW_DIRMASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SCSI_RW_READ, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %27, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp slt i32 %39, 10
  br i1 %40, label %41, label %107

41:                                               ; preds = %13
  %42 = load i32, i32* %21, align 4
  %43 = and i32 %42, 2097151
  %44 = load i32, i32* %21, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = load i32, i32* %22, align 4
  %48 = and i32 %47, 255
  %49 = load i32, i32* %22, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %46
  %52 = load i64, i64* %19, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %51
  %55 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %56 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to %struct.scsi_rw_6*
  store %struct.scsi_rw_6* %58, %struct.scsi_rw_6** %29, align 8
  %59 = load i32, i32* %27, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @READ_6, align 4
  br label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @WRITE_6, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %68 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %71 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @scsi_ulto3b(i32 %69, i32* %72)
  %74 = load i32, i32* %22, align 4
  %75 = and i32 %74, 255
  %76 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %77 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %79 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  store i64 32, i64* %28, align 8
  %80 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %81 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %85 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %86 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %91 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %96 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.scsi_rw_6*, %struct.scsi_rw_6** %29, align 8
  %101 = getelementptr inbounds %struct.scsi_rw_6, %struct.scsi_rw_6* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %24, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = call i32 @CAM_DEBUG(i32 %83, i32 %84, i8* %105)
  br label %316

107:                                              ; preds = %51, %46, %41, %13
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %108, 12
  br i1 %109, label %110, label %190

110:                                              ; preds = %107
  %111 = load i32, i32* %22, align 4
  %112 = and i32 %111, 65535
  %113 = load i32, i32* %22, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %190

115:                                              ; preds = %110
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %21, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %115
  %120 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %121 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = bitcast i32* %122 to %struct.scsi_rw_10*
  store %struct.scsi_rw_10* %123, %struct.scsi_rw_10** %30, align 8
  %124 = load i32, i32* %27, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @READ_10, align 4
  br label %130

128:                                              ; preds = %119
  %129 = load i32, i32* @WRITE_10, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i32 [ %127, %126 ], [ %129, %128 ]
  %132 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %133 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %136 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %135, i32 0, i32 4
  store i64 %134, i64* %136, align 8
  %137 = load i32, i32* %21, align 4
  %138 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %139 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @scsi_ulto4b(i32 %137, i32* %140)
  %142 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %143 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load i32, i32* %22, align 4
  %145 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %146 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @scsi_ulto2b(i32 %144, i32* %147)
  %149 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %150 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  store i64 48, i64* %28, align 8
  %151 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %152 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %156 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %157 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %162 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %167 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %172 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %177 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.scsi_rw_10*, %struct.scsi_rw_10** %30, align 8
  %182 = getelementptr inbounds %struct.scsi_rw_10, %struct.scsi_rw_10* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %24, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = call i32 @CAM_DEBUG(i32 %154, i32 %155, i8* %188)
  br label %315

190:                                              ; preds = %115, %110, %107
  %191 = load i32, i32* %20, align 4
  %192 = icmp slt i32 %191, 16
  br i1 %192, label %193, label %282

193:                                              ; preds = %190
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %22, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %282

197:                                              ; preds = %193
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %282

201:                                              ; preds = %197
  %202 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %203 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = bitcast i32* %204 to %struct.scsi_rw_12*
  store %struct.scsi_rw_12* %205, %struct.scsi_rw_12** %31, align 8
  %206 = load i32, i32* %27, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* @READ_12, align 4
  br label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @WRITE_12, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %215 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %214, i32 0, i32 5
  store i32 %213, i32* %215, align 8
  %216 = load i64, i64* %19, align 8
  %217 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %218 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  %219 = load i32, i32* %21, align 4
  %220 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %221 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @scsi_ulto4b(i32 %219, i32* %222)
  %224 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %225 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %224, i32 0, i32 3
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* %22, align 4
  %227 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %228 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @scsi_ulto4b(i32 %226, i32* %229)
  %231 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %232 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %231, i32 0, i32 2
  store i64 0, i64* %232, align 8
  store i64 48, i64* %28, align 8
  %233 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %234 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @CAM_DEBUG_SUBTRACE, align 4
  %238 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %239 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %244 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %249 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %248, i32 0, i32 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %254 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %259 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %264 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 1
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %269 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.scsi_rw_12*, %struct.scsi_rw_12** %31, align 8
  %274 = getelementptr inbounds %struct.scsi_rw_12, %struct.scsi_rw_12* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %24, align 4
  %279 = sext i32 %278 to i64
  %280 = inttoptr i64 %279 to i8*
  %281 = call i32 @CAM_DEBUG(i32 %236, i32 %237, i8* %280)
  br label %314

282:                                              ; preds = %197, %193, %190
  %283 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %284 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = bitcast i32* %285 to %struct.scsi_rw_16*
  store %struct.scsi_rw_16* %286, %struct.scsi_rw_16** %32, align 8
  %287 = load i32, i32* %27, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %282
  %290 = load i32, i32* @READ_16, align 4
  br label %293

291:                                              ; preds = %282
  %292 = load i32, i32* @WRITE_16, align 4
  br label %293

293:                                              ; preds = %291, %289
  %294 = phi i32 [ %290, %289 ], [ %292, %291 ]
  %295 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %296 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %295, i32 0, i32 5
  store i32 %294, i32* %296, align 8
  %297 = load i64, i64* %19, align 8
  %298 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %299 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %298, i32 0, i32 4
  store i64 %297, i64* %299, align 8
  %300 = load i32, i32* %21, align 4
  %301 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %302 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @scsi_u64to8b(i32 %300, i32 %303)
  %305 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %306 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %305, i32 0, i32 2
  store i64 0, i64* %306, align 8
  %307 = load i32, i32* %22, align 4
  %308 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %309 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = call i32 @scsi_ulto4b(i32 %307, i32* %310)
  %312 = load %struct.scsi_rw_16*, %struct.scsi_rw_16** %32, align 8
  %313 = getelementptr inbounds %struct.scsi_rw_16, %struct.scsi_rw_16* %312, i32 0, i32 0
  store i64 0, i64* %313, align 8
  store i64 48, i64* %28, align 8
  br label %314

314:                                              ; preds = %293, %212
  br label %315

315:                                              ; preds = %314, %130
  br label %316

316:                                              ; preds = %315, %65
  %317 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %14, align 8
  %318 = load i32, i32* %15, align 4
  %319 = load void (%struct.cam_periph*, %union.ccb*)*, void (%struct.cam_periph*, %union.ccb*)** %16, align 8
  %320 = bitcast void (%struct.cam_periph*, %union.ccb*)* %319 to void (%struct.cam_periph.0*, %union.ccb.1*)*
  %321 = load i32, i32* %27, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* @CAM_DIR_IN, align 4
  br label %327

325:                                              ; preds = %316
  %326 = load i32, i32* @CAM_DIR_OUT, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* @SCSI_RW_BIO, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %327
  %334 = load i32, i32* @CAM_DATA_BIO, align 4
  br label %336

335:                                              ; preds = %327
  br label %336

336:                                              ; preds = %335, %333
  %337 = phi i32 [ %334, %333 ], [ 0, %335 ]
  %338 = or i32 %328, %337
  %339 = load i64, i64* %17, align 8
  %340 = load i64*, i64** %23, align 8
  %341 = load i32, i32* %24, align 4
  %342 = load i64, i64* %25, align 8
  %343 = load i64, i64* %28, align 8
  %344 = load i32, i32* %26, align 4
  %345 = call i32 @cam_fill_csio(%struct.ccb_scsiio* %317, i32 %318, void (%struct.cam_periph.0*, %union.ccb.1*)* %320, i32 %338, i64 %339, i64* %340, i32 %341, i64 %342, i64 %343, i32 %344)
  ret void
}

declare dso_local i32 @scsi_ulto3b(i32, i32*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @scsi_ulto4b(i32, i32*) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local i32 @cam_fill_csio(%struct.ccb_scsiio*, i32, void (%struct.cam_periph.0*, %union.ccb.1*)*, i32, i64, i64*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
