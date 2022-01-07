; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_bman_create_portal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_bman_create_portal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.bman_depletion*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.bman_depletion = type { i32 }

@BMAN_PORTAL_FLAG_CACHE = common dso_local global i32 0, align 4
@bm_rcr_pci_commit = common dso_local global i32 0, align 4
@BM_RCR_RING = common dso_local global i64 0, align 8
@bm_rcr_pce_commit = common dso_local global i32 0, align 4
@bm_rcr_pvb_commit = common dso_local global i32 0, align 4
@bm_rcr_cci_update = common dso_local global i32 0, align 4
@bm_rcr_cce_update = common dso_local global i32 0, align 4
@bm_rcr_cce_prefetch = common dso_local global i32* null, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RCR initialization failed\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MC initialization failed\00", align 1
@BM_MAX_NUM_OF_POOLS = common dso_local global i64 0, align 8
@BM_PIRQ_RCRI = common dso_local global i32 0, align 4
@BM_PIRQ_BSCN = common dso_local global i32 0, align 4
@BMAN_PORTAL_FLAG_IRQ = common dso_local global i32 0, align 4
@portal_isr = common dso_local global i32 0, align 4
@BMAN_PORTAL_FLAG_WAIT = common dso_local global i32 0, align 4
@BMAN_PORTAL_FLAG_RECOVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"RCR unclean, need recovery\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, %struct.bman_depletion*)* @bman_create_portal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bman_create_portal(%struct.TYPE_7__* %0, i32 %1, %struct.bman_depletion* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bman_depletion*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bman_depletion* %2, %struct.bman_depletion** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 130, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @BMAN_PORTAL_FLAG_CACHE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 129, i32 128
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %43 [
    i32 131, label %19
    i32 132, label %27
    i32 130, label %35
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* @bm_rcr_pci_commit, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* @BM_RCR_RING, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %20, i32* %26, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load i32, i32* @bm_rcr_pce_commit, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* @BM_RCR_RING, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %28, i32* %34, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load i32, i32* @bm_rcr_pvb_commit, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i64, i64* @BM_RCR_RING, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %3, %35, %27, %19
  %44 = load i32, i32* %10, align 4
  switch i32 %44, label %74 [
    i32 128, label %45
    i32 129, label %59
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @bm_rcr_cci_update, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i64, i64* @BM_RCR_RING, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* @BM_RCR_RING, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %74

59:                                               ; preds = %43
  %60 = load i32, i32* @bm_rcr_cce_update, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* @BM_RCR_RING, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %60, i32* %66, align 8
  %67 = load i32*, i32** @bm_rcr_cce_prefetch, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i64, i64* @BM_RCR_RING, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32* %67, i32** %73, align 8
  br label %74

74:                                               ; preds = %43, %59, %45
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @bm_rcr_init(i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @MAJOR, align 4
  %84 = load i32, i32* @E_INVALID_STATE, align 4
  %85 = call i32 @REPORT_ERROR(i32 %83, i32 %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %217

86:                                               ; preds = %74
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @bm_mc_init(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @MAJOR, align 4
  %94 = load i32, i32* @E_INVALID_STATE, align 4
  %95 = call i32 @REPORT_ERROR(i32 %93, i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %212

96:                                               ; preds = %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 7
  %99 = load %struct.bman_depletion*, %struct.bman_depletion** %98, align 8
  %100 = getelementptr inbounds %struct.bman_depletion, %struct.bman_depletion* %99, i64 0
  %101 = load %struct.bman_depletion*, %struct.bman_depletion** %7, align 8
  %102 = bitcast %struct.bman_depletion* %100 to i8*
  %103 = bitcast %struct.bman_depletion* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 7
  %106 = load %struct.bman_depletion*, %struct.bman_depletion** %105, align 8
  %107 = getelementptr inbounds %struct.bman_depletion, %struct.bman_depletion* %106, i64 1
  %108 = call i32 @bman_depletion_init(%struct.bman_depletion* %107)
  br label %109

109:                                              ; preds = %113, %96
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @BM_MAX_NUM_OF_POOLS, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @bm_isr_bscn_mask(i32 %116, i64 %117, i32 0)
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %9, align 8
  br label %109

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 6
  store i64 0, i64* %126, align 8
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 4
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 5
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = call i32 @memset(i32* %132, i32 0, i32 4)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @bm_isr_disable_write(i32 %136, i32 -1)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @bm_isr_status_clear(i32 %140, i32 -1)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BM_PIRQ_RCRI, align 4
  %146 = load i32, i32* @BM_PIRQ_BSCN, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @bm_isr_enable_write(i32 %144, i32 %147)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @BMAN_PORTAL_FLAG_IRQ, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %121
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @portal_isr, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %159 = call i32 @XX_SetIntr(i32 %156, i32 %157, %struct.TYPE_7__* %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @XX_EnableIntr(i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @bm_isr_uninhibit(i32 %166)
  br label %173

168:                                              ; preds = %121
  %169 = load i32, i32* @BMAN_PORTAL_FLAG_WAIT, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %168, %153
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BM_PIRQ_RCRI, align 4
  %178 = xor i32 %177, -1
  %179 = call i32 @bm_isr_disable_write(i32 %176, i32 %178)
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @BMAN_PORTAL_FLAG_RECOVER, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %173
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @BMAN_PORTAL_FLAG_WAIT, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %184, %173
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @bm_rcr_get_fill(i32 %192)
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %189, %184
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* @MAJOR, align 4
  %199 = load i32, i32* @E_INVALID_STATE, align 4
  %200 = call i32 @REPORT_ERROR(i32 %198, i32 %199, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %207

201:                                              ; preds = %194
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @bm_isr_disable_write(i32 %204, i32 0)
  %206 = load i32, i32* @E_OK, align 4
  store i32 %206, i32* %4, align 4
  br label %222

207:                                              ; preds = %197
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @bm_mc_finish(i32 %210)
  br label %212

212:                                              ; preds = %207, %92
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @bm_rcr_finish(i32 %215)
  br label %217

217:                                              ; preds = %212, %82
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %219 = call i32 @XX_Free(%struct.TYPE_7__* %218)
  %220 = load i32, i32* @E_INVALID_STATE, align 4
  %221 = call i32 @ERROR_CODE(i32 %220)
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %217, %201
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @bm_rcr_init(i32, i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @bm_mc_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bman_depletion_init(%struct.bman_depletion*) #1

declare dso_local i32 @bm_isr_bscn_mask(i32, i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bm_isr_disable_write(i32, i32) #1

declare dso_local i32 @bm_isr_status_clear(i32, i32) #1

declare dso_local i32 @bm_isr_enable_write(i32, i32) #1

declare dso_local i32 @XX_SetIntr(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @XX_EnableIntr(i32) #1

declare dso_local i32 @bm_isr_uninhibit(i32) #1

declare dso_local i32 @bm_rcr_get_fill(i32) #1

declare dso_local i32 @bm_mc_finish(i32) #1

declare dso_local i32 @bm_rcr_finish(i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local i32 @ERROR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
