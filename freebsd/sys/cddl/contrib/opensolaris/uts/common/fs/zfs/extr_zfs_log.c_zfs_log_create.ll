; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_log.c_zfs_log_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i8*, i32 }
%struct.TYPE_20__ = type { i32, i32, i8*, i8*, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64, i64*, i64, i8*, i8*, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i32, i8*, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@AT_XVATTR = common dso_local global i32 0, align 4
@TX_CREATE_ATTR = common dso_local global i32 0, align 4
@TX_MKDIR_ATTR = common dso_local global i32 0, align 4
@TX_CREATE = common dso_local global i32 0, align 4
@TX_MKDIR = common dso_local global i32 0, align 4
@TX_MKXATTR = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i32 0, align 4
@VSA_ACE_ACLFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfs_log_create(i32* %0, i32* %1, i8* %2, %struct.TYPE_19__* %3, %struct.TYPE_19__* %4, i8* %5, %struct.TYPE_22__* %6, %struct.TYPE_20__* %7, %struct.TYPE_23__* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_21__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.TYPE_22__* %6, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_20__* %7, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %18, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %9
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  br label %37

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 0, %36 ]
  store i64 %38, i64* %22, align 8
  store i64 0, i64* %23, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %40 = bitcast %struct.TYPE_23__* %39 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %25, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @zil_replaying(i32* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %338

50:                                               ; preds = %37
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %52 = icmp ne %struct.TYPE_20__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %29, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %29, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 8
  %64 = load i64, i64* %29, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %29, align 8
  br label %66

66:                                               ; preds = %53, %50
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AT_XVATTR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ZIL_XVAT_SIZE(i32 %76)
  store i64 %77, i64* %23, align 8
  br label %78

78:                                               ; preds = %73, %66
  %79 = load i8*, i8** %12, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32, i32* @TX_CREATE_ATTR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %103, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32, i32* @TX_MKDIR_ATTR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32, i32* @TX_CREATE, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32, i32* @TX_MKDIR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %12, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32, i32* @TX_MKXATTR, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98, %93, %88, %83, %78
  %104 = load i64, i64* %28, align 8
  %105 = add i64 56, %104
  %106 = load i64, i64* %29, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* %23, align 8
  %109 = add i64 %107, %108
  store i64 %109, i64* %24, align 8
  store i64 56, i64* %27, align 8
  br label %121

110:                                              ; preds = %98
  %111 = load i64, i64* %28, align 8
  %112 = add i64 32, %111
  %113 = load i64, i64* %29, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* %22, align 8
  %116 = call i32 @ZIL_ACE_LENGTH(i64 %115)
  %117 = sext i32 %116 to i64
  %118 = add i64 %114, %117
  %119 = load i64, i64* %23, align 8
  %120 = add i64 %118, %119
  store i64 %120, i64* %24, align 8
  store i64 32, i64* %27, align 8
  br label %121

121:                                              ; preds = %110, %103
  %122 = load i8*, i8** %12, align 8
  %123 = load i64, i64* %24, align 8
  %124 = call %struct.TYPE_26__* @zil_itx_create(i8* %122, i64 %123)
  store %struct.TYPE_26__* %124, %struct.TYPE_26__** %19, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 0
  %127 = bitcast i32* %126 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %127, %struct.TYPE_24__** %20, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 7
  store i32 %130, i32* %132, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DNODE_SHIFT, align 4
  %145 = ashr i32 %143, %144
  %146 = call i32 @LR_FOID_SET_SLOTS(i32 %140, i32 %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @IS_EPHEMERAL(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %121
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  br label %171

165:                                              ; preds = %121
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %165, %157
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @IS_EPHEMERAL(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  br label %191

185:                                              ; preds = %171
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %185, %177
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @SA_ZPL_GEN(i32 %197)
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 2
  %201 = call i64 @sa_lookup(i32 %194, i32 %198, i64* %200, i32 8)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @SA_ZPL_CRTIME(i32 %207)
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = call i64 @sa_lookup(i32 %204, i32 %208, i64* %211, i32 16)
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @SA_ZPL_RDEV(i32 %218)
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 0
  %222 = call i64 @sa_lookup(i32 %215, i32 %219, i64* %221, i32 8)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %191
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  br label %227

227:                                              ; preds = %224, %191
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @AT_XVATTR, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %227
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %236 = bitcast %struct.TYPE_24__* %235 to i8*
  %237 = load i64, i64* %27, align 8
  %238 = getelementptr i8, i8* %236, i64 %237
  %239 = bitcast i8* %238 to i32*
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %241 = call i32 @zfs_log_xvattr(i32* %239, %struct.TYPE_21__* %240)
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %243 = bitcast %struct.TYPE_24__* %242 to i8*
  %244 = load i64, i64* %27, align 8
  %245 = getelementptr i8, i8* %243, i64 %244
  %246 = load i64, i64* %23, align 8
  %247 = getelementptr i8, i8* %245, i64 %246
  store i8* %247, i8** %26, align 8
  br label %253

248:                                              ; preds = %227
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %250 = bitcast %struct.TYPE_24__* %249 to i8*
  %251 = load i64, i64* %27, align 8
  %252 = getelementptr i8, i8* %250, i64 %251
  store i8* %252, i8** %26, align 8
  br label %253

253:                                              ; preds = %248, %234
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %255 = icmp ne %struct.TYPE_22__* %254, null
  br i1 %255, label %256, label %319

256:                                              ; preds = %253
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 0
  %259 = bitcast i32* %258 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %259, %struct.TYPE_25__** %21, align 8
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 4
  %265 = load i64, i64* %22, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 0
  store i64 %265, i64* %267, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %269 = icmp ne %struct.TYPE_20__* %268, null
  br i1 %269, label %270, label %274

270:                                              ; preds = %256
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  br label %275

274:                                              ; preds = %256
  br label %275

275:                                              ; preds = %274, %270
  %276 = phi i32 [ %273, %270 ], [ 0, %274 ]
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %280 = icmp ne %struct.TYPE_20__* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %275
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  br label %286

285:                                              ; preds = %275
  br label %286

286:                                              ; preds = %285, %281
  %287 = phi i32 [ %284, %281 ], [ 0, %285 ]
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 1
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @VSA_ACE_ACLFLAGS, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %286
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = sext i32 %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 2
  store i8* %301, i8** %303, align 8
  br label %307

304:                                              ; preds = %286
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 2
  store i8* null, i8** %306, align 8
  br label %307

307:                                              ; preds = %304, %296
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 2
  %310 = load i8*, i8** %309, align 8
  %311 = load i8*, i8** %26, align 8
  %312 = load i64, i64* %22, align 8
  %313 = call i32 @bcopy(i8* %310, i8* %311, i64 %312)
  %314 = load i8*, i8** %26, align 8
  %315 = load i64, i64* %22, align 8
  %316 = call i32 @ZIL_ACE_LENGTH(i64 %315)
  %317 = sext i32 %316 to i64
  %318 = getelementptr i8, i8* %314, i64 %317
  store i8* %318, i8** %26, align 8
  br label %319

319:                                              ; preds = %307, %253
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %321 = icmp ne %struct.TYPE_20__* %320, null
  br i1 %321, label %322, label %329

322:                                              ; preds = %319
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %324 = load i8*, i8** %26, align 8
  %325 = call i8* @zfs_log_fuid_ids(%struct.TYPE_20__* %323, i8* %324)
  store i8* %325, i8** %26, align 8
  %326 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %327 = load i8*, i8** %26, align 8
  %328 = call i8* @zfs_log_fuid_domains(%struct.TYPE_20__* %326, i8* %327)
  store i8* %328, i8** %26, align 8
  br label %329

329:                                              ; preds = %322, %319
  %330 = load i8*, i8** %15, align 8
  %331 = load i8*, i8** %26, align 8
  %332 = load i64, i64* %28, align 8
  %333 = call i32 @bcopy(i8* %330, i8* %331, i64 %332)
  %334 = load i32*, i32** %10, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %336 = load i32*, i32** %11, align 8
  %337 = call i32 @zil_itx_assign(i32* %334, %struct.TYPE_26__* %335, i32* %336)
  br label %338

338:                                              ; preds = %329, %49
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zil_replaying(i32*, i32*) #1

declare dso_local i64 @ZIL_XVAT_SIZE(i32) #1

declare dso_local i32 @ZIL_ACE_LENGTH(i64) #1

declare dso_local %struct.TYPE_26__* @zil_itx_create(i8*, i64) #1

declare dso_local i32 @LR_FOID_SET_SLOTS(i32, i32) #1

declare dso_local i32 @IS_EPHEMERAL(i32) #1

declare dso_local i64 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_GEN(i32) #1

declare dso_local i32 @SA_ZPL_CRTIME(i32) #1

declare dso_local i32 @SA_ZPL_RDEV(i32) #1

declare dso_local i32 @zfs_log_xvattr(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i8* @zfs_log_fuid_ids(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @zfs_log_fuid_domains(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @zil_itx_assign(i32*, %struct.TYPE_26__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
