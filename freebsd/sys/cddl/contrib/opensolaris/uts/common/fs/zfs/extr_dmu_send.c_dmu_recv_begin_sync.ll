; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_begin_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_begin_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i8*, %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_23__*, i64, i32, %struct.drr_begin* }
%struct.TYPE_23__ = type { i32, i32, i32* }
%struct.drr_begin = type { i32, i64, i32, i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32 }

@DRR_FLAG_CI_DATA = common dso_local global i32 0, align 4
@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@recv_clone_name = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@dmu_recv_tag = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_FROMGUID = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_TOGUID = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_TONAME = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_OBJECT = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_OFFSET = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_BYTES = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_LARGEBLOCK = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_EMBED_DATA = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_EMBEDOK = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_COMPRESSED = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_COMPRESSOK = common dso_local global i32 0, align 4
@DS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dmu_recv_begin_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_recv_begin_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drr_begin*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %5, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_22__* @dmu_tx_pool(i32* %23)
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %6, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 4
  %32 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  store %struct.drr_begin* %32, %struct.drr_begin** %8, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %38 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %39 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DRR_FLAG_CI_DATA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %44, %2
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @dsl_dataset_hold(%struct.TYPE_22__* %49, i8* %50, i32 %51, %struct.TYPE_23__** %10)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %48
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_22__* %61, i64 %64, i32 %65, %struct.TYPE_23__** %15)
  %67 = call i32 @VERIFY0(i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @recv_clone_name, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @dsl_dataset_create_sync(i32* %71, i64 %72, %struct.TYPE_23__* %73, i32 %74, i32 %77, i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %68
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %86 = load i32, i32* @FTAG, align 4
  %87 = call i32 @dsl_dataset_rele(%struct.TYPE_23__* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %68
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_dataset_rele(%struct.TYPE_23__* %89, i32 %90)
  br label %137

92:                                               ; preds = %48
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %18, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* @FTAG, align 4
  %96 = call i32 @dsl_dir_hold(%struct.TYPE_22__* %93, i8* %94, i32 %95, i32** %16, i8** %17)
  %97 = call i32 @VERIFY0(i32 %96)
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %92
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @FTAG, align 4
  %108 = call i32 @dsl_dataset_hold(%struct.TYPE_22__* %103, i8* %106, i32 %107, %struct.TYPE_23__** %18)
  %109 = call i32 @VERIFY0(i32 %108)
  br label %110

110:                                              ; preds = %102, %92
  %111 = load i32*, i32** %16, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = call i64 @strrchr(i8* %112, i8 signext 47)
  %114 = add nsw i64 %113, 1
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @dsl_dataset_create_sync(i32* %111, i64 %114, %struct.TYPE_23__* %115, i32 %116, i32 %119, i32* %120)
  store i32 %121, i32* %12, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %123 = icmp ne %struct.TYPE_23__* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %110
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %126 = load i32, i32* @FTAG, align 4
  %127 = call i32 @dsl_dataset_rele(%struct.TYPE_23__* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %110
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* @FTAG, align 4
  %131 = call i32 @dsl_dir_rele(i32* %129, i32 %130)
  %132 = load i32, i32* @B_TRUE, align 4
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 3
  store i32 %132, i32* %136, align 8
  br label %137

137:                                              ; preds = %128, %88
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @dmu_recv_tag, align 4
  %141 = call i32 @dsl_dataset_own_obj(%struct.TYPE_22__* %138, i32 %139, i32 %140, %struct.TYPE_23__** %11)
  %142 = call i32 @VERIFY0(i32 %141)
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %253

149:                                              ; preds = %137
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %151 = load i32*, i32** %4, align 8
  %152 = call i32 @dsl_dataset_zapify(%struct.TYPE_23__* %150, i32* %151)
  %153 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %154 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %149
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @DS_FIELD_RESUME_FROMGUID, align 4
  %161 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %162 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %161, i32 0, i32 1
  %163 = bitcast i64* %162 to i32*
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @zap_add(i32* %158, i32 %159, i32 %160, i32 8, i32 1, i32* %163, i32* %164)
  %166 = call i32 @VERIFY0(i32 %165)
  br label %167

167:                                              ; preds = %157, %149
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @DS_FIELD_RESUME_TOGUID, align 4
  %171 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %172 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %171, i32 0, i32 2
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @zap_add(i32* %168, i32 %169, i32 %170, i32 8, i32 1, i32* %172, i32* %173)
  %175 = call i32 @VERIFY0(i32 %174)
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* @DS_FIELD_RESUME_TONAME, align 4
  %179 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %180 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %179, i32 0, i32 3
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @strlen(i32* %181)
  %183 = add nsw i32 %182, 1
  %184 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %185 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @zap_add(i32* %176, i32 %177, i32 %178, i32 1, i32 %183, i32* %186, i32* %187)
  %189 = call i32 @VERIFY0(i32 %188)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* @DS_FIELD_RESUME_OBJECT, align 4
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @zap_add(i32* %190, i32 %191, i32 %192, i32 8, i32 1, i32* %19, i32* %193)
  %195 = call i32 @VERIFY0(i32 %194)
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* @DS_FIELD_RESUME_OFFSET, align 4
  %199 = load i32*, i32** %4, align 8
  %200 = call i32 @zap_add(i32* %196, i32 %197, i32 %198, i32 8, i32 1, i32* %20, i32* %199)
  %201 = call i32 @VERIFY0(i32 %200)
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @DS_FIELD_RESUME_BYTES, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @zap_add(i32* %202, i32 %203, i32 %204, i32 8, i32 1, i32* %20, i32* %205)
  %207 = call i32 @VERIFY0(i32 %206)
  %208 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %209 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @DMU_GET_FEATUREFLAGS(i32 %210)
  %212 = load i32, i32* @DMU_BACKUP_FEATURE_LARGE_BLOCKS, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %167
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* @DS_FIELD_RESUME_LARGEBLOCK, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @zap_add(i32* %216, i32 %217, i32 %218, i32 8, i32 1, i32* %19, i32* %219)
  %221 = call i32 @VERIFY0(i32 %220)
  br label %222

222:                                              ; preds = %215, %167
  %223 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %224 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @DMU_GET_FEATUREFLAGS(i32 %225)
  %227 = load i32, i32* @DMU_BACKUP_FEATURE_EMBED_DATA, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %222
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @DS_FIELD_RESUME_EMBEDOK, align 4
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @zap_add(i32* %231, i32 %232, i32 %233, i32 8, i32 1, i32* %19, i32* %234)
  %236 = call i32 @VERIFY0(i32 %235)
  br label %237

237:                                              ; preds = %230, %222
  %238 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %239 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @DMU_GET_FEATUREFLAGS(i32 %240)
  %242 = load i32, i32* @DMU_BACKUP_FEATURE_COMPRESSED, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %237
  %246 = load i32*, i32** %7, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* @DS_FIELD_RESUME_COMPRESSOK, align 4
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 @zap_add(i32* %246, i32 %247, i32 %248, i32 8, i32 1, i32* %19, i32* %249)
  %251 = call i32 @VERIFY0(i32 %250)
  br label %252

252:                                              ; preds = %245, %237
  br label %253

253:                                              ; preds = %252, %137
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %4, align 8
  %258 = call i32 @dmu_buf_will_dirty(i32 %256, i32* %257)
  %259 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %261 = call %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_23__* %260)
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 4
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 0
  %267 = load i32, i32* @RW_READER, align 4
  %268 = load i32, i32* @FTAG, align 4
  %269 = call i32 @rrw_enter(i32* %266, i32 %267, i32 %268)
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %271 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_23__* %270)
  %272 = call i64 @BP_IS_HOLE(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %253
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %280 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_23__* %279)
  %281 = load %struct.drr_begin*, %struct.drr_begin** %8, align 8
  %282 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load i32*, i32** %4, align 8
  %285 = call i32 @dmu_objset_create_impl(i32 %277, %struct.TYPE_23__* %278, i32 %280, i32 %283, i32* %284)
  br label %286

286:                                              ; preds = %274, %253
  %287 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %287, i32 0, i32 0
  %289 = load i32, i32* @FTAG, align 4
  %290 = call i32 @rrw_exit(i32* %288, i32 %289)
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  store %struct.TYPE_23__* %291, %struct.TYPE_23__** %295, align 8
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %297 = load i32*, i32** %4, align 8
  %298 = call i32 @spa_history_log_internal_ds(%struct.TYPE_23__* %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %297, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_22__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_22__*, i8*, i32, %struct.TYPE_23__**) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_22__*, i64, i32, %struct.TYPE_23__**) #1

declare dso_local i32 @dsl_dataset_create_sync(i32*, i64, %struct.TYPE_23__*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_22__*, i8*, i32, i32**, i8**) #1

declare dso_local i64 @strrchr(i8*, i8 signext) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32 @dsl_dataset_own_obj(%struct.TYPE_22__*, i32, i32, %struct.TYPE_23__**) #1

declare dso_local i32 @dsl_dataset_zapify(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i32) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local %struct.TYPE_25__* @dsl_dataset_phys(%struct.TYPE_23__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i64 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_23__*) #1

declare dso_local i32 @dmu_objset_create_impl(i32, %struct.TYPE_23__*, i32, i32, i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_23__*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
