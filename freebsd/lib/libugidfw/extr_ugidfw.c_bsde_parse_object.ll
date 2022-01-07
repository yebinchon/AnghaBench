; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_object = type { i32, i32, i32, %struct.fsid, i8*, i8*, i8*, i8* }
%struct.fsid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uid short\00", align 1
@MBO_UID_DEFINED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"one uid only\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gid short\00", align 1
@MBO_GID_DEFINED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"one gid only\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"filesys\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"filesys short\00", align 1
@MBO_FSID_DEFINED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"one fsid only\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"suid\00", align 1
@MBO_SUID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"sgid\00", align 1
@MBO_SGID = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"uid_of_subject\00", align 1
@MBO_UID_SUBJECT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"gid_of_subject\00", align 1
@MBO_GID_SUBJECT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"type short\00", align 1
@MBO_TYPE_DEFINED = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"one type only\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"double negative'\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"'%s' not expected\00", align 1
@MBO_ALL_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.mac_bsdextended_object*, i64, i8*)* @bsde_parse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsde_parse_object(i32 %0, i8** %1, %struct.mac_bsdextended_object* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.mac_bsdextended_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.fsid, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.mac_bsdextended_object* %2, %struct.mac_bsdextended_object** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i8**, i8*** %8, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %14, align 4
  br label %34

33:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %362, %34
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %363

39:                                               ; preds = %35
  %40 = load i8**, i8*** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %48, 2
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @MBO_UID_DEFINED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

65:                                               ; preds = %56
  %66 = load i8**, i8*** %8, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i64 @bsde_parse_uidrange(i8* %71, i8** %18, i8** %19, i64 %72, i8* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %423

77:                                               ; preds = %65
  %78 = load i32, i32* @MBO_UID_DEFINED, align 4
  %79 = load i32, i32* %13, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @MBO_UID_DEFINED, align 4
  %85 = load i32, i32* %15, align 4
  %86 = xor i32 %85, %84
  store i32 %86, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %14, align 4
  br label %362

90:                                               ; preds = %39
  %91 = load i8**, i8*** %8, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %141

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 2
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i8*, i8** %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %104, i64 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

107:                                              ; preds = %98
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @MBO_GID_DEFINED, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i8*, i8** %11, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %113, i64 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

116:                                              ; preds = %107
  %117 = load i8**, i8*** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = call i64 @bsde_parse_gidrange(i8* %122, i8** %20, i8** %21, i64 %123, i8* %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  br label %423

128:                                              ; preds = %116
  %129 = load i32, i32* @MBO_GID_DEFINED, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @MBO_GID_DEFINED, align 4
  %136 = load i32, i32* %15, align 4
  %137 = xor i32 %136, %135
  store i32 %137, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %14, align 4
  br label %361

141:                                              ; preds = %90
  %142 = load i8**, i8*** %8, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %192

149:                                              ; preds = %141
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 2
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i8*, i8** %11, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %155, i64 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

158:                                              ; preds = %149
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load i8*, i8** %11, align 8
  %165 = load i64, i64* %10, align 8
  %166 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %164, i64 %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

167:                                              ; preds = %158
  %168 = load i8**, i8*** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = call i64 @bsde_parse_fsid(i8* %173, %struct.fsid* %22, i64 %174, i8* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  store i32 -1, i32* %6, align 4
  br label %423

179:                                              ; preds = %167
  %180 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %181 = load i32, i32* %13, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %187 = load i32, i32* %15, align 4
  %188 = xor i32 %187, %186
  store i32 %188, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %185, %179
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %14, align 4
  br label %360

192:                                              ; preds = %141
  %193 = load i8**, i8*** %8, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %192
  %201 = load i32, i32* @MBO_SUID, align 4
  %202 = load i32, i32* %13, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32, i32* @MBO_SUID, align 4
  %208 = load i32, i32* %15, align 4
  %209 = xor i32 %208, %207
  store i32 %209, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %210

210:                                              ; preds = %206, %200
  %211 = load i32, i32* %14, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %14, align 4
  br label %359

213:                                              ; preds = %192
  %214 = load i8**, i8*** %8, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %234

221:                                              ; preds = %213
  %222 = load i32, i32* @MBO_SGID, align 4
  %223 = load i32, i32* %13, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* @MBO_SGID, align 4
  %229 = load i32, i32* %15, align 4
  %230 = xor i32 %229, %228
  store i32 %230, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %231

231:                                              ; preds = %227, %221
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %358

234:                                              ; preds = %213
  %235 = load i8**, i8*** %8, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %255

242:                                              ; preds = %234
  %243 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %244 = load i32, i32* %13, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load i32, i32* @MBO_UID_SUBJECT, align 4
  %250 = load i32, i32* %15, align 4
  %251 = xor i32 %250, %249
  store i32 %251, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %252

252:                                              ; preds = %248, %242
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  br label %357

255:                                              ; preds = %234
  %256 = load i8**, i8*** %8, align 8
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %256, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @strcmp(i8* %260, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %255
  %264 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %265 = load i32, i32* %13, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %16, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i32, i32* @MBO_GID_SUBJECT, align 4
  %271 = load i32, i32* %15, align 4
  %272 = xor i32 %271, %270
  store i32 %272, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %273

273:                                              ; preds = %269, %263
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %356

276:                                              ; preds = %255
  %277 = load i8**, i8*** %8, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = call i64 @strcmp(i8* %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %327

284:                                              ; preds = %276
  %285 = load i32, i32* %14, align 4
  %286 = add nsw i32 %285, 2
  %287 = load i32, i32* %7, align 4
  %288 = icmp sgt i32 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load i8*, i8** %11, align 8
  %291 = load i64, i64* %10, align 8
  %292 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %290, i64 %291, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

293:                                              ; preds = %284
  %294 = load i32, i32* %13, align 4
  %295 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load i8*, i8** %11, align 8
  %300 = load i64, i64* %10, align 8
  %301 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %299, i64 %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

302:                                              ; preds = %293
  %303 = load i8**, i8*** %8, align 8
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8*, i8** %303, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = load i64, i64* %10, align 8
  %310 = load i8*, i8** %11, align 8
  %311 = call i64 @bsde_parse_type(i8* %308, i32* %17, i64 %309, i8* %310)
  %312 = icmp slt i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %302
  store i32 -1, i32* %6, align 4
  br label %423

314:                                              ; preds = %302
  %315 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %316 = load i32, i32* %13, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %13, align 4
  %318 = load i32, i32* %16, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %322 = load i32, i32* %15, align 4
  %323 = xor i32 %322, %321
  store i32 %323, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %324

324:                                              ; preds = %320, %314
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 2
  store i32 %326, i32* %14, align 4
  br label %355

327:                                              ; preds = %276
  %328 = load i8**, i8*** %8, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %328, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = call i64 @strcmp(i8* %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %345

335:                                              ; preds = %327
  %336 = load i32, i32* %16, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load i8*, i8** %11, align 8
  %340 = load i64, i64* %10, align 8
  %341 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %339, i64 %340, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %423

342:                                              ; preds = %335
  store i32 1, i32* %16, align 4
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  br label %354

345:                                              ; preds = %327
  %346 = load i8*, i8** %11, align 8
  %347 = load i64, i64* %10, align 8
  %348 = load i8**, i8*** %8, align 8
  %349 = load i32, i32* %14, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %348, i64 %350
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %346, i64 %347, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %352)
  store i32 -1, i32* %6, align 4
  br label %423

354:                                              ; preds = %342
  br label %355

355:                                              ; preds = %354, %324
  br label %356

356:                                              ; preds = %355, %273
  br label %357

357:                                              ; preds = %356, %252
  br label %358

358:                                              ; preds = %357, %231
  br label %359

359:                                              ; preds = %358, %210
  br label %360

360:                                              ; preds = %359, %189
  br label %361

361:                                              ; preds = %360, %138
  br label %362

362:                                              ; preds = %361, %87
  br label %35

363:                                              ; preds = %35
  %364 = load i32, i32* %13, align 4
  %365 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %366 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %365, i32 0, i32 0
  store i32 %364, i32* %366, align 8
  %367 = load i32, i32* %12, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %375

369:                                              ; preds = %363
  %370 = load i32, i32* @MBO_ALL_FLAGS, align 4
  %371 = load i32, i32* %15, align 4
  %372 = xor i32 %370, %371
  %373 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %374 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  br label %379

375:                                              ; preds = %363
  %376 = load i32, i32* %15, align 4
  %377 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %378 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %377, i32 0, i32 1
  store i32 %376, i32* %378, align 4
  br label %379

379:                                              ; preds = %375, %369
  %380 = load i32, i32* %13, align 4
  %381 = load i32, i32* @MBO_UID_DEFINED, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %379
  %385 = load i8*, i8** %18, align 8
  %386 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %387 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %386, i32 0, i32 7
  store i8* %385, i8** %387, align 8
  %388 = load i8*, i8** %19, align 8
  %389 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %390 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %389, i32 0, i32 6
  store i8* %388, i8** %390, align 8
  br label %391

391:                                              ; preds = %384, %379
  %392 = load i32, i32* %13, align 4
  %393 = load i32, i32* @MBO_GID_DEFINED, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %391
  %397 = load i8*, i8** %20, align 8
  %398 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %399 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %398, i32 0, i32 5
  store i8* %397, i8** %399, align 8
  %400 = load i8*, i8** %21, align 8
  %401 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %402 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %401, i32 0, i32 4
  store i8* %400, i8** %402, align 8
  br label %403

403:                                              ; preds = %396, %391
  %404 = load i32, i32* %13, align 4
  %405 = load i32, i32* @MBO_FSID_DEFINED, align 4
  %406 = and i32 %404, %405
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

408:                                              ; preds = %403
  %409 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %410 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %409, i32 0, i32 3
  %411 = bitcast %struct.fsid* %410 to i8*
  %412 = bitcast %struct.fsid* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %411, i8* align 4 %412, i64 4, i1 false)
  br label %413

413:                                              ; preds = %408, %403
  %414 = load i32, i32* %13, align 4
  %415 = load i32, i32* @MBO_TYPE_DEFINED, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %422

418:                                              ; preds = %413
  %419 = load i32, i32* %17, align 4
  %420 = load %struct.mac_bsdextended_object*, %struct.mac_bsdextended_object** %9, align 8
  %421 = getelementptr inbounds %struct.mac_bsdextended_object, %struct.mac_bsdextended_object* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  br label %422

422:                                              ; preds = %418, %413
  store i32 0, i32* %6, align 4
  br label %423

423:                                              ; preds = %422, %345, %338, %313, %298, %289, %178, %163, %154, %127, %112, %103, %76, %61, %52
  %424 = load i32, i32* %6, align 4
  ret i32 %424
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @bsde_parse_uidrange(i8*, i8**, i8**, i64, i8*) #1

declare dso_local i64 @bsde_parse_gidrange(i8*, i8**, i8**, i64, i8*) #1

declare dso_local i64 @bsde_parse_fsid(i8*, %struct.fsid*, i64, i8*) #1

declare dso_local i64 @bsde_parse_type(i8*, i32*, i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
