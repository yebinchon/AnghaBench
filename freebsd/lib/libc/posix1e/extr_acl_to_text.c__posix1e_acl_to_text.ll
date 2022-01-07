; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text.c__posix1e_acl_to_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_acl_to_text.c__posix1e_acl_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.acl }
%struct.acl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@MAXLOGNAME = common dso_local global i32 0, align 4
@_POSIX1E_ACL_STRING_PERM_MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ACL_PERM_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%suser::%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%suser:%s:%s\09\09# effective: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%suser:%s:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%sgroup::%s\09\09# effective: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"%sgroup::%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%sgroup:%s:%s\09\09# effective: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%sgroup:%s:%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"%smask::%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%sother::%s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i32*, i32)* @_posix1e_acl_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_posix1e_acl_to_text(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load i32, i32* @MAXLOGNAME, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %28 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %32 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %14, align 8
  %36 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %23, align 4
  br label %312

40:                                               ; preds = %3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store %struct.acl* %42, %struct.acl** %8, align 8
  %43 = load i32, i32* @ACL_PERM_BITS, align 4
  store i32 %43, i32* %22, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %70, %40
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.acl*, %struct.acl** %8, align 8
  %47 = getelementptr inbounds %struct.acl, %struct.acl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %44
  %51 = load %struct.acl*, %struct.acl** %8, align 8
  %52 = getelementptr inbounds %struct.acl, %struct.acl* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 131
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.acl*, %struct.acl** %8, align 8
  %62 = getelementptr inbounds %struct.acl, %struct.acl* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %60, %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %44

73:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  br label %74

74:                                               ; preds = %293, %73
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.acl*, %struct.acl** %8, align 8
  %77 = getelementptr inbounds %struct.acl, %struct.acl* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %296

80:                                               ; preds = %74
  %81 = load %struct.acl*, %struct.acl** %8, align 8
  %82 = getelementptr inbounds %struct.acl, %struct.acl* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %19, align 4
  %90 = load %struct.acl*, %struct.acl** %8, align 8
  %91 = getelementptr inbounds %struct.acl, %struct.acl* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %18, align 4
  %98 = load %struct.acl*, %struct.acl** %8, align 8
  %99 = getelementptr inbounds %struct.acl, %struct.acl* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %19, align 4
  switch i32 %106, label %290 [
    i32 128, label %107
    i32 129, label %125
    i32 132, label %171
    i32 133, label %208
    i32 131, label %254
    i32 130, label %272
  ]

107:                                              ; preds = %80
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @_posix1e_acl_perm_to_string(i32 %108, i32 %110, i8* %31)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %305

115:                                              ; preds = %107
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %116, i8* %31)
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %305

121:                                              ; preds = %115
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %10, align 8
  store i8* %124, i8** %9, align 8
  br label %292

125:                                              ; preds = %80
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 @_posix1e_acl_perm_to_string(i32 %126, i32 %128, i8* %31)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %305

133:                                              ; preds = %125
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* @MAXLOGNAME, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @_posix1e_acl_id_to_name(i32 %134, i32 %135, i32 %136, i8* %27, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %305

142:                                              ; preds = %133
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* %22, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %142
  %150 = load i32, i32* %21, align 4
  %151 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @_posix1e_acl_perm_to_string(i32 %150, i32 %152, i8* %35)
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  br label %305

157:                                              ; preds = %149
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %158, i8* %27, i8* %31, i8* %35)
  store i32 %159, i32* %17, align 4
  br label %163

160:                                              ; preds = %142
  %161 = load i8*, i8** %9, align 8
  %162 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %161, i8* %27, i8* %31)
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %17, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  br label %305

167:                                              ; preds = %163
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 @free(i8* %168)
  %170 = load i8*, i8** %10, align 8
  store i8* %170, i8** %9, align 8
  br label %292

171:                                              ; preds = %80
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %174 = add nsw i32 %173, 1
  %175 = call i32 @_posix1e_acl_perm_to_string(i32 %172, i32 %174, i8* %31)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %305

179:                                              ; preds = %171
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %22, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %189 = add nsw i32 %188, 1
  %190 = call i32 @_posix1e_acl_perm_to_string(i32 %187, i32 %189, i8* %35)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %305

194:                                              ; preds = %186
  %195 = load i8*, i8** %9, align 8
  %196 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %195, i8* %31, i8* %35)
  store i32 %196, i32* %17, align 4
  br label %200

197:                                              ; preds = %179
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %198, i8* %31)
  store i32 %199, i32* %17, align 4
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %17, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %305

204:                                              ; preds = %200
  %205 = load i8*, i8** %9, align 8
  %206 = call i32 @free(i8* %205)
  %207 = load i8*, i8** %10, align 8
  store i8* %207, i8** %9, align 8
  br label %292

208:                                              ; preds = %80
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %211 = add nsw i32 %210, 1
  %212 = call i32 @_posix1e_acl_perm_to_string(i32 %209, i32 %211, i8* %31)
  store i32 %212, i32* %16, align 4
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  br label %305

216:                                              ; preds = %208
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* @MAXLOGNAME, align 4
  %220 = load i32, i32* %7, align 4
  %221 = call i32 @_posix1e_acl_id_to_name(i32 %217, i32 %218, i32 %219, i8* %27, i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  br label %305

225:                                              ; preds = %216
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* %22, align 4
  %228 = and i32 %226, %227
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %20, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %225
  %233 = load i32, i32* %21, align 4
  %234 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %235 = add nsw i32 %234, 1
  %236 = call i32 @_posix1e_acl_perm_to_string(i32 %233, i32 %235, i8* %35)
  store i32 %236, i32* %16, align 4
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %305

240:                                              ; preds = %232
  %241 = load i8*, i8** %9, align 8
  %242 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %241, i8* %27, i8* %31, i8* %35)
  store i32 %242, i32* %17, align 4
  br label %246

243:                                              ; preds = %225
  %244 = load i8*, i8** %9, align 8
  %245 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %244, i8* %27, i8* %31)
  store i32 %245, i32* %17, align 4
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i32, i32* %17, align 4
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %305

250:                                              ; preds = %246
  %251 = load i8*, i8** %9, align 8
  %252 = call i32 @free(i8* %251)
  %253 = load i8*, i8** %10, align 8
  store i8* %253, i8** %9, align 8
  br label %292

254:                                              ; preds = %80
  %255 = load i32, i32* %20, align 4
  %256 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %257 = add nsw i32 %256, 1
  %258 = call i32 @_posix1e_acl_perm_to_string(i32 %255, i32 %257, i8* %31)
  store i32 %258, i32* %16, align 4
  %259 = load i32, i32* %16, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %305

262:                                              ; preds = %254
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %263, i8* %31)
  store i32 %264, i32* %17, align 4
  %265 = load i32, i32* %17, align 4
  %266 = icmp eq i32 %265, -1
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %305

268:                                              ; preds = %262
  %269 = load i8*, i8** %9, align 8
  %270 = call i32 @free(i8* %269)
  %271 = load i8*, i8** %10, align 8
  store i8* %271, i8** %9, align 8
  br label %292

272:                                              ; preds = %80
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* @_POSIX1E_ACL_STRING_PERM_MAXSIZE, align 4
  %275 = add nsw i32 %274, 1
  %276 = call i32 @_posix1e_acl_perm_to_string(i32 %273, i32 %275, i8* %31)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %305

280:                                              ; preds = %272
  %281 = load i8*, i8** %9, align 8
  %282 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %281, i8* %31)
  store i32 %282, i32* %17, align 4
  %283 = load i32, i32* %17, align 4
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %305

286:                                              ; preds = %280
  %287 = load i8*, i8** %9, align 8
  %288 = call i32 @free(i8* %287)
  %289 = load i8*, i8** %10, align 8
  store i8* %289, i8** %9, align 8
  br label %292

290:                                              ; preds = %80
  %291 = load i32, i32* @EINVAL, align 4
  store i32 %291, i32* @errno, align 4
  br label %305

292:                                              ; preds = %286, %268, %250, %204, %167, %121
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %15, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %15, align 4
  br label %74

296:                                              ; preds = %74
  %297 = load i32*, i32** %6, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i8*, i8** %9, align 8
  %301 = call i32 @strlen(i8* %300)
  %302 = load i32*, i32** %6, align 8
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i8*, i8** %9, align 8
  store i8* %304, i8** %4, align 8
  store i32 1, i32* %23, align 4
  br label %312

305:                                              ; preds = %290, %285, %279, %267, %261, %249, %239, %224, %215, %203, %193, %178, %166, %156, %141, %132, %120, %114
  %306 = load i8*, i8** %9, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load i8*, i8** %9, align 8
  %310 = call i32 @free(i8* %309)
  br label %311

311:                                              ; preds = %308, %305
  store i8* null, i8** %4, align 8
  store i32 1, i32* %23, align 4
  br label %312

312:                                              ; preds = %311, %303, %39
  %313 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i8*, i8** %4, align 8
  ret i8* %314
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @_posix1e_acl_perm_to_string(i32, i32, i8*) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @_posix1e_acl_id_to_name(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
