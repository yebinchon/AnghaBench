; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_check_settable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_check_settable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ZPROP_INVAL = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_USERPROP = common dso_local global i8* null, align 8
@zfs_userquota_prop_prefixes = common dso_local global i8** null, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_DELEG_PERM_USERQUOTA = common dso_local global i8* null, align 8
@ZFS_DELEG_PERM_GROUPQUOTA = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_GZIP_1 = common dso_local global i64 0, align 8
@ZIO_COMPRESS_GZIP_9 = common dso_local global i64 0, align 8
@SPA_VERSION_GZIP_COMPRESSION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZIO_COMPRESS_ZLE = common dso_local global i64 0, align 8
@SPA_VERSION_ZLE_COMPRESSION = common dso_local global i32 0, align 4
@ZIO_COMPRESS_LZ4 = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_LZ4_COMPRESS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SPA_VERSION_DITTO_BLOCKS = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@zfs_max_recordsize = common dso_local global i64 0, align 8
@SPA_MAXBLOCKSIZE = common dso_local global i64 0, align 8
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@ZFS_DNSIZE_LEGACY = common dso_local global i64 0, align 8
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@ZPL_VERSION_FUID = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64 = common dso_local global i64 0, align 8
@ZFS_ACL_PASSTHROUGH_X = common dso_local global i64 0, align 8
@SPA_VERSION_PASSTHROUGH_X = common dso_local global i32 0, align 4
@SPA_VERSION_DEDUP = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_MASK = common dso_local global i64 0, align 8
@SPA_FEATURE_NONE = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@zio_checksum_table = common dso_local global %struct.TYPE_2__* null, align 8
@ZCHECKSUM_FLAG_SALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_check_settable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_check_settable(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i8* @nvpair_name(i32* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @strchr(i8* %24, i8 signext 64)
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @zfs_name_to_prop(i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ZPROP_INVAL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %96

34:                                               ; preds = %3
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @zfs_prop_user(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** @ZFS_DELEG_PERM_USERPROP, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @zfs_secpolicy_write_perms(i8* %39, i8* %40, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  br label %384

46:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %384

47:                                               ; preds = %34
  %48 = load i64, i64* %9, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %93, label %50

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @zfs_prop_userquota(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  store i8* null, i8** %13, align 8
  %55 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %56 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %14, align 8
  %59 = load i8**, i8*** @zfs_userquota_prop_prefixes, align 8
  %60 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = call i64 @strncmp(i8* %63, i8* %64, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %54
  %70 = load i8*, i8** @ZFS_DELEG_PERM_USERQUOTA, align 8
  store i8* %70, i8** %13, align 8
  br label %84

71:                                               ; preds = %54
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call i64 @strncmp(i8* %72, i8* %73, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i8*, i8** @ZFS_DELEG_PERM_GROUPQUOTA, align 8
  store i8* %79, i8** %13, align 8
  br label %83

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @SET_ERROR(i32 %81)
  store i32 %82, i32* %4, align 4
  br label %384

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %69
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %13, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @zfs_secpolicy_write_perms(i8* %85, i8* %86, i32* %87)
  store i32 %88, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %4, align 4
  br label %384

92:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %384

93:                                               ; preds = %50, %47
  %94 = load i32, i32* @EINVAL, align 4
  %95 = call i32 @SET_ERROR(i32 %94)
  store i32 %95, i32* %4, align 4
  br label %384

96:                                               ; preds = %3
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  %101 = call i32 @SET_ERROR(i32 %100)
  store i32 %101, i32* %4, align 4
  br label %384

102:                                              ; preds = %96
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @nvpair_type(i32* %103)
  %105 = load i64, i64* @DATA_TYPE_NVLIST, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i32*, i32** %6, align 8
  %109 = call i64 @nvpair_value_nvlist(i32* %108, i32** %16)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @VERIFY(i32 %111)
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* @ZPROP_VALUE, align 4
  %115 = call i64 @nvlist_lookup_nvpair(i32* %113, i32 %114, i32** %6)
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @VERIFY(i32 %117)
  br label %119

119:                                              ; preds = %107, %102
  %120 = load i32, i32* %10, align 4
  switch i32 %120, label %378 [
    i32 133, label %121
    i32 132, label %192
    i32 129, label %201
    i32 130, label %243
    i32 128, label %274
    i32 135, label %283
    i32 134, label %306
    i32 131, label %306
  ]

121:                                              ; preds = %119
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @nvpair_value_uint64(i32* %122, i64* %11)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %191

125:                                              ; preds = %121
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @ZIO_COMPRESS_GZIP_1, align 8
  %128 = icmp uge i64 %126, %127
  br i1 %128, label %129, label %141

129:                                              ; preds = %125
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @ZIO_COMPRESS_GZIP_9, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* @SPA_VERSION_GZIP_COMPRESSION, align 4
  %136 = call i32 @zfs_earlier_version(i8* %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @ENOTSUP, align 4
  %140 = call i32 @SET_ERROR(i32 %139)
  store i32 %140, i32* %4, align 4
  br label %384

141:                                              ; preds = %133, %129, %125
  %142 = load i64, i64* %11, align 8
  %143 = load i64, i64* @ZIO_COMPRESS_ZLE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i8*, i8** %5, align 8
  %147 = load i32, i32* @SPA_VERSION_ZLE_COMPRESSION, align 4
  %148 = call i32 @zfs_earlier_version(i8* %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @ENOTSUP, align 4
  %152 = call i32 @SET_ERROR(i32 %151)
  store i32 %152, i32* %4, align 4
  br label %384

153:                                              ; preds = %145, %141
  %154 = load i64, i64* %11, align 8
  %155 = load i64, i64* @ZIO_COMPRESS_LZ4, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* @FTAG, align 4
  %160 = call i32 @spa_open(i8* %158, i32** %17, i32 %159)
  store i32 %160, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %4, align 4
  br label %384

164:                                              ; preds = %157
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* @SPA_FEATURE_LZ4_COMPRESS, align 4
  %167 = call i32 @spa_feature_is_enabled(i32* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %164
  %170 = load i32*, i32** %17, align 8
  %171 = load i32, i32* @FTAG, align 4
  %172 = call i32 @spa_close(i32* %170, i32 %171)
  %173 = load i32, i32* @ENOTSUP, align 4
  %174 = call i32 @SET_ERROR(i32 %173)
  store i32 %174, i32* %4, align 4
  br label %384

175:                                              ; preds = %164
  %176 = load i32*, i32** %17, align 8
  %177 = load i32, i32* @FTAG, align 4
  %178 = call i32 @spa_close(i32* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %153
  %180 = load i8*, i8** %5, align 8
  %181 = call i32 @zfs_is_bootfs(i8* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @BOOTFS_COMPRESS_VALID(i64 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* @ERANGE, align 4
  %189 = call i32 @SET_ERROR(i32 %188)
  store i32 %189, i32* %4, align 4
  br label %384

190:                                              ; preds = %183, %179
  br label %191

191:                                              ; preds = %190, %121
  br label %378

192:                                              ; preds = %119
  %193 = load i8*, i8** %5, align 8
  %194 = load i32, i32* @SPA_VERSION_DITTO_BLOCKS, align 4
  %195 = call i32 @zfs_earlier_version(i8* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i32, i32* @ENOTSUP, align 4
  %199 = call i32 @SET_ERROR(i32 %198)
  store i32 %199, i32* %4, align 4
  br label %384

200:                                              ; preds = %192
  br label %378

201:                                              ; preds = %119
  %202 = load i32*, i32** %6, align 8
  %203 = call i32 @nvpair_value_uint64(i32* %202, i64* %11)
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %242

205:                                              ; preds = %201
  %206 = load i64, i64* %11, align 8
  %207 = load i64, i64* @SPA_OLD_MAXBLOCKSIZE, align 8
  %208 = icmp ugt i64 %206, %207
  br i1 %208, label %209, label %242

209:                                              ; preds = %205
  %210 = load i64, i64* %11, align 8
  %211 = load i64, i64* @zfs_max_recordsize, align 8
  %212 = icmp ugt i64 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i64, i64* %11, align 8
  %215 = load i64, i64* @SPA_MAXBLOCKSIZE, align 8
  %216 = icmp ugt i64 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213, %209
  %218 = load i32, i32* @ERANGE, align 4
  %219 = call i32 @SET_ERROR(i32 %218)
  store i32 %219, i32* %4, align 4
  br label %384

220:                                              ; preds = %213
  %221 = load i8*, i8** %5, align 8
  %222 = load i32, i32* @FTAG, align 4
  %223 = call i32 @spa_open(i8* %221, i32** %18, i32 %222)
  store i32 %223, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %4, align 4
  br label %384

227:                                              ; preds = %220
  %228 = load i32*, i32** %18, align 8
  %229 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %230 = call i32 @spa_feature_is_enabled(i32* %228, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %227
  %233 = load i32*, i32** %18, align 8
  %234 = load i32, i32* @FTAG, align 4
  %235 = call i32 @spa_close(i32* %233, i32 %234)
  %236 = load i32, i32* @ENOTSUP, align 4
  %237 = call i32 @SET_ERROR(i32 %236)
  store i32 %237, i32* %4, align 4
  br label %384

238:                                              ; preds = %227
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* @FTAG, align 4
  %241 = call i32 @spa_close(i32* %239, i32 %240)
  br label %242

242:                                              ; preds = %238, %205, %201
  br label %378

243:                                              ; preds = %119
  %244 = load i32*, i32** %6, align 8
  %245 = call i32 @nvpair_value_uint64(i32* %244, i64* %11)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %243
  %248 = load i64, i64* %11, align 8
  %249 = load i64, i64* @ZFS_DNSIZE_LEGACY, align 8
  %250 = icmp ne i64 %248, %249
  br i1 %250, label %251, label %273

251:                                              ; preds = %247
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* @FTAG, align 4
  %254 = call i32 @spa_open(i8* %252, i32** %19, i32 %253)
  store i32 %254, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %4, align 4
  br label %384

258:                                              ; preds = %251
  %259 = load i32*, i32** %19, align 8
  %260 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %261 = call i32 @spa_feature_is_enabled(i32* %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %258
  %264 = load i32*, i32** %19, align 8
  %265 = load i32, i32* @FTAG, align 4
  %266 = call i32 @spa_close(i32* %264, i32 %265)
  %267 = load i32, i32* @ENOTSUP, align 4
  %268 = call i32 @SET_ERROR(i32 %267)
  store i32 %268, i32* %4, align 4
  br label %384

269:                                              ; preds = %258
  %270 = load i32*, i32** %19, align 8
  %271 = load i32, i32* @FTAG, align 4
  %272 = call i32 @spa_close(i32* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %247, %243
  br label %378

274:                                              ; preds = %119
  %275 = load i8*, i8** %5, align 8
  %276 = load i32, i32* @ZPL_VERSION_FUID, align 4
  %277 = call i32 @zpl_earlier_version(i8* %275, i32 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i32, i32* @ENOTSUP, align 4
  %281 = call i32 @SET_ERROR(i32 %280)
  store i32 %281, i32* %4, align 4
  br label %384

282:                                              ; preds = %274
  br label %378

283:                                              ; preds = %119
  %284 = load i32*, i32** %6, align 8
  %285 = call i64 @nvpair_type(i32* %284)
  %286 = load i64, i64* @DATA_TYPE_UINT64, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %305

288:                                              ; preds = %283
  %289 = load i32*, i32** %6, align 8
  %290 = call i32 @nvpair_value_uint64(i32* %289, i64* %11)
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %305

292:                                              ; preds = %288
  %293 = load i64, i64* %11, align 8
  %294 = load i64, i64* @ZFS_ACL_PASSTHROUGH_X, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %304

296:                                              ; preds = %292
  %297 = load i8*, i8** %5, align 8
  %298 = load i32, i32* @SPA_VERSION_PASSTHROUGH_X, align 4
  %299 = call i32 @zfs_earlier_version(i8* %297, i32 %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load i32, i32* @ENOTSUP, align 4
  %303 = call i32 @SET_ERROR(i32 %302)
  store i32 %303, i32* %4, align 4
  br label %384

304:                                              ; preds = %296, %292
  br label %305

305:                                              ; preds = %304, %288, %283
  br label %378

306:                                              ; preds = %119, %119
  %307 = load i32, i32* %10, align 4
  %308 = icmp eq i32 %307, 131
  br i1 %308, label %309, label %317

309:                                              ; preds = %306
  %310 = load i8*, i8** %5, align 8
  %311 = load i32, i32* @SPA_VERSION_DEDUP, align 4
  %312 = call i32 @zfs_earlier_version(i8* %310, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i32, i32* @ENOTSUP, align 4
  %316 = call i32 @SET_ERROR(i32 %315)
  store i32 %316, i32* %4, align 4
  br label %384

317:                                              ; preds = %309, %306
  %318 = load i32*, i32** %6, align 8
  %319 = call i32 @nvpair_value_uint64(i32* %318, i64* %11)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %317
  %322 = load i32, i32* @EINVAL, align 4
  %323 = call i32 @SET_ERROR(i32 %322)
  store i32 %323, i32* %4, align 4
  br label %384

324:                                              ; preds = %317
  %325 = load i64, i64* %11, align 8
  %326 = load i64, i64* @ZIO_CHECKSUM_MASK, align 8
  %327 = and i64 %325, %326
  %328 = call i32 @zio_checksum_to_feature(i64 %327)
  store i32 %328, i32* %20, align 4
  %329 = load i32, i32* %20, align 4
  %330 = load i32, i32* @SPA_FEATURE_NONE, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %324
  br label %378

333:                                              ; preds = %324
  %334 = load i8*, i8** %5, align 8
  %335 = load i32, i32* @FTAG, align 4
  %336 = call i32 @spa_open(i8* %334, i32** %21, i32 %335)
  store i32 %336, i32* %12, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = load i32, i32* %12, align 4
  store i32 %339, i32* %4, align 4
  br label %384

340:                                              ; preds = %333
  %341 = load i32*, i32** %21, align 8
  %342 = call i32 @spa_bootfs(i32* %341)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %363

344:                                              ; preds = %340
  %345 = load i64, i64* %11, align 8
  %346 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %347 = icmp ult i64 %345, %346
  br i1 %347, label %348, label %363

348:                                              ; preds = %344
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** @zio_checksum_table, align 8
  %350 = load i64, i64* %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ZCHECKSUM_FLAG_SALTED, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %348
  %358 = load i32*, i32** %21, align 8
  %359 = load i32, i32* @FTAG, align 4
  %360 = call i32 @spa_close(i32* %358, i32 %359)
  %361 = load i32, i32* @ERANGE, align 4
  %362 = call i32 @SET_ERROR(i32 %361)
  store i32 %362, i32* %4, align 4
  br label %384

363:                                              ; preds = %348, %344, %340
  %364 = load i32*, i32** %21, align 8
  %365 = load i32, i32* %20, align 4
  %366 = call i32 @spa_feature_is_enabled(i32* %364, i32 %365)
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %363
  %369 = load i32*, i32** %21, align 8
  %370 = load i32, i32* @FTAG, align 4
  %371 = call i32 @spa_close(i32* %369, i32 %370)
  %372 = load i32, i32* @ENOTSUP, align 4
  %373 = call i32 @SET_ERROR(i32 %372)
  store i32 %373, i32* %4, align 4
  br label %384

374:                                              ; preds = %363
  %375 = load i32*, i32** %21, align 8
  %376 = load i32, i32* @FTAG, align 4
  %377 = call i32 @spa_close(i32* %375, i32 %376)
  br label %378

378:                                              ; preds = %119, %374, %332, %305, %282, %273, %242, %200, %191
  %379 = load i8*, i8** %5, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i32*, i32** %6, align 8
  %382 = call i32 (...) @CRED()
  %383 = call i32 @zfs_secpolicy_setprop(i8* %379, i32 %380, i32* %381, i32 %382)
  store i32 %383, i32* %4, align 4
  br label %384

384:                                              ; preds = %378, %368, %357, %338, %321, %314, %301, %279, %263, %256, %232, %225, %217, %197, %187, %169, %162, %150, %138, %99, %93, %92, %90, %80, %46, %44
  %385 = load i32, i32* %4, align 4
  ret i32 %385
}

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @zfs_name_to_prop(i8*) #1

declare dso_local i64 @zfs_prop_user(i8*) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i8*, i32*) #1

declare dso_local i64 @zfs_prop_userquota(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvpair_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @nvlist_lookup_nvpair(i32*, i32, i32**) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i64*) #1

declare dso_local i32 @zfs_earlier_version(i8*, i32) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @zfs_is_bootfs(i8*) #1

declare dso_local i32 @BOOTFS_COMPRESS_VALID(i64) #1

declare dso_local i32 @zpl_earlier_version(i8*, i32) #1

declare dso_local i32 @zio_checksum_to_feature(i64) #1

declare dso_local i32 @spa_bootfs(i32*) #1

declare dso_local i32 @zfs_secpolicy_setprop(i8*, i32, i32*, i32) #1

declare dso_local i32 @CRED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
