; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_spares.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_spares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32*, %struct.TYPE_29__** }
%struct.TYPE_29__ = type { %struct.TYPE_28__*, %struct.TYPE_29__*, i64, i32 }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@VDEV_ALLOC_SPARE = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_CONFIG_SPARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_load_spares(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_29__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %8 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %9 = call i32 @spa_writeable(%struct.TYPE_30__* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %285

12:                                               ; preds = %1
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %14 = load i64, i64* @SCL_ALL, align 8
  %15 = load i32, i32* @RW_WRITER, align 4
  %16 = call i64 @spa_config_held(%struct.TYPE_30__* %13, i64 %14, i32 %15)
  %17 = load i64, i64* @SCL_ALL, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %57, %12
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %21
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %32, i64 %34
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %35, align 8
  store %struct.TYPE_29__* %36, %struct.TYPE_29__** %6, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @B_FALSE, align 4
  %42 = call %struct.TYPE_29__* @spa_lookup_by_guid(%struct.TYPE_30__* %37, i32 %40, i32 %41)
  store %struct.TYPE_29__* %42, %struct.TYPE_29__** %7, align 8
  %43 = icmp ne %struct.TYPE_29__* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %51 = call i32 @spa_spare_remove(%struct.TYPE_29__* %50)
  br label %52

52:                                               ; preds = %49, %44, %28
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %54 = call i32 @vdev_close(%struct.TYPE_29__* %53)
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %56 = call i32 @vdev_free(%struct.TYPE_29__* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %63, align 8
  %65 = icmp ne %struct.TYPE_29__** %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %69, align 8
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @kmem_free(%struct.TYPE_29__** %70, i32 %77)
  br label %79

79:                                               ; preds = %66, %60
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %96

86:                                               ; preds = %79
  %87 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %92 = call i64 @nvlist_lookup_nvlist_array(i32* %90, i32 %91, %struct.TYPE_29__*** %3, i32* %4)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @VERIFY(i32 %94)
  br label %96

96:                                               ; preds = %86, %85
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 2
  store %struct.TYPE_29__** null, %struct.TYPE_29__*** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %285

107:                                              ; preds = %96
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = trunc i64 %110 to i32
  %112 = load i32, i32* @KM_SLEEP, align 4
  %113 = call i8* @kmem_alloc(i32 %111, i32 %112)
  %114 = bitcast i8* %113 to %struct.TYPE_29__**
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 2
  store %struct.TYPE_29__** %114, %struct.TYPE_29__*** %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %192, %107
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %195

125:                                              ; preds = %118
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %127 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %127, i64 %129
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %130, align 8
  %132 = load i32, i32* @VDEV_ALLOC_SPARE, align 4
  %133 = call i64 @spa_config_parse(%struct.TYPE_30__* %126, %struct.TYPE_29__** %6, %struct.TYPE_29__* %131, i32* null, i32 0, i32 %132)
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @VERIFY(i32 %135)
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %138 = icmp ne %struct.TYPE_29__* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %145, i64 %147
  store %struct.TYPE_29__* %141, %struct.TYPE_29__** %148, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @B_FALSE, align 4
  %154 = call %struct.TYPE_29__* @spa_lookup_by_guid(%struct.TYPE_30__* %149, i32 %152, i32 %153)
  store %struct.TYPE_29__* %154, %struct.TYPE_29__** %7, align 8
  %155 = icmp ne %struct.TYPE_29__* %154, null
  br i1 %155, label %156, label %172

156:                                              ; preds = %125
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %163 = call i32 @spa_spare_add(%struct.TYPE_29__* %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %166 = call i32 @vdev_is_dead(%struct.TYPE_29__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %170 = call i32 @spa_spare_activate(%struct.TYPE_29__* %169)
  br label %171

171:                                              ; preds = %168, %164
  br label %172

172:                                              ; preds = %171, %125
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  store %struct.TYPE_29__* %173, %struct.TYPE_29__** %175, align 8
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  store %struct.TYPE_28__* %177, %struct.TYPE_28__** %179, align 8
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %181 = call i64 @vdev_open(%struct.TYPE_29__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %172
  br label %192

184:                                              ; preds = %172
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %186 = call i64 @vdev_validate_aux(%struct.TYPE_29__* %185)
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %190 = call i32 @spa_spare_add(%struct.TYPE_29__* %189)
  br label %191

191:                                              ; preds = %188, %184
  br label %192

192:                                              ; preds = %191, %183
  %193 = load i32, i32* %5, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %5, align 4
  br label %118

195:                                              ; preds = %118
  %196 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %201 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %202 = call i64 @nvlist_remove(i32* %199, i32 %200, i32 %201)
  %203 = icmp eq i64 %202, 0
  %204 = zext i1 %203 to i32
  %205 = call i32 @VERIFY(i32 %204)
  %206 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 8
  %212 = trunc i64 %211 to i32
  %213 = load i32, i32* @KM_SLEEP, align 4
  %214 = call i8* @kmem_alloc(i32 %212, i32 %213)
  %215 = bitcast i8* %214 to %struct.TYPE_29__**
  store %struct.TYPE_29__** %215, %struct.TYPE_29__*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %240, %195
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %217, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %216
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %228, i64 %230
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %231, align 8
  %233 = load i32, i32* @B_TRUE, align 4
  %234 = load i32, i32* @VDEV_CONFIG_SPARE, align 4
  %235 = call %struct.TYPE_29__* @vdev_config_generate(%struct.TYPE_30__* %224, %struct.TYPE_29__* %232, i32 %233, i32 %234)
  %236 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %3, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %236, i64 %238
  store %struct.TYPE_29__* %235, %struct.TYPE_29__** %239, align 8
  br label %240

240:                                              ; preds = %223
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %216

243:                                              ; preds = %216
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %249 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %3, align 8
  %250 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @nvlist_add_nvlist_array(i32* %247, i32 %248, %struct.TYPE_29__** %249, i32 %253)
  %255 = icmp eq i64 %254, 0
  %256 = zext i1 %255 to i32
  %257 = call i32 @VERIFY(i32 %256)
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %272, %243
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp slt i32 %259, %263
  br i1 %264, label %265, label %275

265:                                              ; preds = %258
  %266 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %3, align 8
  %267 = load i32, i32* %5, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %266, i64 %268
  %270 = load %struct.TYPE_29__*, %struct.TYPE_29__** %269, align 8
  %271 = call i32 @nvlist_free(%struct.TYPE_29__* %270)
  br label %272

272:                                              ; preds = %265
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %258

275:                                              ; preds = %258
  %276 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %3, align 8
  %277 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = mul i64 %281, 8
  %283 = trunc i64 %282 to i32
  %284 = call i32 @kmem_free(%struct.TYPE_29__** %276, i32 %283)
  br label %285

285:                                              ; preds = %275, %106, %11
  ret void
}

declare dso_local i32 @spa_writeable(%struct.TYPE_30__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_30__*, i64, i32) #1

declare dso_local %struct.TYPE_29__* @spa_lookup_by_guid(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @spa_spare_remove(%struct.TYPE_29__*) #1

declare dso_local i32 @vdev_close(%struct.TYPE_29__*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_29__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_29__**, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, %struct.TYPE_29__***, i32*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i64 @spa_config_parse(%struct.TYPE_30__*, %struct.TYPE_29__**, %struct.TYPE_29__*, i32*, i32, i32) #1

declare dso_local i32 @spa_spare_add(%struct.TYPE_29__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_29__*) #1

declare dso_local i32 @spa_spare_activate(%struct.TYPE_29__*) #1

declare dso_local i64 @vdev_open(%struct.TYPE_29__*) #1

declare dso_local i64 @vdev_validate_aux(%struct.TYPE_29__*) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local %struct.TYPE_29__* @vdev_config_generate(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, %struct.TYPE_29__**, i32) #1

declare dso_local i32 @nvlist_free(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
