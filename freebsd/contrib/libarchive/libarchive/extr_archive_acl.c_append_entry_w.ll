; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_append_entry_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_append_entry_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 111, i32 119, i32 110, i32 101, i32 114, i32 64, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 103, i32 114, i32 111, i32 117, i32 112, i32 64, i32 0], align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 103, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.4 = private unnamed_addr constant [5 x i32] [i32 109, i32 97, i32 115, i32 107, i32 0], align 4
@.str.5 = private unnamed_addr constant [6 x i32] [i32 111, i32 116, i32 104, i32 101, i32 114, i32 0], align 4
@.str.6 = private unnamed_addr constant [10 x i32] [i32 101, i32 118, i32 101, i32 114, i32 121, i32 111, i32 110, i32 101, i32 64, i32 0], align 4
@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_SOLARIS = common dso_local global i32 0, align 4
@nfsv4_acl_perm_map_size = common dso_local global i32 0, align 4
@nfsv4_acl_perm_map = common dso_local global %struct.TYPE_3__* null, align 8
@ARCHIVE_ENTRY_ACL_STYLE_COMPACT = common dso_local global i32 0, align 4
@nfsv4_acl_flag_map_size = common dso_local global i32 0, align 4
@nfsv4_acl_flag_map = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [6 x i32] [i32 97, i32 108, i32 108, i32 111, i32 119, i32 0], align 4
@.str.8 = private unnamed_addr constant [5 x i32] [i32 100, i32 101, i32 110, i32 121, i32 0], align 4
@.str.9 = private unnamed_addr constant [6 x i32] [i32 97, i32 117, i32 100, i32 105, i32 116, i32 0], align 4
@.str.10 = private unnamed_addr constant [6 x i32] [i32 97, i32 108, i32 97, i32 114, i32 109, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i32, i32, i32, i8*, i32, i32)* @append_entry_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_entry_w(i8** %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8** %0, i8*** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %8
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @wcscpy(i8* %22, i8* %23)
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @wcslen(i8* %26)
  %28 = load i8**, i8*** %9, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %28, align 8
  br label %32

32:                                               ; preds = %20, %8
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %74 [
    i32 128, label %34
    i32 129, label %44
    i32 136, label %48
    i32 137, label %58
    i32 135, label %62
    i32 134, label %66
    i32 138, label %70
  ]

34:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i8**, i8*** %9, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @wcscpy(i8* %41, i8* bitcast ([7 x i32]* @.str to i8*))
  br label %74

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %32, %43
  %45 = load i8**, i8*** %9, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @wcscpy(i8* %46, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  br label %74

48:                                               ; preds = %32
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @wcscpy(i8* %55, i8* bitcast ([7 x i32]* @.str.2 to i8*))
  br label %74

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %32, %57
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @wcscpy(i8* %60, i8* bitcast ([6 x i32]* @.str.3 to i8*))
  br label %74

62:                                               ; preds = %32
  %63 = load i8**, i8*** %9, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @wcscpy(i8* %64, i8* bitcast ([5 x i32]* @.str.4 to i8*))
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  br label %74

66:                                               ; preds = %32
  %67 = load i8**, i8*** %9, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @wcscpy(i8* %68, i8* bitcast ([6 x i32]* @.str.5 to i8*))
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  br label %74

70:                                               ; preds = %32
  %71 = load i8**, i8*** %9, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @wcscpy(i8* %72, i8* bitcast ([10 x i32]* @.str.6 to i8*))
  store i8* null, i8** %14, align 8
  store i32 -1, i32* %16, align 4
  br label %74

74:                                               ; preds = %32, %70, %66, %62, %58, %53, %44, %39
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @wcslen(i8* %76)
  %78 = load i8**, i8*** %9, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = sext i32 %77 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %78, align 8
  %82 = load i8**, i8*** %9, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %82, align 8
  store i8 58, i8* %83, align 1
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = icmp eq i32 %93, 137
  br i1 %94, label %95, label %143

95:                                               ; preds = %92, %89, %74
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i8**, i8*** %9, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = call i32 @wcscpy(i8* %100, i8* %101)
  %103 = load i8**, i8*** %9, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @wcslen(i8* %104)
  %106 = load i8**, i8*** %9, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = sext i32 %105 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %106, align 8
  br label %127

110:                                              ; preds = %95
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %111, 129
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 137
  br i1 %115, label %116, label %126

116:                                              ; preds = %113, %110
  %117 = load i8**, i8*** %9, align 8
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @append_id_w(i8** %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 -1, i32* %16, align 4
  br label %125

125:                                              ; preds = %124, %116
  br label %126

126:                                              ; preds = %125, %113
  br label %127

127:                                              ; preds = %126, %98
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SOLARIS, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 134
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 135
  br i1 %137, label %138, label %142

138:                                              ; preds = %135, %127
  %139 = load i8**, i8*** %9, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %139, align 8
  store i8 58, i8* %140, align 1
  br label %142

142:                                              ; preds = %138, %135, %132
  br label %143

143:                                              ; preds = %142, %92
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %143
  %149 = load i32, i32* %15, align 4
  %150 = and i32 %149, 292
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 114, i32 45
  %154 = trunc i32 %153 to i8
  %155 = load i8**, i8*** %9, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %155, align 8
  store i8 %154, i8* %156, align 1
  %158 = load i32, i32* %15, align 4
  %159 = and i32 %158, 146
  %160 = icmp ne i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 119, i32 45
  %163 = trunc i32 %162 to i8
  %164 = load i8**, i8*** %9, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %164, align 8
  store i8 %163, i8* %165, align 1
  %167 = load i32, i32* %15, align 4
  %168 = and i32 %167, 73
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 120, i32 45
  %172 = trunc i32 %171 to i8
  %173 = load i8**, i8*** %9, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %173, align 8
  store i8 %172, i8* %174, align 1
  br label %289

176:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %177

177:                                              ; preds = %213, %176
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* @nfsv4_acl_perm_map_size, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %216

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfsv4_acl_perm_map, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %182, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %181
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** @nfsv4_acl_perm_map, align 8
  %193 = load i32, i32* %17, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = trunc i32 %197 to i8
  %199 = load i8**, i8*** %9, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %199, align 8
  store i8 %198, i8* %200, align 1
  br label %212

202:                                              ; preds = %181
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_COMPACT, align 4
  %205 = and i32 %203, %204
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i8**, i8*** %9, align 8
  %209 = load i8*, i8** %208, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %208, align 8
  store i8 45, i8* %209, align 1
  br label %211

211:                                              ; preds = %207, %202
  br label %212

212:                                              ; preds = %211, %191
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %177

216:                                              ; preds = %177
  %217 = load i8**, i8*** %9, align 8
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %217, align 8
  store i8 58, i8* %218, align 1
  store i32 0, i32* %17, align 4
  br label %220

220:                                              ; preds = %256, %216
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* @nfsv4_acl_flag_map_size, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %259

224:                                              ; preds = %220
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsv4_acl_flag_map, align 8
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %225, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %224
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nfsv4_acl_flag_map, align 8
  %236 = load i32, i32* %17, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = trunc i32 %240 to i8
  %242 = load i8**, i8*** %9, align 8
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %242, align 8
  store i8 %241, i8* %243, align 1
  br label %255

245:                                              ; preds = %224
  %246 = load i32, i32* %13, align 4
  %247 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_COMPACT, align 4
  %248 = and i32 %246, %247
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i8**, i8*** %9, align 8
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %251, align 8
  store i8 45, i8* %252, align 1
  br label %254

254:                                              ; preds = %250, %245
  br label %255

255:                                              ; preds = %254, %234
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  br label %220

259:                                              ; preds = %220
  %260 = load i8**, i8*** %9, align 8
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %260, align 8
  store i8 58, i8* %261, align 1
  %263 = load i32, i32* %11, align 4
  switch i32 %263, label %280 [
    i32 132, label %264
    i32 130, label %268
    i32 131, label %272
    i32 133, label %276
  ]

264:                                              ; preds = %259
  %265 = load i8**, i8*** %9, align 8
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @wcscpy(i8* %266, i8* bitcast ([6 x i32]* @.str.7 to i8*))
  br label %281

268:                                              ; preds = %259
  %269 = load i8**, i8*** %9, align 8
  %270 = load i8*, i8** %269, align 8
  %271 = call i32 @wcscpy(i8* %270, i8* bitcast ([5 x i32]* @.str.8 to i8*))
  br label %281

272:                                              ; preds = %259
  %273 = load i8**, i8*** %9, align 8
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @wcscpy(i8* %274, i8* bitcast ([6 x i32]* @.str.9 to i8*))
  br label %281

276:                                              ; preds = %259
  %277 = load i8**, i8*** %9, align 8
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @wcscpy(i8* %278, i8* bitcast ([6 x i32]* @.str.10 to i8*))
  br label %281

280:                                              ; preds = %259
  br label %281

281:                                              ; preds = %280, %276, %272, %268, %264
  %282 = load i8**, i8*** %9, align 8
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @wcslen(i8* %283)
  %285 = load i8**, i8*** %9, align 8
  %286 = load i8*, i8** %285, align 8
  %287 = sext i32 %284 to i64
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  store i8* %288, i8** %285, align 8
  br label %289

289:                                              ; preds = %281, %148
  %290 = load i32, i32* %16, align 4
  %291 = icmp ne i32 %290, -1
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load i8**, i8*** %9, align 8
  %294 = load i8*, i8** %293, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %293, align 8
  store i8 58, i8* %294, align 1
  %296 = load i8**, i8*** %9, align 8
  %297 = load i32, i32* %16, align 4
  %298 = call i32 @append_id_w(i8** %296, i32 %297)
  br label %299

299:                                              ; preds = %292, %289
  ret void
}

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @append_id_w(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
