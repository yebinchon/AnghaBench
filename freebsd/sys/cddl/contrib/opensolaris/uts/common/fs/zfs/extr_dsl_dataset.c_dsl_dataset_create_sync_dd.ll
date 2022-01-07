; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync_dd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync_dd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_37__*, i32, %struct.TYPE_32__* }
%struct.TYPE_37__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_34__*, i32* }
%struct.TYPE_34__ = type { %struct.TYPE_33__*, i32, i32, %struct.TYPE_37__*, i64*, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_31__ = type { i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_30__ = type { i64, i64, i32 }

@DMU_OT_DSL_DATASET = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@DMU_OT_DSL_DS_SNAP_MAP = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@DS_FLAG_CI_DATASET = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@SPA_VERSION_NEXT_CLONES = common dso_local global i64 0, align 8
@DMU_OT_NEXT_CLONES = common dso_local global i32 0, align 4
@SPA_VERSION_DIR_CLONES = common dso_local global i64 0, align 8
@DMU_OT_DSL_CLONES = common dso_local global i32 0, align 4
@SPA_VERSION_UNIQUE_ACCURATE = common dso_local global i64 0, align 8
@DS_FLAG_UNIQUE_ACCURATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dsl_dataset_create_sync_dd(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i8* %2, %struct.TYPE_36__* %3) #0 {
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_36__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_37__*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_36__* %3, %struct.TYPE_36__** %8, align 8
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_32__*, %struct.TYPE_32__** %17, align 8
  store %struct.TYPE_32__* %18, %struct.TYPE_32__** %9, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %23 = icmp eq %struct.TYPE_34__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  store %struct.TYPE_34__* %27, %struct.TYPE_34__** %6, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %30 = icmp eq %struct.TYPE_34__* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %35, align 8
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %38 = icmp eq %struct.TYPE_32__* %36, %37
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i1 [ true, %28 ], [ %38, %31 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %44 = icmp eq %struct.TYPE_34__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %47 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %46)
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i1 [ true, %39 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %56 = call i32 @dmu_tx_is_syncing(%struct.TYPE_36__* %55)
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %59 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %58)
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @DMU_OT_DSL_DATASET, align 4
  %67 = load i32, i32* @DMU_OT_DSL_DATASET, align 4
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %69 = call i8* @dmu_object_alloc(i32* %65, i32 %66, i32 0, i32 %67, i32 64, %struct.TYPE_36__* %68)
  store i8* %69, i8** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dmu_bonus_hold(i32* %70, i8* %71, i32 %72, %struct.TYPE_37__** %10)
  %74 = call i32 @VERIFY0(i32 %73)
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %77 = call i32 @dmu_buf_will_dirty(%struct.TYPE_37__* %75, %struct.TYPE_36__* %76)
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  store %struct.TYPE_35__* %80, %struct.TYPE_35__** %11, align 8
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %82 = call i32 @bzero(%struct.TYPE_35__* %81, i32 64)
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = call i32 (...) @unique_create()
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %100, %51
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 1
  %98 = bitcast i64* %97 to i8*
  %99 = call i32 @random_get_pseudo_bytes(i8* %98, i32 8)
  br label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %95, label %105

105:                                              ; preds = %100
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %108 = load i32, i32* @DMU_OT_DSL_DS_SNAP_MAP, align 4
  %109 = load i32, i32* @DMU_OT_NONE, align 4
  %110 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %111 = call i32 @zap_create_norm(i32* %106, i32 %107, i32 %108, i32 %109, i32 0, %struct.TYPE_36__* %110)
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 11
  store i32 %111, i32* %113, align 4
  %114 = call i32 (...) @gethrestime_sec()
  %115 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TXG_INITIAL, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %127

123:                                              ; preds = %105
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  br label %127

127:                                              ; preds = %123, %122
  %128 = phi i32 [ 1, %122 ], [ %126, %123 ]
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %132 = icmp eq %struct.TYPE_34__* %131, null
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %136 = call i32 @dsl_deadlist_alloc(i32* %134, %struct.TYPE_36__* %135)
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 4
  br label %343

139:                                              ; preds = %127
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %146 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %145)
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %152 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %151)
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %158 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %157)
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 8
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %164 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %163)
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 5
  %171 = load i32, i32* @RW_READER, align 4
  %172 = load i32, i32* @FTAG, align 4
  %173 = call i32 @rrw_enter(i32* %170, i32 %171, i32 %172)
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %175 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %174)
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 5
  %182 = load i32, i32* @FTAG, align 4
  %183 = call i32 @rrw_exit(i32* %181, i32 %182)
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %185 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %184)
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %189 = load i32, i32* @DS_FLAG_CI_DATASET, align 4
  %190 = or i32 %188, %189
  %191 = and i32 %187, %190
  %192 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  store i64 0, i64* %15, align 8
  br label %196

196:                                              ; preds = %214, %139
  %197 = load i64, i64* %15, align 8
  %198 = load i64, i64* @SPA_FEATURES, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %217

200:                                              ; preds = %196
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 4
  %203 = load i64*, i64** %202, align 8
  %204 = load i64, i64* %15, align 8
  %205 = getelementptr inbounds i64, i64* %203, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %200
  %209 = load i8*, i8** %12, align 8
  %210 = load i64, i64* %15, align 8
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %212 = call i32 @dsl_dataset_activate_feature(i8* %209, i64 %210, %struct.TYPE_36__* %211)
  br label %213

213:                                              ; preds = %208, %200
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %15, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %15, align 8
  br label %196

217:                                              ; preds = %196
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %219, align 8
  %221 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %222 = call i32 @dmu_buf_will_dirty(%struct.TYPE_37__* %220, %struct.TYPE_36__* %221)
  %223 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %224 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %223)
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %225, align 8
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %230, align 8
  %232 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %231)
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* @FTAG, align 4
  %236 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_32__* %228, i64 %234, i32 %235, %struct.TYPE_34__** %14)
  %237 = call i32 @VERIFY0(i32 %236)
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %247 = call i32 @dsl_deadlist_clone(i32* %239, i32 %242, i32 %245, %struct.TYPE_36__* %246)
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %251 = load i32, i32* @FTAG, align 4
  %252 = call i32 @dsl_dataset_rele(%struct.TYPE_34__* %250, i32 %251)
  %253 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @spa_version(i32 %255)
  %257 = load i64, i64* @SPA_VERSION_NEXT_CLONES, align 8
  %258 = icmp sge i64 %256, %257
  br i1 %258, label %259, label %285

259:                                              ; preds = %217
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %261 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %260)
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %259
  %266 = load i32*, i32** %13, align 8
  %267 = load i32, i32* @DMU_OT_NEXT_CLONES, align 4
  %268 = load i32, i32* @DMU_OT_NONE, align 4
  %269 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %270 = call i8* @zap_create(i32* %266, i32 %267, i32 %268, i32 0, %struct.TYPE_36__* %269)
  %271 = ptrtoint i8* %270 to i64
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %273 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %272)
  %274 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %273, i32 0, i32 2
  store i64 %271, i64* %274, align 8
  br label %275

275:                                              ; preds = %265, %259
  %276 = load i32*, i32** %13, align 8
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %278 = call %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__* %277)
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i8*, i8** %12, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %283 = call i32 @zap_add_int(i32* %276, i64 %280, i8* %281, %struct.TYPE_36__* %282)
  %284 = call i32 @VERIFY0(i32 %283)
  br label %285

285:                                              ; preds = %275, %217
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_37__*, %struct.TYPE_37__** %287, align 8
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %290 = call i32 @dmu_buf_will_dirty(%struct.TYPE_37__* %288, %struct.TYPE_36__* %289)
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %295 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %294)
  %296 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %295, i32 0, i32 2
  store i32 %293, i32* %296, align 8
  %297 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %298 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @spa_version(i32 %299)
  %301 = load i64, i64* @SPA_VERSION_DIR_CLONES, align 8
  %302 = icmp sge i64 %300, %301
  br i1 %302, label %303, label %342

303:                                              ; preds = %285
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %305, align 8
  %307 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %306)
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %330

311:                                              ; preds = %303
  %312 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_33__*, %struct.TYPE_33__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_37__*, %struct.TYPE_37__** %315, align 8
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %318 = call i32 @dmu_buf_will_dirty(%struct.TYPE_37__* %316, %struct.TYPE_36__* %317)
  %319 = load i32*, i32** %13, align 8
  %320 = load i32, i32* @DMU_OT_DSL_CLONES, align 4
  %321 = load i32, i32* @DMU_OT_NONE, align 4
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %323 = call i8* @zap_create(i32* %319, i32 %320, i32 %321, i32 0, %struct.TYPE_36__* %322)
  %324 = ptrtoint i8* %323 to i64
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %326, align 8
  %328 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %327)
  %329 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %328, i32 0, i32 1
  store i64 %324, i64* %329, align 8
  br label %330

330:                                              ; preds = %311, %303
  %331 = load i32*, i32** %13, align 8
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %333, align 8
  %335 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %334)
  %336 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %340 = call i32 @zap_add_int(i32* %331, i64 %337, i8* %338, %struct.TYPE_36__* %339)
  %341 = call i32 @VERIFY0(i32 %340)
  br label %342

342:                                              ; preds = %330, %285
  br label %343

343:                                              ; preds = %342, %133
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = call i64 @spa_version(i32 %346)
  %348 = load i64, i64* @SPA_VERSION_UNIQUE_ACCURATE, align 8
  %349 = icmp sge i64 %347, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %343
  %351 = load i32, i32* @DS_FLAG_UNIQUE_ACCURATE, align 4
  %352 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %353 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %351
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %350, %343
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %10, align 8
  %358 = load i32, i32* @FTAG, align 4
  %359 = call i32 @dmu_buf_rele(%struct.TYPE_37__* %357, i32 %358)
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_37__*, %struct.TYPE_37__** %361, align 8
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %8, align 8
  %364 = call i32 @dmu_buf_will_dirty(%struct.TYPE_37__* %362, %struct.TYPE_36__* %363)
  %365 = load i8*, i8** %12, align 8
  %366 = ptrtoint i8* %365 to i64
  %367 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %368 = call %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__* %367)
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 0
  store i64 %366, i64* %369, align 8
  %370 = load i8*, i8** %12, align 8
  ret i8* %370
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_31__* @dsl_dataset_phys(%struct.TYPE_34__*) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_30__* @dsl_dir_phys(%struct.TYPE_33__*) #1

declare dso_local i8* @dmu_object_alloc(i32*, i32, i32, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i8*, i32, %struct.TYPE_37__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_37__*, %struct.TYPE_36__*) #1

declare dso_local i32 @bzero(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @unique_create(...) #1

declare dso_local i32 @random_get_pseudo_bytes(i8*, i32) #1

declare dso_local i32 @zap_create_norm(i32*, i32, i32, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @gethrestime_sec(...) #1

declare dso_local i32 @dsl_deadlist_alloc(i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @dsl_dataset_activate_feature(i8*, i64, %struct.TYPE_36__*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_32__*, i64, i32, %struct.TYPE_34__**) #1

declare dso_local i32 @dsl_deadlist_clone(i32*, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i8* @zap_create(i32*, i32, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @zap_add_int(i32*, i64, i8*, %struct.TYPE_36__*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_37__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
