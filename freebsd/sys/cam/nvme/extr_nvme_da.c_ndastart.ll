; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndastart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_da.c_ndastart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.bio* }
%struct.bio = type { i32, i32, i32, i32, i32, i32 }
%struct.nda_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ccb_nvmeio = type { i32 }
%struct.nvme_dsm_range = type { i32, i32 }
%struct.nda_trim_request = type { %struct.nvme_dsm_range*, i32 }
%struct.TYPE_4__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ndastart\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ndastart: bio %p\0A\00", align 1
@NDA_FLAG_DIRTY = common dso_local global i32 0, align 4
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Short bio %p\00", align 1
@NVME_OPC_READ = common dso_local global i32 0, align 4
@NVME_OPC_WRITE = common dso_local global i32 0, align 4
@M_NVMEDA = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nda_max_trim_entries = common dso_local global i32 0, align 4
@bio_queue = common dso_local global i32 0, align 4
@NDA_CCB_TRIM = common dso_local global i32 0, align 4
@NDA_CCB_BUFFER_IO = common dso_local global i32 0, align 4
@CAM_UNLOCKED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @ndastart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ndastart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.nda_softc*, align 8
  %6 = alloca %struct.ccb_nvmeio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.nvme_dsm_range*, align 8
  %9 = alloca %struct.nvme_dsm_range*, align 8
  %10 = alloca %struct.nda_trim_request*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %15 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nda_softc*
  store %struct.nda_softc* %18, %struct.nda_softc** %5, align 8
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.ccb_nvmeio*
  store %struct.ccb_nvmeio* %20, %struct.ccb_nvmeio** %6, align 8
  %21 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %22 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %25 = call i32 @CAM_DEBUG(i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %27 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %259 [
    i32 128, label %29
  ]

29:                                               ; preds = %2
  %30 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %31 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.bio* @cam_iosched_next_bio(i32 %32)
  store %struct.bio* %33, %struct.bio** %7, align 8
  %34 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %35 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %38 = load %struct.bio*, %struct.bio** %7, align 8
  %39 = bitcast %struct.bio* %38 to i8*
  %40 = call i32 @CAM_DEBUG(i32 %36, i32 %37, i8* %39)
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = icmp eq %struct.bio* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load %union.ccb*, %union.ccb** %4, align 8
  %45 = call i32 @xpt_release_ccb(%union.ccb* %44)
  br label %259

46:                                               ; preds = %29
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %225 [
    i32 129, label %50
    i32 130, label %56
    i32 132, label %99
    i32 131, label %221
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @NDA_FLAG_DIRTY, align 4
  %52 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %53 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %46, %50
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BIO_UNMAPPED, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %56
  %64 = load %struct.bio*, %struct.bio** %7, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bio*, %struct.bio** %7, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = call i32 @round_page(i32 %70)
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sdiv i32 %71, %72
  %74 = load %struct.bio*, %struct.bio** %7, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br label %78

78:                                               ; preds = %63, %56
  %79 = phi i1 [ true, %56 ], [ %77, %63 ]
  %80 = zext i1 %79 to i32
  %81 = load %struct.bio*, %struct.bio** %7, align 8
  %82 = bitcast %struct.bio* %81 to i8*
  %83 = call i32 @KASSERT(i32 %80, i8* %82)
  %84 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.ccb_nvmeio*
  %87 = load %struct.bio*, %struct.bio** %7, align 8
  %88 = load %struct.bio*, %struct.bio** %7, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 130
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @NVME_OPC_READ, align 4
  br label %96

94:                                               ; preds = %78
  %95 = load i32, i32* @NVME_OPC_WRITE, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @nda_nvme_rw_bio(%struct.nda_softc* %84, %struct.ccb_nvmeio* %86, %struct.bio* %87, i32 %97)
  br label %225

99:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %100 = load i32, i32* @M_NVMEDA, align 4
  %101 = load i32, i32* @M_ZERO, align 4
  %102 = load i32, i32* @M_NOWAIT, align 4
  %103 = or i32 %101, %102
  %104 = call %struct.nda_trim_request* @malloc(i32 16, i32 %100, i32 %103)
  store %struct.nda_trim_request* %104, %struct.nda_trim_request** %10, align 8
  %105 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %106 = icmp eq %struct.nda_trim_request* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.bio*, %struct.bio** %7, align 8
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = call i32 @biofinish(%struct.bio* %108, i32* null, i32 %109)
  %111 = load %union.ccb*, %union.ccb** %4, align 8
  %112 = call i32 @xpt_release_ccb(%union.ccb* %111)
  %113 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %114 = call i32 @ndaschedule(%struct.cam_periph* %113)
  br label %259

115:                                              ; preds = %99
  %116 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %117 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %116, i32 0, i32 1
  %118 = call i32 @TAILQ_INIT(i32* %117)
  %119 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %119, %struct.bio** %11, align 8
  %120 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %121 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %120, i32 0, i32 0
  %122 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %121, align 8
  %123 = call i32 @nitems(%struct.nvme_dsm_range* %122)
  %124 = load i32, i32* @nda_max_trim_entries, align 4
  %125 = call i32 @min(i32 %123, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %127 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %126, i32 0, i32 0
  %128 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %127, align 8
  store %struct.nvme_dsm_range* %128, %struct.nvme_dsm_range** %8, align 8
  %129 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %129, i64 %131
  store %struct.nvme_dsm_range* %132, %struct.nvme_dsm_range** %9, align 8
  br label %133

133:                                              ; preds = %181, %115
  %134 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %135 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %134, i32 0, i32 1
  %136 = load %struct.bio*, %struct.bio** %11, align 8
  %137 = load i32, i32* @bio_queue, align 4
  %138 = call i32 @TAILQ_INSERT_TAIL(i32* %135, %struct.bio* %136, i32 %137)
  %139 = load %struct.bio*, %struct.bio** %11, align 8
  %140 = getelementptr inbounds %struct.bio, %struct.bio* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %143 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %142, i32 0, i32 7
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sdiv i32 %141, %146
  %148 = call i32 @htole32(i32 %147)
  %149 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %150 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = load %struct.bio*, %struct.bio** %11, align 8
  %152 = getelementptr inbounds %struct.bio, %struct.bio* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %155 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %154, i32 0, i32 7
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sdiv i32 %153, %158
  %160 = call i32 @htole64(i32 %159)
  %161 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %162 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %166 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %171 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %170, i32 1
  store %struct.nvme_dsm_range* %171, %struct.nvme_dsm_range** %8, align 8
  %172 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %173 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %9, align 8
  %174 = icmp uge %struct.nvme_dsm_range* %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %133
  br label %184

176:                                              ; preds = %133
  %177 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %178 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call %struct.bio* @cam_iosched_next_trim(i32 %179)
  store %struct.bio* %180, %struct.bio** %11, align 8
  br label %181

181:                                              ; preds = %176
  %182 = load %struct.bio*, %struct.bio** %11, align 8
  %183 = icmp ne %struct.bio* %182, null
  br i1 %183, label %133, label %184

184:                                              ; preds = %181, %175
  %185 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %186 = load %union.ccb*, %union.ccb** %4, align 8
  %187 = bitcast %union.ccb* %186 to %struct.nda_trim_request**
  store %struct.nda_trim_request* %185, %struct.nda_trim_request** %187, align 8
  %188 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %189 = load %union.ccb*, %union.ccb** %4, align 8
  %190 = bitcast %union.ccb* %189 to %struct.ccb_nvmeio*
  %191 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %192 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %191, i32 0, i32 0
  %193 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %192, align 8
  %194 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %195 = load %struct.nda_trim_request*, %struct.nda_trim_request** %10, align 8
  %196 = getelementptr inbounds %struct.nda_trim_request, %struct.nda_trim_request* %195, i32 0, i32 0
  %197 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %196, align 8
  %198 = ptrtoint %struct.nvme_dsm_range* %194 to i64
  %199 = ptrtoint %struct.nvme_dsm_range* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 8
  %202 = inttoptr i64 %201 to %struct.nvme_dsm_range*
  %203 = call i32 @nda_nvme_trim(%struct.nda_softc* %188, %struct.ccb_nvmeio* %190, %struct.nvme_dsm_range* %193, %struct.nvme_dsm_range* %202)
  %204 = load i32, i32* @NDA_CCB_TRIM, align 4
  %205 = load %union.ccb*, %union.ccb** %4, align 8
  %206 = bitcast %union.ccb* %205 to i32*
  store i32 %204, i32* %206, align 8
  %207 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %208 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %14, align 4
  %212 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %213 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, %211
  store i32 %215, i32* %213, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %218 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, %216
  store i32 %220, i32* %218, align 4
  br label %232

221:                                              ; preds = %46
  %222 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %223 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %6, align 8
  %224 = call i32 @nda_nvme_flush(%struct.nda_softc* %222, %struct.ccb_nvmeio* %223)
  br label %225

225:                                              ; preds = %46, %221, %96
  %226 = load i32, i32* @NDA_CCB_BUFFER_IO, align 4
  %227 = load %union.ccb*, %union.ccb** %4, align 8
  %228 = bitcast %union.ccb* %227 to i32*
  store i32 %226, i32* %228, align 8
  %229 = load %struct.bio*, %struct.bio** %7, align 8
  %230 = load %union.ccb*, %union.ccb** %4, align 8
  %231 = bitcast %union.ccb* %230 to %struct.bio**
  store %struct.bio* %229, %struct.bio** %231, align 8
  br label %232

232:                                              ; preds = %225, %184
  %233 = load i32, i32* @CAM_UNLOCKED, align 4
  %234 = load %union.ccb*, %union.ccb** %4, align 8
  %235 = bitcast %union.ccb* %234 to %struct.TYPE_4__*
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %233
  store i32 %238, i32* %236, align 8
  %239 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %240 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %244 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %248 = call i32 @cam_periph_unlock(%struct.cam_periph* %247)
  %249 = load %union.ccb*, %union.ccb** %4, align 8
  %250 = call i32 @xpt_action(%union.ccb* %249)
  %251 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %252 = call i32 @cam_periph_lock(%struct.cam_periph* %251)
  %253 = load %struct.nda_softc*, %struct.nda_softc** %5, align 8
  %254 = getelementptr inbounds %struct.nda_softc, %struct.nda_softc* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %258 = call i32 @ndaschedule(%struct.cam_periph* %257)
  br label %259

259:                                              ; preds = %107, %2, %232, %43
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.bio* @cam_iosched_next_bio(i32) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @nda_nvme_rw_bio(%struct.nda_softc*, %struct.ccb_nvmeio*, %struct.bio*, i32) #1

declare dso_local %struct.nda_trim_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @biofinish(%struct.bio*, i32*, i32) #1

declare dso_local i32 @ndaschedule(%struct.cam_periph*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nitems(%struct.nvme_dsm_range*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.bio*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local %struct.bio* @cam_iosched_next_trim(i32) #1

declare dso_local i32 @nda_nvme_trim(%struct.nda_softc*, %struct.ccb_nvmeio*, %struct.nvme_dsm_range*, %struct.nvme_dsm_range*) #1

declare dso_local i32 @nda_nvme_flush(%struct.nda_softc*, %struct.ccb_nvmeio*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
