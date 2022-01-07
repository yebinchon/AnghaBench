; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_attr_table_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_attr_table_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64*, i32, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i8*, i32, i32, i8* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@sa_legacy_attr_count = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@sa_legacy_attrs = common dso_local global %struct.TYPE_15__* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* @sa_attr_table_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_attr_table_setup(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = call i64 @dmu_objset_type(%struct.TYPE_20__* %26)
  store i64 %27, i64* %18, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @KM_SLEEP, align 4
  %33 = call i8* @kmem_zalloc(i32 %31, i32 %32)
  %34 = bitcast i8* %33 to i64*
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i64* %34, i64** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %3
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @zap_count(%struct.TYPE_20__* %48, i64 %51, i32* %9)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %472

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %3
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* @DMU_OST_ZFS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @sa_legacy_attr_count, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %74, %70
  store i32 0, i32* %17, align 4
  br label %82

82:                                               ; preds = %177, %81
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %180

86:                                               ; preds = %82
  %87 = load i8*, i8** @B_FALSE, align 8
  store i8* %87, i8** %19, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* @DMU_OST_ZFS, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  store i32 0, i32* %20, align 4
  br label %92

92:                                               ; preds = %126, %91
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @sa_legacy_attr_count, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @strcmp(i32 %102, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %96
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  store i64 %117, i64* %123, align 8
  %124 = load i8*, i8** @B_TRUE, align 8
  store i8* %124, i8** %19, align 8
  br label %125

125:                                              ; preds = %111, %96
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %20, align 4
  br label %92

129:                                              ; preds = %92
  br label %130

130:                                              ; preds = %129, %86
  %131 = load i8*, i8** %19, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %177

134:                                              ; preds = %130
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %134
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @zap_lookup(%struct.TYPE_20__* %140, i64 %143, i32 %149, i32 8, i32 1, i32* %12)
  store i32 %150, i32* %11, align 4
  br label %153

151:                                              ; preds = %134
  %152 = call i32 @SET_ERROR(i32 128)
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %151, %139
  %154 = load i32, i32* %11, align 4
  switch i32 %154, label %175 [
    i32 128, label %155
    i32 0, label %166
  ]

155:                                              ; preds = %153
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64 %157, i64* %163, align 8
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %176

166:                                              ; preds = %153
  %167 = load i32, i32* %12, align 4
  %168 = call i64 @ATTR_NUM(i32 %167)
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  store i64 %168, i64* %174, align 8
  br label %176

175:                                              ; preds = %153
  br label %472

176:                                              ; preds = %166, %155
  br label %177

177:                                              ; preds = %176, %133
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %82

180:                                              ; preds = %82
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 32, %185
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @KM_SLEEP, align 4
  %189 = call i8* @kmem_zalloc(i32 %187, i32 %188)
  %190 = bitcast i8* %189 to %struct.TYPE_18__*
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 5
  store %struct.TYPE_18__* %190, %struct.TYPE_18__** %192, align 8
  store %struct.TYPE_18__* %190, %struct.TYPE_18__** %13, align 8
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %284

197:                                              ; preds = %180
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @zap_cursor_init(i32* %14, %struct.TYPE_20__* %198, i64 %201)
  br label %203

203:                                              ; preds = %271, %197
  %204 = call i32 @zap_cursor_retrieve(i32* %14, %struct.TYPE_16__* %15)
  store i32 %204, i32* %11, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %273

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %21, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  %211 = load i32, i32* %21, align 4
  %212 = call i64 @ATTR_NUM(i32 %211)
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %214 = load i32, i32* %21, align 4
  %215 = call i64 @ATTR_NUM(i32 %214)
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  store i64 %212, i64* %217, align 8
  %218 = load i32, i32* %21, align 4
  %219 = call i32 @ATTR_LENGTH(i32 %218)
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %221 = load i32, i32* %21, align 4
  %222 = call i64 @ATTR_NUM(i32 %221)
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 3
  store i32 %219, i32* %224, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @ATTR_BSWAP(i32 %225)
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %228 = load i32, i32* %21, align 4
  %229 = call i64 @ATTR_NUM(i32 %228)
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i32 %226, i32* %231, align 8
  %232 = load i8*, i8** @B_TRUE, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %234 = load i32, i32* %21, align 4
  %235 = call i64 @ATTR_NUM(i32 %234)
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 4
  store i8* %232, i8** %237, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %239 = load i32, i32* %21, align 4
  %240 = call i64 @ATTR_NUM(i32 %239)
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %246

245:                                              ; preds = %206
  br label %271

246:                                              ; preds = %206
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @strlen(i32 %248)
  %250 = add nsw i32 %249, 1
  %251 = load i32, i32* @KM_SLEEP, align 4
  %252 = call i8* @kmem_zalloc(i32 %250, i32 %251)
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %254 = load i32, i32* %21, align 4
  %255 = call i64 @ATTR_NUM(i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 1
  store i8* %252, i8** %257, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %259 = load i32, i32* %21, align 4
  %260 = call i64 @ATTR_NUM(i32 %259)
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @strlen(i32 %267)
  %269 = add nsw i32 %268, 1
  %270 = call i32 @strlcpy(i8* %263, i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %246, %245
  %272 = call i32 @zap_cursor_advance(i32* %14)
  br label %203

273:                                              ; preds = %203
  %274 = call i32 @zap_cursor_fini(i32* %14)
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %10, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load i32, i32* %11, align 4
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = call i32 @ASSERT(i32 %281)
  br label %472

283:                                              ; preds = %273
  br label %284

284:                                              ; preds = %283, %180
  %285 = load i64, i64* %18, align 8
  %286 = load i64, i64* @DMU_OST_ZFS, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %382

288:                                              ; preds = %284
  store i32 0, i32* %17, align 4
  br label %289

289:                                              ; preds = %378, %288
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* @sa_legacy_attr_count, align 4
  %292 = icmp ne i32 %290, %291
  br i1 %292, label %293, label %381

293:                                              ; preds = %289
  %294 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %293
  br label %378

302:                                              ; preds = %293
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %310 = load i32, i32* %17, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 0
  store i64 %308, i64* %313, align 8
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %315 = load i32, i32* %17, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %321 = load i32, i32* %17, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 3
  store i32 %319, i32* %324, align 4
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %332 = load i32, i32* %17, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %334, i32 0, i32 2
  store i32 %330, i32* %335, align 8
  %336 = load i8*, i8** @B_FALSE, align 8
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %338 = load i32, i32* %17, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 4
  store i8* %336, i8** %341, align 8
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %343 = load i32, i32* %17, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @strlen(i32 %347)
  %349 = add nsw i32 %348, 1
  %350 = load i32, i32* @KM_SLEEP, align 4
  %351 = call i8* @kmem_zalloc(i32 %349, i32 %350)
  %352 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %353 = load i32, i32* %17, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %355, i32 0, i32 1
  store i8* %351, i8** %356, align 8
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %358 = load i32, i32* %17, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 1
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %364 = load i32, i32* %17, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sa_legacy_attrs, align 8
  %370 = load i32, i32* %17, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @strlen(i32 %374)
  %376 = add nsw i32 %375, 1
  %377 = call i32 @strlcpy(i8* %362, i32 %368, i32 %376)
  br label %378

378:                                              ; preds = %302, %301
  %379 = load i32, i32* %17, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %17, align 4
  br label %289

381:                                              ; preds = %289
  br label %382

382:                                              ; preds = %381, %284
  store i32 0, i32* %17, align 4
  br label %383

383:                                              ; preds = %462, %382
  %384 = load i32, i32* %17, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %465

387:                                              ; preds = %383
  %388 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 0
  %390 = load i64*, i64** %389, align 8
  %391 = load i32, i32* %17, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i64, i64* %390, i64 %392
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %22, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %396 = load i64, i64* %22, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %395, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %402

401:                                              ; preds = %387
  br label %462

402:                                              ; preds = %387
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %404 = load i32, i32* %17, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %410 = load i64, i64* %22, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 3
  store i32 %408, i32* %412, align 4
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %414 = load i32, i32* %17, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %420 = load i64, i64* %22, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 2
  store i32 %418, i32* %422, align 8
  %423 = load i64, i64* %22, align 8
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %425 = load i64, i64* %22, align 8
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %426, i32 0, i32 0
  store i64 %423, i64* %427, align 8
  %428 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %429 = load i32, i32* %17, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %428, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @strlen(i32 %433)
  %435 = add nsw i32 %434, 1
  %436 = load i32, i32* @KM_SLEEP, align 4
  %437 = call i8* @kmem_zalloc(i32 %435, i32 %436)
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %439 = load i64, i64* %22, align 8
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 1
  store i8* %437, i8** %441, align 8
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %443 = load i64, i64* %22, align 8
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 1
  %446 = load i8*, i8** %445, align 8
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %448 = load i32, i32* %17, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %454 = load i32, i32* %17, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @strlen(i32 %458)
  %460 = add nsw i32 %459, 1
  %461 = call i32 @strlcpy(i8* %446, i32 %452, i32 %460)
  br label %462

462:                                              ; preds = %402, %401
  %463 = load i32, i32* %17, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %17, align 4
  br label %383

465:                                              ; preds = %383
  %466 = load i32, i32* %9, align 4
  %467 = load i32, i32* %16, align 4
  %468 = icmp ne i32 %466, %467
  %469 = zext i1 %468 to i32
  %470 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %470, i32 0, i32 4
  store i32 %469, i32* %471, align 4
  store i32 0, i32* %4, align 4
  br label %493

472:                                              ; preds = %278, %175, %67
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %474 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %473, i32 0, i32 0
  %475 = load i64*, i64** %474, align 8
  %476 = load i32, i32* %7, align 4
  %477 = sext i32 %476 to i64
  %478 = mul i64 %477, 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @kmem_free(i64* %475, i32 %479)
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 0
  store i64* null, i64** %482, align 8
  %483 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %484 = call i32 @sa_free_attr_table(%struct.TYPE_17__* %483)
  %485 = load i32, i32* %11, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %472
  %488 = load i32, i32* %11, align 4
  br label %491

489:                                              ; preds = %472
  %490 = load i32, i32* @EINVAL, align 4
  br label %491

491:                                              ; preds = %489, %487
  %492 = phi i32 [ %488, %487 ], [ %490, %489 ]
  store i32 %492, i32* %4, align 4
  br label %493

493:                                              ; preds = %491, %465
  %494 = load i32, i32* %4, align 4
  ret i32 %494
}

declare dso_local i64 @dmu_objset_type(%struct.TYPE_20__*) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @zap_count(%struct.TYPE_20__*, i64, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @zap_lookup(%struct.TYPE_20__*, i64, i32, i32, i32, i32*) #1

declare dso_local i64 @ATTR_NUM(i32) #1

declare dso_local i32 @zap_cursor_init(i32*, %struct.TYPE_20__*, i64) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ATTR_LENGTH(i32) #1

declare dso_local i32 @ATTR_BSWAP(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kmem_free(i64*, i32) #1

declare dso_local i32 @sa_free_attr_table(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
