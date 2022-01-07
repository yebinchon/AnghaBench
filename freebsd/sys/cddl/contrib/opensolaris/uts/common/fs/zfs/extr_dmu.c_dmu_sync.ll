; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32*, i64 }
%struct.TYPE_33__ = type { i32, i32, i32*, %struct.TYPE_24__*, i32, %struct.TYPE_25__, %struct.TYPE_30__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_27__, %struct.TYPE_24__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_32__ = type { i32*, %struct.TYPE_29__*, i32*, %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32 }

@WP_DMU_SYNC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DR_IN_DMU_SYNC = common dso_local global i64 0, align 8
@DR_OVERRIDDEN = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@DR_NOT_OVERRIDDEN = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@dmu_sync_ready = common dso_local global i32 0, align 4
@dmu_sync_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_sync(i32* %0, i64 %1, i32* %2, %struct.TYPE_29__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_31__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_29__* %3, %struct.TYPE_29__** %9, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %21, %struct.TYPE_33__** %10, align 8
  %22 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %23, align 8
  store %struct.TYPE_30__* %24, %struct.TYPE_30__** %11, align 8
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %26, align 8
  store %struct.TYPE_31__* %27, %struct.TYPE_31__** %12, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SET_BOOKMARK(i32* %15, i32 %38, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = call i32 @DB_DNODE_ENTER(%struct.TYPE_33__* %50)
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %53 = call i32* @DB_DNODE(%struct.TYPE_33__* %52)
  store i32* %53, i32** %17, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @WP_DMU_SYNC, align 4
  %60 = call i32 @dmu_write_policy(%struct.TYPE_30__* %54, i32* %55, i32 %58, i32 %59, %struct.TYPE_28__* %16)
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %62 = call i32 @DB_DNODE_EXIT(%struct.TYPE_33__* %61)
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @spa_freeze_txg(i32 %66)
  %68 = icmp sgt i64 %63, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %4
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %74 = call i32 @dmu_sync_late_arrival(i32* %70, %struct.TYPE_30__* %71, i32* %72, %struct.TYPE_29__* %73, %struct.TYPE_28__* %16, i32* %15)
  store i32 %74, i32* %5, align 4
  br label %267

75:                                               ; preds = %4
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %76, i32 0, i32 0
  %78 = call i32 @mutex_enter(i32* %77)
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @spa_last_synced_txg(i32 %82)
  %84 = icmp sle i64 %79, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %75
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = call i32 @mutex_exit(i32* %87)
  %89 = load i32, i32* @EEXIST, align 4
  %90 = call i32 @SET_ERROR(i32 %89)
  store i32 %90, i32* %5, align 4
  br label %267

91:                                               ; preds = %75
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @spa_syncing_txg(i32 %95)
  %97 = icmp sle i64 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 0
  %101 = call i32 @mutex_exit(i32* %100)
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %106 = call i32 @dmu_sync_late_arrival(i32* %102, %struct.TYPE_30__* %103, i32* %104, %struct.TYPE_29__* %105, %struct.TYPE_28__* %16, i32* %15)
  store i32 %106, i32* %5, align 4
  br label %267

107:                                              ; preds = %91
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %13, align 8
  br label %111

111:                                              ; preds = %122, %107
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %113 = icmp ne %struct.TYPE_24__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = icmp ne i64 %117, %118
  br label %120

120:                                              ; preds = %114, %111
  %121 = phi i1 [ false, %111 ], [ %119, %114 ]
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %13, align 8
  br label %111

126:                                              ; preds = %120
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %128 = icmp eq %struct.TYPE_24__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = call i32 @mutex_exit(i32* %131)
  %133 = load i32, i32* @ENOENT, align 4
  %134 = call i32 @SET_ERROR(i32 %133)
  store i32 %134, i32* %5, align 4
  br label %267

135:                                              ; preds = %126
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %137, align 8
  %139 = icmp eq %struct.TYPE_24__* %138, null
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = icmp slt i64 %145, %146
  br label %148

148:                                              ; preds = %140, %135
  %149 = phi i1 [ true, %135 ], [ %147, %140 ]
  %150 = zext i1 %149 to i32
  %151 = call i32 @ASSERT(i32 %150)
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %148
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %156, %148
  %165 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %166 = call i32 @DB_DNODE_ENTER(%struct.TYPE_33__* %165)
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %168 = call i32* @DB_DNODE(%struct.TYPE_33__* %167)
  store i32* %168, i32** %17, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %170, align 8
  %172 = icmp ne %struct.TYPE_24__* %171, null
  br i1 %172, label %180, label %173

173:                                              ; preds = %164
  %174 = load i32*, i32** %17, align 8
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @dnode_block_freed(i32* %174, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173, %164
  %181 = load i32, i32* @B_FALSE, align 4
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %185 = call i32 @DB_DNODE_EXIT(%struct.TYPE_33__* %184)
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @ASSERT(i32 %191)
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @DR_IN_DMU_SYNC, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %183
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @DR_OVERRIDDEN, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %200, %183
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %209, i32 0, i32 0
  %211 = call i32 @mutex_exit(i32* %210)
  %212 = load i32, i32* @EALREADY, align 4
  %213 = call i32 @SET_ERROR(i32 %212)
  store i32 %213, i32* %5, align 4
  br label %267

214:                                              ; preds = %200
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @DR_NOT_OVERRIDDEN, align 8
  %221 = icmp eq i64 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @ASSERT(i32 %222)
  %224 = load i64, i64* @DR_IN_DMU_SYNC, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 0
  store i64 %224, i64* %228, align 8
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 0
  %231 = call i32 @mutex_exit(i32* %230)
  %232 = load i32, i32* @KM_SLEEP, align 4
  %233 = call %struct.TYPE_32__* @kmem_alloc(i32 32, i32 %232)
  store %struct.TYPE_32__* %233, %struct.TYPE_32__** %14, align 8
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 3
  store %struct.TYPE_24__* %234, %struct.TYPE_24__** %236, align 8
  %237 = load i32*, i32** %8, align 8
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 2
  store i32* %237, i32** %239, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 1
  store %struct.TYPE_29__* %240, %struct.TYPE_29__** %242, align 8
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 0
  store i32* null, i32** %244, align 8
  %245 = load i32*, i32** %6, align 8
  %246 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i64, i64* %7, align 8
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %259 = call i32 @DBUF_IS_L2CACHEABLE(%struct.TYPE_33__* %258)
  %260 = load i32, i32* @dmu_sync_ready, align 4
  %261 = load i32, i32* @dmu_sync_done, align 4
  %262 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %263 = load i32, i32* @ZIO_PRIORITY_SYNC_WRITE, align 4
  %264 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %265 = call i32 @arc_write(i32* %245, i32 %248, i64 %249, i32* %252, i32 %257, i32 %259, %struct.TYPE_28__* %16, i32 %260, i32* null, i32* null, i32 %261, %struct.TYPE_32__* %262, i32 %263, i32 %264, i32* %15)
  %266 = call i32 @zio_nowait(i32 %265)
  store i32 0, i32* %5, align 4
  br label %267

267:                                              ; preds = %214, %208, %129, %98, %85, %69
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_33__*) #1

declare dso_local i32* @DB_DNODE(%struct.TYPE_33__*) #1

declare dso_local i32 @dmu_write_policy(%struct.TYPE_30__*, i32*, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_33__*) #1

declare dso_local i64 @spa_freeze_txg(i32) #1

declare dso_local i32 @dmu_sync_late_arrival(i32*, %struct.TYPE_30__*, i32*, %struct.TYPE_29__*, %struct.TYPE_28__*, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @spa_last_synced_txg(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_syncing_txg(i32) #1

declare dso_local i64 @dnode_block_freed(i32*, i32) #1

declare dso_local %struct.TYPE_32__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @arc_write(i32*, i32, i64, i32*, i32, i32, %struct.TYPE_28__*, i32, i32*, i32*, i32, %struct.TYPE_32__*, i32, i32, i32*) #1

declare dso_local i32 @DBUF_IS_L2CACHEABLE(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
