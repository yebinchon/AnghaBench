; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }

@ZFS_XATTR = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@V_APPEND = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@ZFS_CHECKED_MASKS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_zaccess(%struct.TYPE_13__* %0, i32 %1, i32 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %17, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ZFS_XATTR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %30)
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VDIR, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %29, %5
  %37 = phi i1 [ false, %5 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SA_ZPL_PARENT(i32 %47)
  %49 = call i32 @sa_lookup(i32 %44, i32 %48, i32* %20, i32 4)
  store i32 %49, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %393

53:                                               ; preds = %41
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @zfs_zget(i32 %56, i32 %57, %struct.TYPE_13__** %16)
  store i32 %58, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %393

62:                                               ; preds = %53
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %17, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ACE_WRITE_DATA, align 4
  %66 = load i32, i32* @ACE_APPEND_DATA, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i32, i32* @ACE_WRITE_DATA, align 4
  %72 = load i32, i32* @ACE_APPEND_DATA, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %70, %62
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ACE_READ_DATA, align 4
  %83 = load i32, i32* @ACE_EXECUTE, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load i32, i32* @ACE_READ_DATA, align 4
  %89 = load i32, i32* @ACE_EXECUTE, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %87, %80
  br label %98

98:                                               ; preds = %97, %36
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* @ZFS_OWNER, align 4
  %107 = call i64 @zfs_fuid_map_id(i32 %101, i32 %104, i32* %105, i32 %106)
  store i64 %107, i64* %19, align 8
  store i32 0, i32* %18, align 4
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @ACE_READ_ACL, align 4
  %111 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %98
  %116 = load i64, i64* %19, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i64 @crgetuid(i32* %117)
  %119 = icmp eq i64 %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* @ACE_READ_ACL, align 4
  %122 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %120, %115, %98
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @ACE_READ_DATA, align 4
  %130 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @ACE_READ_ACL, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %137 = or i32 %135, %136
  %138 = and i32 %128, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %127
  %141 = load i32, i32* @VREAD, align 4
  %142 = load i32, i32* %18, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %140, %127
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @ACE_WRITE_DATA, align 4
  %147 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @ACE_APPEND_DATA, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %145, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %144
  %158 = load i32, i32* @VWRITE, align 4
  %159 = load i32, i32* %18, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %157, %144
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @ACE_EXECUTE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i32, i32* @VEXEC, align 4
  %168 = load i32, i32* %18, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %166, %161
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i64, i64* %10, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @zfs_zaccess_common(%struct.TYPE_13__* %171, i32 %172, i32* %12, i64* %15, i64 %173, i32* %174)
  store i32 %175, i32* %13, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %182 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %181)
  %183 = call i32 @VN_RELE(%struct.TYPE_14__* %182)
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32*, i32** %11, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %186)
  %188 = load i64, i64* %19, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @secpolicy_vnode_access2(i32* %185, %struct.TYPE_14__* %187, i64 %188, i32 %189, i32 %190)
  store i32 %191, i32* %6, align 4
  br label %393

192:                                              ; preds = %170
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load i64, i64* %15, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %203 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %202)
  %204 = call i32 @VN_RELE(%struct.TYPE_14__* %203)
  br label %205

205:                                              ; preds = %201, %198
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %6, align 4
  br label %393

207:                                              ; preds = %195, %192
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @V_APPEND, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @zfs_zaccess_append(%struct.TYPE_13__* %216, i32* %12, i64* %15, i32* %217)
  store i32 %218, i32* %13, align 4
  br label %219

219:                                              ; preds = %215, %210, %207
  %220 = load i32, i32* %13, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %372

222:                                              ; preds = %219
  %223 = load i64, i64* %15, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %372

225:                                              ; preds = %222
  store i32 0, i32* %21, align 4
  store i32 0, i32* %13, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i32
  %229 = call i32 @ASSERT(i32 %228)
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @ACE_READ_ACL, align 4
  %232 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %233 = or i32 %231, %232
  %234 = and i32 %230, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %225
  %237 = load i64, i64* %19, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = call i64 @crgetuid(i32* %238)
  %240 = icmp eq i64 %237, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %236
  %242 = load i32, i32* @ACE_READ_ACL, align 4
  %243 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %244 = or i32 %242, %243
  %245 = xor i32 %244, -1
  %246 = load i32, i32* %12, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %12, align 4
  br label %248

248:                                              ; preds = %241, %236, %225
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* @ACE_READ_DATA, align 4
  %251 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* @ACE_READ_ACL, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %258 = or i32 %256, %257
  %259 = and i32 %249, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %248
  %262 = load i32, i32* @VREAD, align 4
  %263 = load i32, i32* %21, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %21, align 4
  br label %265

265:                                              ; preds = %261, %248
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* @ACE_WRITE_DATA, align 4
  %268 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @ACE_APPEND_DATA, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %275 = or i32 %273, %274
  %276 = and i32 %266, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %265
  %279 = load i32, i32* @VWRITE, align 4
  %280 = load i32, i32* %21, align 4
  %281 = or i32 %280, %279
  store i32 %281, i32* %21, align 4
  br label %282

282:                                              ; preds = %278, %265
  %283 = load i32, i32* %12, align 4
  %284 = load i32, i32* @ACE_EXECUTE, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %282
  %288 = load i32, i32* @VEXEC, align 4
  %289 = load i32, i32* %21, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %21, align 4
  br label %291

291:                                              ; preds = %287, %282
  %292 = load i32*, i32** %11, align 8
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %294 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %293)
  %295 = load i64, i64* %19, align 8
  %296 = load i32, i32* %18, align 4
  %297 = load i32, i32* %21, align 4
  %298 = xor i32 %297, -1
  %299 = and i32 %296, %298
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @secpolicy_vnode_access2(i32* %292, %struct.TYPE_14__* %294, i64 %295, i32 %299, i32 %300)
  store i32 %301, i32* %13, align 4
  %302 = load i32, i32* %13, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %291
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %304
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %311 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %310)
  %312 = load i32*, i32** %11, align 8
  %313 = load i64, i64* %19, align 8
  %314 = call i32 @secpolicy_vnode_chown(%struct.TYPE_14__* %311, i32* %312, i64 %313)
  store i32 %314, i32* %13, align 4
  br label %315

315:                                              ; preds = %309, %304, %291
  %316 = load i32, i32* %13, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %315
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* @ACE_WRITE_ACL, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %318
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %325 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %324)
  %326 = load i32*, i32** %11, align 8
  %327 = load i64, i64* %19, align 8
  %328 = call i32 @secpolicy_vnode_setdac(%struct.TYPE_14__* %325, i32* %326, i64 %327)
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %323, %318, %315
  %330 = load i32, i32* %13, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %344

332:                                              ; preds = %329
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @ACE_DELETE, align 4
  %335 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %336 = or i32 %334, %335
  %337 = and i32 %333, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %332
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %341 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %340)
  %342 = load i32*, i32** %11, align 8
  %343 = call i32 @secpolicy_vnode_remove(%struct.TYPE_14__* %341, i32* %342)
  store i32 %343, i32* %13, align 4
  br label %344

344:                                              ; preds = %339, %332, %329
  %345 = load i32, i32* %13, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %344
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %354 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %353)
  %355 = load i32*, i32** %11, align 8
  %356 = load i64, i64* %19, align 8
  %357 = call i32 @secpolicy_vnode_chown(%struct.TYPE_14__* %354, i32* %355, i64 %356)
  store i32 %357, i32* %13, align 4
  br label %358

358:                                              ; preds = %352, %347, %344
  %359 = load i32, i32* %13, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %358
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* @ZFS_CHECKED_MASKS, align 4
  %364 = xor i32 %363, -1
  %365 = and i32 %362, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = load i32, i32* @EACCES, align 4
  %369 = call i32 @SET_ERROR(i32 %368)
  store i32 %369, i32* %13, align 4
  br label %370

370:                                              ; preds = %367, %361
  br label %371

371:                                              ; preds = %370, %358
  br label %384

372:                                              ; preds = %222, %219
  %373 = load i32, i32* %13, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %383

375:                                              ; preds = %372
  %376 = load i32*, i32** %11, align 8
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %378 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %377)
  %379 = load i64, i64* %19, align 8
  %380 = load i32, i32* %18, align 4
  %381 = load i32, i32* %18, align 4
  %382 = call i32 @secpolicy_vnode_access2(i32* %376, %struct.TYPE_14__* %378, i64 %379, i32 %380, i32 %381)
  store i32 %382, i32* %13, align 4
  br label %383

383:                                              ; preds = %375, %372
  br label %384

384:                                              ; preds = %383, %371
  %385 = load i32, i32* %14, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %389 = call %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__* %388)
  %390 = call i32 @VN_RELE(%struct.TYPE_14__* %389)
  br label %391

391:                                              ; preds = %387, %384
  %392 = load i32, i32* %13, align 4
  store i32 %392, i32* %6, align 4
  br label %393

393:                                              ; preds = %391, %205, %184, %60, %51
  %394 = load i32, i32* %6, align 4
  ret i32 %394
}

declare dso_local %struct.TYPE_14__* @ZTOV(%struct.TYPE_13__*) #1

declare dso_local i32 @sa_lookup(i32, i32, i32*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(i32) #1

declare dso_local i32 @zfs_zget(i32, i32, %struct.TYPE_13__**) #1

declare dso_local i64 @zfs_fuid_map_id(i32, i32, i32*, i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i32 @zfs_zaccess_common(%struct.TYPE_13__*, i32, i32*, i64*, i64, i32*) #1

declare dso_local i32 @VN_RELE(%struct.TYPE_14__*) #1

declare dso_local i32 @secpolicy_vnode_access2(i32*, %struct.TYPE_14__*, i64, i32, i32) #1

declare dso_local i32 @zfs_zaccess_append(%struct.TYPE_13__*, i32*, i64*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @secpolicy_vnode_chown(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32 @secpolicy_vnode_setdac(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32 @secpolicy_vnode_remove(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
