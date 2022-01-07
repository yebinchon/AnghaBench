; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_subject.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libugidfw/extr_ugidfw.c_bsde_parse_subject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_bsdextended_subject = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"uid short\00", align 1
@MBS_UID_DEFINED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"one uid only\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gid short\00", align 1
@MBS_GID_DEFINED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"one gid only\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"jailid\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"prison short\00", align 1
@MBS_PRISON_DEFINED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"one jail only\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"double negative\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"'%s' not expected\00", align 1
@MBS_ALL_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, %struct.mac_bsdextended_subject*, i64, i8*)* @bsde_parse_subject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsde_parse_subject(i32 %0, i8** %1, %struct.mac_bsdextended_subject* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.mac_bsdextended_subject*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store %struct.mac_bsdextended_subject* %2, %struct.mac_bsdextended_subject** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load i8**, i8*** %8, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  store i32 1, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %33

32:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %222, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %223

38:                                               ; preds = %34
  %39 = load i8**, i8*** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %38
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 2
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %52, i64 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @MBS_UID_DEFINED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

64:                                               ; preds = %55
  %65 = load i8**, i8*** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = call i64 @bsde_parse_uidrange(i8* %70, i8** %17, i8** %18, i64 %71, i8* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %273

76:                                               ; preds = %64
  %77 = load i32, i32* @MBS_UID_DEFINED, align 4
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @MBS_UID_DEFINED, align 4
  %84 = load i32, i32* %15, align 4
  %85 = xor i32 %84, %83
  store i32 %85, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %14, align 4
  br label %222

89:                                               ; preds = %38
  %90 = load i8**, i8*** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %89
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 2
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %103, i64 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

106:                                              ; preds = %97
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @MBS_GID_DEFINED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %112, i64 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

115:                                              ; preds = %106
  %116 = load i8**, i8*** %8, align 8
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %116, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i64 @bsde_parse_gidrange(i8* %121, i8** %19, i8** %20, i64 %122, i8* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store i32 -1, i32* %6, align 4
  br label %273

127:                                              ; preds = %115
  %128 = load i32, i32* @MBS_GID_DEFINED, align 4
  %129 = load i32, i32* %13, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @MBS_GID_DEFINED, align 4
  %135 = load i32, i32* %15, align 4
  %136 = xor i32 %135, %134
  store i32 %136, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %133, %127
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %138, 2
  store i32 %139, i32* %14, align 4
  br label %221

140:                                              ; preds = %89
  %141 = load i8**, i8*** %8, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strcmp(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %192

148:                                              ; preds = %140
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 2
  %151 = load i32, i32* %7, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = load i64, i64* %10, align 8
  %156 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %154, i64 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

157:                                              ; preds = %148
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i8*, i8** %11, align 8
  %164 = load i64, i64* %10, align 8
  %165 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %163, i64 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

166:                                              ; preds = %157
  %167 = load i8**, i8*** %8, align 8
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %167, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = call i32 @bsde_get_jailid(i8* %172, i64 %173, i8* %174)
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %166
  store i32 -1, i32* %6, align 4
  br label %273

179:                                              ; preds = %166
  %180 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %181 = load i32, i32* %13, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %187 = load i32, i32* %15, align 4
  %188 = xor i32 %187, %186
  store i32 %188, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %189

189:                                              ; preds = %185, %179
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %14, align 4
  br label %220

192:                                              ; preds = %140
  %193 = load i8**, i8*** %8, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %192
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i8*, i8** %11, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %204, i64 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %273

207:                                              ; preds = %200
  store i32 1, i32* %16, align 4
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %219

210:                                              ; preds = %192
  %211 = load i8*, i8** %11, align 8
  %212 = load i64, i64* %10, align 8
  %213 = load i8**, i8*** %8, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %211, i64 %212, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %217)
  store i32 -1, i32* %6, align 4
  br label %273

219:                                              ; preds = %207
  br label %220

220:                                              ; preds = %219, %189
  br label %221

221:                                              ; preds = %220, %137
  br label %222

222:                                              ; preds = %221, %86
  br label %34

223:                                              ; preds = %34
  %224 = load i32, i32* %13, align 4
  %225 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %226 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %12, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load i32, i32* @MBS_ALL_FLAGS, align 4
  %231 = load i32, i32* %15, align 4
  %232 = xor i32 %230, %231
  %233 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %234 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  br label %239

235:                                              ; preds = %223
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %238 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %235, %229
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @MBS_UID_DEFINED, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load i8*, i8** %17, align 8
  %246 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %247 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %246, i32 0, i32 6
  store i8* %245, i8** %247, align 8
  %248 = load i8*, i8** %18, align 8
  %249 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %250 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %249, i32 0, i32 5
  store i8* %248, i8** %250, align 8
  br label %251

251:                                              ; preds = %244, %239
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @MBS_GID_DEFINED, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i8*, i8** %19, align 8
  %258 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %259 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %258, i32 0, i32 4
  store i8* %257, i8** %259, align 8
  %260 = load i8*, i8** %20, align 8
  %261 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %262 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %261, i32 0, i32 3
  store i8* %260, i8** %262, align 8
  br label %263

263:                                              ; preds = %256, %251
  %264 = load i32, i32* %13, align 4
  %265 = load i32, i32* @MBS_PRISON_DEFINED, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = load i32, i32* %21, align 4
  %270 = load %struct.mac_bsdextended_subject*, %struct.mac_bsdextended_subject** %9, align 8
  %271 = getelementptr inbounds %struct.mac_bsdextended_subject, %struct.mac_bsdextended_subject* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %268, %263
  store i32 0, i32* %6, align 4
  br label %273

273:                                              ; preds = %272, %210, %203, %178, %162, %153, %126, %111, %102, %75, %60, %51
  %274 = load i32, i32* %6, align 4
  ret i32 %274
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @bsde_parse_uidrange(i8*, i8**, i8**, i64, i8*) #1

declare dso_local i64 @bsde_parse_gidrange(i8*, i8**, i8**, i64, i8*) #1

declare dso_local i32 @bsde_get_jailid(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
