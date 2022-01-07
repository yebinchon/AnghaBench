; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_mode_compute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_mode_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i64 0, align 8
@S_ISUID = common dso_local global i64 0, align 8
@S_ISGID = common dso_local global i64 0, align 8
@S_ISVTX = common dso_local global i64 0, align 8
@ACE_TYPE_FLAGS = common dso_local global i32 0, align 4
@ACE_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ACE_OWNER = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i64 0, align 8
@ALLOW = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i64 0, align 8
@ACE_EXECUTE = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i64 0, align 8
@OWNING_GROUP = common dso_local global i32 0, align 4
@ACE_IDENTIFIER_GROUP = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i64 0, align 8
@S_IXGRP = common dso_local global i64 0, align 8
@ACE_EVERYONE = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i64 0, align 8
@S_IWOTH = common dso_local global i64 0, align 8
@S_IXOTH = common dso_local global i64 0, align 8
@DENY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ALL_MODE_EXECS = common dso_local global i64 0, align 8
@ZFS_NO_EXECS_DENIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfs_mode_compute(i64 %0, i32* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %20 = load i64, i64* @B_FALSE, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @S_IFMT, align 8
  %23 = load i64, i64* @S_ISUID, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @S_ISGID, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @S_ISVTX, align 8
  %28 = or i64 %26, %27
  %29 = and i64 %21, %28
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %397, %49, %40, %5
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = call i32* @zfs_acl_next_ace(i32* %31, i32* %32, i64* %15, i32* %18, i32* %16, i32* %17)
  store i32* %33, i32** %14, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %398

35:                                               ; preds = %30
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @zfs_acl_valid_ace_type(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %30

41:                                               ; preds = %35
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* @ACE_TYPE_FLAGS, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @ACE_INHERIT_ONLY_ACE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %30

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ACE_OWNER, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %128

57:                                               ; preds = %54
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @ACE_READ_DATA, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @S_IRUSR, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @S_IRUSR, align 8
  %73 = load i64, i64* %13, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %13, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @ALLOW, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i64, i64* @S_IRUSR, align 8
  %80 = load i64, i64* %12, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %78, %71
  br label %83

83:                                               ; preds = %82, %66, %61
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* @ACE_WRITE_DATA, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @S_IWUSR, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* @S_IWUSR, align 8
  %95 = load i64, i64* %13, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %13, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @ALLOW, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i64, i64* @S_IWUSR, align 8
  %102 = load i64, i64* %12, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %12, align 8
  br label %104

104:                                              ; preds = %100, %93
  br label %105

105:                                              ; preds = %104, %88, %83
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* @ACE_EXECUTE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* @S_IXUSR, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %127, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* @S_IXUSR, align 8
  %117 = load i64, i64* %13, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %13, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* @ALLOW, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i64, i64* @S_IXUSR, align 8
  %124 = load i64, i64* %12, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %122, %115
  br label %127

127:                                              ; preds = %126, %110, %105
  br label %397

128:                                              ; preds = %57, %54
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @OWNING_GROUP, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @ACE_IDENTIFIER_GROUP, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %207

136:                                              ; preds = %132
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %207

140:                                              ; preds = %136, %128
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @ACE_READ_DATA, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @S_IRGRP, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %145
  %151 = load i64, i64* @S_IRGRP, align 8
  %152 = load i64, i64* %13, align 8
  %153 = or i64 %152, %151
  store i64 %153, i64* %13, align 8
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @ALLOW, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i64, i64* @S_IRGRP, align 8
  %159 = load i64, i64* %12, align 8
  %160 = or i64 %159, %158
  store i64 %160, i64* %12, align 8
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %145, %140
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* @ACE_WRITE_DATA, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %162
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* @S_IWGRP, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %167
  %173 = load i64, i64* @S_IWGRP, align 8
  %174 = load i64, i64* %13, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %13, align 8
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* @ALLOW, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i64, i64* @S_IWGRP, align 8
  %181 = load i64, i64* %12, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %12, align 8
  br label %183

183:                                              ; preds = %179, %172
  br label %184

184:                                              ; preds = %183, %167, %162
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* @ACE_EXECUTE, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %184
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* @S_IXGRP, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %189
  %195 = load i64, i64* @S_IXGRP, align 8
  %196 = load i64, i64* %13, align 8
  %197 = or i64 %196, %195
  store i64 %197, i64* %13, align 8
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* @ALLOW, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i64, i64* @S_IXGRP, align 8
  %203 = load i64, i64* %12, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %12, align 8
  br label %205

205:                                              ; preds = %201, %194
  br label %206

206:                                              ; preds = %205, %189, %184
  br label %396

207:                                              ; preds = %136, %132
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @ACE_EVERYONE, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %383

211:                                              ; preds = %207
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* @ACE_READ_DATA, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %268

216:                                              ; preds = %211
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* @S_IRUSR, align 8
  %219 = and i64 %217, %218
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %216
  %222 = load i64, i64* @S_IRUSR, align 8
  %223 = load i64, i64* %13, align 8
  %224 = or i64 %223, %222
  store i64 %224, i64* %13, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* @ALLOW, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i64, i64* @S_IRUSR, align 8
  %230 = load i64, i64* %12, align 8
  %231 = or i64 %230, %229
  store i64 %231, i64* %12, align 8
  br label %232

232:                                              ; preds = %228, %221
  br label %233

233:                                              ; preds = %232, %216
  %234 = load i64, i64* %13, align 8
  %235 = load i64, i64* @S_IRGRP, align 8
  %236 = and i64 %234, %235
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %233
  %239 = load i64, i64* @S_IRGRP, align 8
  %240 = load i64, i64* %13, align 8
  %241 = or i64 %240, %239
  store i64 %241, i64* %13, align 8
  %242 = load i32, i32* %17, align 4
  %243 = load i32, i32* @ALLOW, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %238
  %246 = load i64, i64* @S_IRGRP, align 8
  %247 = load i64, i64* %12, align 8
  %248 = or i64 %247, %246
  store i64 %248, i64* %12, align 8
  br label %249

249:                                              ; preds = %245, %238
  br label %250

250:                                              ; preds = %249, %233
  %251 = load i64, i64* %13, align 8
  %252 = load i64, i64* @S_IROTH, align 8
  %253 = and i64 %251, %252
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %250
  %256 = load i64, i64* @S_IROTH, align 8
  %257 = load i64, i64* %13, align 8
  %258 = or i64 %257, %256
  store i64 %258, i64* %13, align 8
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @ALLOW, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i64, i64* @S_IROTH, align 8
  %264 = load i64, i64* %12, align 8
  %265 = or i64 %264, %263
  store i64 %265, i64* %12, align 8
  br label %266

266:                                              ; preds = %262, %255
  br label %267

267:                                              ; preds = %266, %250
  br label %268

268:                                              ; preds = %267, %211
  %269 = load i32, i32* %18, align 4
  %270 = load i32, i32* @ACE_WRITE_DATA, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %325

273:                                              ; preds = %268
  %274 = load i64, i64* %13, align 8
  %275 = load i64, i64* @S_IWUSR, align 8
  %276 = and i64 %274, %275
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %273
  %279 = load i64, i64* @S_IWUSR, align 8
  %280 = load i64, i64* %13, align 8
  %281 = or i64 %280, %279
  store i64 %281, i64* %13, align 8
  %282 = load i32, i32* %17, align 4
  %283 = load i32, i32* @ALLOW, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %278
  %286 = load i64, i64* @S_IWUSR, align 8
  %287 = load i64, i64* %12, align 8
  %288 = or i64 %287, %286
  store i64 %288, i64* %12, align 8
  br label %289

289:                                              ; preds = %285, %278
  br label %290

290:                                              ; preds = %289, %273
  %291 = load i64, i64* %13, align 8
  %292 = load i64, i64* @S_IWGRP, align 8
  %293 = and i64 %291, %292
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %290
  %296 = load i64, i64* @S_IWGRP, align 8
  %297 = load i64, i64* %13, align 8
  %298 = or i64 %297, %296
  store i64 %298, i64* %13, align 8
  %299 = load i32, i32* %17, align 4
  %300 = load i32, i32* @ALLOW, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load i64, i64* @S_IWGRP, align 8
  %304 = load i64, i64* %12, align 8
  %305 = or i64 %304, %303
  store i64 %305, i64* %12, align 8
  br label %306

306:                                              ; preds = %302, %295
  br label %307

307:                                              ; preds = %306, %290
  %308 = load i64, i64* %13, align 8
  %309 = load i64, i64* @S_IWOTH, align 8
  %310 = and i64 %308, %309
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %307
  %313 = load i64, i64* @S_IWOTH, align 8
  %314 = load i64, i64* %13, align 8
  %315 = or i64 %314, %313
  store i64 %315, i64* %13, align 8
  %316 = load i32, i32* %17, align 4
  %317 = load i32, i32* @ALLOW, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %312
  %320 = load i64, i64* @S_IWOTH, align 8
  %321 = load i64, i64* %12, align 8
  %322 = or i64 %321, %320
  store i64 %322, i64* %12, align 8
  br label %323

323:                                              ; preds = %319, %312
  br label %324

324:                                              ; preds = %323, %307
  br label %325

325:                                              ; preds = %324, %268
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* @ACE_EXECUTE, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %382

330:                                              ; preds = %325
  %331 = load i64, i64* %13, align 8
  %332 = load i64, i64* @S_IXUSR, align 8
  %333 = and i64 %331, %332
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %347, label %335

335:                                              ; preds = %330
  %336 = load i64, i64* @S_IXUSR, align 8
  %337 = load i64, i64* %13, align 8
  %338 = or i64 %337, %336
  store i64 %338, i64* %13, align 8
  %339 = load i32, i32* %17, align 4
  %340 = load i32, i32* @ALLOW, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %335
  %343 = load i64, i64* @S_IXUSR, align 8
  %344 = load i64, i64* %12, align 8
  %345 = or i64 %344, %343
  store i64 %345, i64* %12, align 8
  br label %346

346:                                              ; preds = %342, %335
  br label %347

347:                                              ; preds = %346, %330
  %348 = load i64, i64* %13, align 8
  %349 = load i64, i64* @S_IXGRP, align 8
  %350 = and i64 %348, %349
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %364, label %352

352:                                              ; preds = %347
  %353 = load i64, i64* @S_IXGRP, align 8
  %354 = load i64, i64* %13, align 8
  %355 = or i64 %354, %353
  store i64 %355, i64* %13, align 8
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* @ALLOW, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %352
  %360 = load i64, i64* @S_IXGRP, align 8
  %361 = load i64, i64* %12, align 8
  %362 = or i64 %361, %360
  store i64 %362, i64* %12, align 8
  br label %363

363:                                              ; preds = %359, %352
  br label %364

364:                                              ; preds = %363, %347
  %365 = load i64, i64* %13, align 8
  %366 = load i64, i64* @S_IXOTH, align 8
  %367 = and i64 %365, %366
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %381, label %369

369:                                              ; preds = %364
  %370 = load i64, i64* @S_IXOTH, align 8
  %371 = load i64, i64* %13, align 8
  %372 = or i64 %371, %370
  store i64 %372, i64* %13, align 8
  %373 = load i32, i32* %17, align 4
  %374 = load i32, i32* @ALLOW, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load i64, i64* @S_IXOTH, align 8
  %378 = load i64, i64* %12, align 8
  %379 = or i64 %378, %377
  store i64 %379, i64* %12, align 8
  br label %380

380:                                              ; preds = %376, %369
  br label %381

381:                                              ; preds = %380, %364
  br label %382

382:                                              ; preds = %381, %325
  br label %395

383:                                              ; preds = %207
  %384 = load i32, i32* %18, align 4
  %385 = load i32, i32* @ACE_EXECUTE, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %394

388:                                              ; preds = %383
  %389 = load i32, i32* %17, align 4
  %390 = load i32, i32* @DENY, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %388
  %393 = load i64, i64* @B_TRUE, align 8
  store i64 %393, i64* %19, align 8
  br label %394

394:                                              ; preds = %392, %388, %383
  br label %395

395:                                              ; preds = %394, %382
  br label %396

396:                                              ; preds = %395, %206
  br label %397

397:                                              ; preds = %396, %127
  br label %30

398:                                              ; preds = %30
  %399 = load i64, i64* %19, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %415, label %401

401:                                              ; preds = %398
  %402 = load i64, i64* %13, align 8
  %403 = load i64, i64* @ALL_MODE_EXECS, align 8
  %404 = and i64 %402, %403
  %405 = load i64, i64* @ALL_MODE_EXECS, align 8
  %406 = icmp ne i64 %404, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %401
  %408 = load i64, i64* %12, align 8
  %409 = load i64, i64* @ALL_MODE_EXECS, align 8
  %410 = and i64 %408, %409
  %411 = load i64, i64* @ALL_MODE_EXECS, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %407, %401
  %414 = load i64, i64* @B_TRUE, align 8
  store i64 %414, i64* %19, align 8
  br label %415

415:                                              ; preds = %413, %407, %398
  %416 = load i64, i64* %19, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %424

418:                                              ; preds = %415
  %419 = load i64, i64* @ZFS_NO_EXECS_DENIED, align 8
  %420 = xor i64 %419, -1
  %421 = load i64*, i64** %8, align 8
  %422 = load i64, i64* %421, align 8
  %423 = and i64 %422, %420
  store i64 %423, i64* %421, align 8
  br label %429

424:                                              ; preds = %415
  %425 = load i64, i64* @ZFS_NO_EXECS_DENIED, align 8
  %426 = load i64*, i64** %8, align 8
  %427 = load i64, i64* %426, align 8
  %428 = or i64 %427, %425
  store i64 %428, i64* %426, align 8
  br label %429

429:                                              ; preds = %424, %418
  %430 = load i64, i64* %12, align 8
  ret i64 %430
}

declare dso_local i32* @zfs_acl_next_ace(i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_acl_valid_ace_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
