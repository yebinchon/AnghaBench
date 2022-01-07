; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_text_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_text_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { %struct.archive_acl_entry* }
%struct.archive_acl_entry = type { i32, i32, i32, i32, %struct.archive_acl_entry* }
%struct.archive = type { i32 }
%struct.archive_string_conv = type { i32 }

@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ARCHIVE_ENTRY_ACL_STYLE_SOLARIS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_DENY = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_acl*, i32, i32, i32, %struct.archive*, %struct.archive_string_conv*)* @archive_acl_text_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @archive_acl_text_len(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3, %struct.archive* %4, %struct.archive_string_conv* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.archive*, align 8
  %13 = alloca %struct.archive_string_conv*, align 8
  %14 = alloca %struct.archive_acl_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.archive* %4, %struct.archive** %12, align 8
  store %struct.archive_string_conv* %5, %struct.archive_string_conv** %13, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %21, align 8
  %23 = load %struct.archive_acl*, %struct.archive_acl** %8, align 8
  %24 = getelementptr inbounds %struct.archive_acl, %struct.archive_acl* %23, i32 0, i32 0
  %25 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %24, align 8
  store %struct.archive_acl_entry* %25, %struct.archive_acl_entry** %14, align 8
  br label %26

26:                                               ; preds = %261, %6
  %27 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %28 = icmp ne %struct.archive_acl_entry* %27, null
  br i1 %28, label %29, label %265

29:                                               ; preds = %26
  %30 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %31 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %261

37:                                               ; preds = %29
  %38 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %39 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %45 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %50 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 132
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %55 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 130
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %48, %43
  br label %261

59:                                               ; preds = %53, %37
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %68 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i64, i64* %21, align 8
  %75 = add nsw i64 %74, 8
  store i64 %75, i64* %21, align 8
  br label %76

76:                                               ; preds = %73, %66, %59
  %77 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %78 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %105 [
    i32 128, label %80
    i32 129, label %88
    i32 131, label %88
    i32 132, label %91
    i32 133, label %99
    i32 130, label %99
    i32 134, label %102
  ]

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i64, i64* %21, align 8
  %86 = add nsw i64 %85, 6
  store i64 %86, i64* %21, align 8
  br label %105

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %76, %76, %87
  %89 = load i64, i64* %21, align 8
  %90 = add nsw i64 %89, 4
  store i64 %90, i64* %21, align 8
  br label %105

91:                                               ; preds = %76
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, i64* %21, align 8
  %97 = add nsw i64 %96, 6
  store i64 %97, i64* %21, align 8
  br label %105

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %76, %76, %98
  %100 = load i64, i64* %21, align 8
  %101 = add nsw i64 %100, 5
  store i64 %101, i64* %21, align 8
  br label %105

102:                                              ; preds = %76
  %103 = load i64, i64* %21, align 8
  %104 = add nsw i64 %103, 9
  store i64 %104, i64* %21, align 8
  br label %105

105:                                              ; preds = %76, %102, %99, %95, %88, %84
  %106 = load i64, i64* %21, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %21, align 8
  %108 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %109 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 129
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %114 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 133
  br i1 %116, label %117, label %173

117:                                              ; preds = %112, %105
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %117
  %121 = load %struct.archive*, %struct.archive** %12, align 8
  %122 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %123 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %122, i32 0, i32 3
  %124 = call i32 @archive_mstring_get_wcs(%struct.archive* %121, i32* %123, i32** %16)
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i32*, i32** %16, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32*, i32** %16, align 8
  %132 = call i64 @wcslen(i32* %131)
  %133 = load i64, i64* %21, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %21, align 8
  br label %147

135:                                              ; preds = %127, %120
  %136 = load i32, i32* %20, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @ENOMEM, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i64 0, i64* %7, align 8
  br label %289

143:                                              ; preds = %138, %135
  %144 = load i64, i64* %21, align 8
  %145 = add i64 %144, 13
  store i64 %145, i64* %21, align 8
  br label %146

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %146, %130
  br label %170

148:                                              ; preds = %117
  %149 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %150 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %149, i32 0, i32 3
  %151 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %152 = call i32 @archive_mstring_get_mbs_l(i32* %150, i8** %15, i64* %22, %struct.archive_string_conv* %151)
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  store i64 0, i64* %7, align 8
  br label %289

156:                                              ; preds = %148
  %157 = load i64, i64* %22, align 8
  %158 = icmp ugt i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i8*, i8** %15, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i64, i64* %22, align 8
  %164 = load i64, i64* %21, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %21, align 8
  br label %169

166:                                              ; preds = %159, %156
  %167 = load i64, i64* %21, align 8
  %168 = add i64 %167, 13
  store i64 %168, i64* %21, align 8
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %147
  %171 = load i64, i64* %21, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %21, align 8
  br label %181

173:                                              ; preds = %112
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i64, i64* %21, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %21, align 8
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %170
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SOLARIS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %204

186:                                              ; preds = %181
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %186
  %192 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %193 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 130
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %198 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 131
  br i1 %200, label %201, label %204

201:                                              ; preds = %196, %191
  %202 = load i64, i64* %21, align 8
  %203 = sub nsw i64 %202, 1
  store i64 %203, i64* %21, align 8
  br label %204

204:                                              ; preds = %201, %196, %186, %181
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load i64, i64* %21, align 8
  %210 = add nsw i64 %209, 27
  store i64 %210, i64* %21, align 8
  %211 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %212 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DENY, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %208
  %218 = load i64, i64* %21, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %21, align 8
  br label %220

220:                                              ; preds = %217, %208
  br label %224

221:                                              ; preds = %204
  %222 = load i64, i64* %21, align 8
  %223 = add nsw i64 %222, 3
  store i64 %223, i64* %21, align 8
  br label %224

224:                                              ; preds = %221, %220
  %225 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %226 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, 129
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %231 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 133
  br i1 %233, label %234, label %258

234:                                              ; preds = %229, %224
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %258

239:                                              ; preds = %234
  %240 = load i64, i64* %21, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %21, align 8
  store i32 1, i32* %18, align 4
  %242 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %243 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %248, %239
  %246 = load i32, i32* %19, align 4
  %247 = icmp sgt i32 %246, 9
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32, i32* %19, align 4
  %250 = sdiv i32 %249, 10
  store i32 %250, i32* %19, align 4
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %18, align 4
  br label %245

253:                                              ; preds = %245
  %254 = load i32, i32* %18, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %21, align 8
  %257 = add nsw i64 %256, %255
  store i64 %257, i64* %21, align 8
  br label %258

258:                                              ; preds = %253, %234, %229
  %259 = load i64, i64* %21, align 8
  %260 = add nsw i64 %259, 1
  store i64 %260, i64* %21, align 8
  br label %261

261:                                              ; preds = %258, %58, %36
  %262 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %263 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %262, i32 0, i32 4
  %264 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %263, align 8
  store %struct.archive_acl_entry* %264, %struct.archive_acl_entry** %14, align 8
  br label %26

265:                                              ; preds = %26
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SOLARIS, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %270
  %276 = load i64, i64* %21, align 8
  %277 = add nsw i64 %276, 31
  store i64 %277, i64* %21, align 8
  br label %281

278:                                              ; preds = %270
  %279 = load i64, i64* %21, align 8
  %280 = add nsw i64 %279, 32
  store i64 %280, i64* %21, align 8
  br label %281

281:                                              ; preds = %278, %275
  br label %287

282:                                              ; preds = %265
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i64 0, i64* %7, align 8
  br label %289

286:                                              ; preds = %282
  br label %287

287:                                              ; preds = %286, %281
  %288 = load i64, i64* %21, align 8
  store i64 %288, i64* %7, align 8
  br label %289

289:                                              ; preds = %287, %285, %155, %142
  %290 = load i64, i64* %7, align 8
  ret i64 %290
}

declare dso_local i32 @archive_mstring_get_wcs(%struct.archive*, i32*, i32**) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @archive_mstring_get_mbs_l(i32*, i8**, i64*, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
