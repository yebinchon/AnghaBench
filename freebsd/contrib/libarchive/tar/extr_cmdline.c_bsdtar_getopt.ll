; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_cmdline.c_bsdtar_getopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_cmdline.c_bsdtar_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar_option = type { i8*, i32, i64 }
%struct.bsdtar = type { i8*, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@short_options = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Option %c requires an argument\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Option -%c requires an argument\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-W \00", align 1
@tar_longopts = common dso_local global %struct.bsdtar_option* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Option %s%s is not supported\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Ambiguous option %s%s (matches --%s and --%s)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Option %s%s requires an argument\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Option %s%s does not allow an argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsdtar_getopt(%struct.bsdtar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsdtar*, align 8
  %4 = alloca %struct.bsdtar_option*, align 8
  %5 = alloca %struct.bsdtar_option*, align 8
  %6 = alloca %struct.bsdtar_option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %3, align 8
  store %struct.bsdtar_option* null, %struct.bsdtar_option** %5, align 8
  store %struct.bsdtar_option* null, %struct.bsdtar_option** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 63, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %13 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %15 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  %19 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %20 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %20, align 8
  %23 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %28 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %435

33:                                               ; preds = %18
  %34 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %35 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %34, i32 0, i32 2
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %45 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %44, i32 0, i32 1
  store i32 2, i32* %45, align 8
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %48 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %50 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %50, align 8
  %53 = load i8*, i8** %51, align 8
  %54 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %55 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %57 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %46, %43
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %63 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %117

66:                                               ; preds = %61
  %67 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %68 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %77 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %76, i32 0, i32 1
  store i32 2, i32* %77, align 8
  br label %116

78:                                               ; preds = %66
  %79 = load i8*, i8** @short_options, align 8
  %80 = load i32, i32* %10, align 4
  %81 = trunc i32 %80 to i8
  %82 = call i8* @strchr(i8* %79, i8 signext %81)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 63, i32* %2, align 4
  br label %435

86:                                               ; preds = %78
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %94 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %93, i32 0, i32 2
  %95 = load i8**, i8*** %94, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %98 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %100 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  store i32 63, i32* %2, align 4
  br label %435

106:                                              ; preds = %92
  %107 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %108 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %108, align 8
  %111 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %112 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %106, %86
  br label %116

116:                                              ; preds = %115, %75
  br label %117

117:                                              ; preds = %116, %61
  %118 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %119 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %192

122:                                              ; preds = %117
  %123 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %124 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp eq i8* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 -1, i32* %2, align 4
  br label %435

130:                                              ; preds = %122
  %131 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %132 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 45
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  store i32 -1, i32* %2, align 4
  br label %435

141:                                              ; preds = %130
  %142 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %143 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %142, i32 0, i32 2
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %141
  %150 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %151 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %150, i32 0, i32 2
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i32 1
  store i8** %153, i8*** %151, align 8
  %154 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %155 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 8
  store i32 -1, i32* %2, align 4
  br label %435

158:                                              ; preds = %141
  %159 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %160 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %159, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i32 1
  store i8** %162, i8*** %160, align 8
  %163 = load i8*, i8** %161, align 8
  %164 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %165 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %164, i32 0, i32 3
  store i8* %163, i8** %165, align 8
  %166 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %167 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 8
  %170 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %171 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 45
  br i1 %176, label %177, label %184

177:                                              ; preds = %158
  %178 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %179 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %178, i32 0, i32 1
  store i32 4, i32* %179, align 8
  %180 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %181 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  store i8* %183, i8** %181, align 8
  br label %191

184:                                              ; preds = %158
  %185 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %186 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %185, i32 0, i32 1
  store i32 3, i32* %186, align 8
  %187 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %188 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %187, i32 0, i32 3
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %188, align 8
  br label %191

191:                                              ; preds = %184, %177
  br label %192

192:                                              ; preds = %191, %117
  %193 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %194 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 3
  br i1 %196, label %197, label %276

197:                                              ; preds = %192
  %198 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %199 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %199, align 8
  %202 = load i8, i8* %200, align 1
  %203 = sext i8 %202 to i32
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %197
  %207 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %208 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %207, i32 0, i32 1
  store i32 2, i32* %208, align 8
  %209 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %210 = call i32 @bsdtar_getopt(%struct.bsdtar* %209)
  store i32 %210, i32* %2, align 4
  br label %435

211:                                              ; preds = %197
  %212 = load i8*, i8** @short_options, align 8
  %213 = load i32, i32* %10, align 4
  %214 = trunc i32 %213 to i8
  %215 = call i8* @strchr(i8* %212, i8 signext %214)
  store i8* %215, i8** %7, align 8
  %216 = load i8*, i8** %7, align 8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 63, i32* %2, align 4
  br label %435

219:                                              ; preds = %211
  %220 = load i8*, i8** %7, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 58
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 1, i32* %11, align 4
  br label %226

226:                                              ; preds = %225, %219
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %275

229:                                              ; preds = %226
  %230 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %231 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %230, i32 0, i32 3
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 0
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %260

237:                                              ; preds = %229
  %238 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %239 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %238, i32 0, i32 2
  %240 = load i8**, i8*** %239, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %243 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %242, i32 0, i32 3
  store i8* %241, i8** %243, align 8
  %244 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %245 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %244, i32 0, i32 3
  %246 = load i8*, i8** %245, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %237
  %249 = load i32, i32* %10, align 4
  %250 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  store i32 63, i32* %2, align 4
  br label %435

251:                                              ; preds = %237
  %252 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %253 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %252, i32 0, i32 2
  %254 = load i8**, i8*** %253, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i32 1
  store i8** %255, i8*** %253, align 8
  %256 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %257 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %251, %229
  %261 = load i32, i32* %10, align 4
  %262 = icmp eq i32 %261, 87
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %265 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %264, i32 0, i32 1
  store i32 4, i32* %265, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %274

266:                                              ; preds = %260
  %267 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %268 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %267, i32 0, i32 1
  store i32 2, i32* %268, align 8
  %269 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %270 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %269, i32 0, i32 3
  %271 = load i8*, i8** %270, align 8
  %272 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %273 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %272, i32 0, i32 0
  store i8* %271, i8** %273, align 8
  br label %274

274:                                              ; preds = %266, %263
  br label %275

275:                                              ; preds = %274, %226
  br label %276

276:                                              ; preds = %275, %192
  %277 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %278 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %279, 4
  br i1 %280, label %281, label %433

281:                                              ; preds = %276
  %282 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %283 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %282, i32 0, i32 1
  store i32 2, i32* %283, align 8
  %284 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %285 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %284, i32 0, i32 3
  %286 = load i8*, i8** %285, align 8
  %287 = call i8* @strchr(i8* %286, i8 signext 61)
  store i8* %287, i8** %7, align 8
  %288 = load i8*, i8** %7, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %304

290:                                              ; preds = %281
  %291 = load i8*, i8** %7, align 8
  %292 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %293 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %292, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  %295 = ptrtoint i8* %291 to i64
  %296 = ptrtoint i8* %294 to i64
  %297 = sub i64 %295, %296
  store i64 %297, i64* %9, align 8
  %298 = load i8*, i8** %7, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 1
  %300 = ptrtoint i8* %299 to i64
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %303 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  br label %309

304:                                              ; preds = %281
  %305 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %306 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %305, i32 0, i32 3
  %307 = load i8*, i8** %306, align 8
  %308 = call i64 @strlen(i8* %307)
  store i64 %308, i64* %9, align 8
  br label %309

309:                                              ; preds = %304, %290
  %310 = load %struct.bsdtar_option*, %struct.bsdtar_option** @tar_longopts, align 8
  store %struct.bsdtar_option* %310, %struct.bsdtar_option** %4, align 8
  br label %311

311:                                              ; preds = %353, %309
  %312 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  %313 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %356

316:                                              ; preds = %311
  %317 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  %318 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %317, i32 0, i32 0
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 0
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %324 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %323, i32 0, i32 3
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 0
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %322, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %316
  br label %353

331:                                              ; preds = %316
  %332 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %333 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %332, i32 0, i32 3
  %334 = load i8*, i8** %333, align 8
  %335 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  %336 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %335, i32 0, i32 0
  %337 = load i8*, i8** %336, align 8
  %338 = load i64, i64* %9, align 8
  %339 = call i64 @strncmp(i8* %334, i8* %337, i64 %338)
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %331
  %342 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  store %struct.bsdtar_option* %342, %struct.bsdtar_option** %6, align 8
  %343 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  store %struct.bsdtar_option* %343, %struct.bsdtar_option** %5, align 8
  %344 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  %345 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = call i64 @strlen(i8* %346)
  %348 = load i64, i64* %9, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %341
  store %struct.bsdtar_option* null, %struct.bsdtar_option** %6, align 8
  br label %356

351:                                              ; preds = %341
  br label %352

352:                                              ; preds = %351, %331
  br label %353

353:                                              ; preds = %352, %330
  %354 = load %struct.bsdtar_option*, %struct.bsdtar_option** %4, align 8
  %355 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %354, i32 1
  store %struct.bsdtar_option* %355, %struct.bsdtar_option** %4, align 8
  br label %311

356:                                              ; preds = %350, %311
  %357 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %358 = icmp eq %struct.bsdtar_option* %357, null
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load i8*, i8** %8, align 8
  %361 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %362 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %361, i32 0, i32 3
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %360, i8* %363)
  store i32 63, i32* %2, align 4
  br label %435

365:                                              ; preds = %356
  %366 = load %struct.bsdtar_option*, %struct.bsdtar_option** %6, align 8
  %367 = icmp ne %struct.bsdtar_option* %366, null
  br i1 %367, label %368, label %380

368:                                              ; preds = %365
  %369 = load i8*, i8** %8, align 8
  %370 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %371 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %370, i32 0, i32 3
  %372 = load i8*, i8** %371, align 8
  %373 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %374 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.bsdtar_option*, %struct.bsdtar_option** %6, align 8
  %377 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %369, i8* %372, i8* %375, i8* %378)
  store i32 63, i32* %2, align 4
  br label %435

380:                                              ; preds = %365
  %381 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %382 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %381, i32 0, i32 2
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %417

385:                                              ; preds = %380
  %386 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %387 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = icmp eq i8* %388, null
  br i1 %389, label %390, label %416

390:                                              ; preds = %385
  %391 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %392 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %391, i32 0, i32 2
  %393 = load i8**, i8*** %392, align 8
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %396 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %395, i32 0, i32 0
  store i8* %394, i8** %396, align 8
  %397 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %398 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = icmp eq i8* %399, null
  br i1 %400, label %401, label %407

401:                                              ; preds = %390
  %402 = load i8*, i8** %8, align 8
  %403 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %404 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %403, i32 0, i32 0
  %405 = load i8*, i8** %404, align 8
  %406 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %402, i8* %405)
  store i32 63, i32* %2, align 4
  br label %435

407:                                              ; preds = %390
  %408 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %409 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %408, i32 0, i32 2
  %410 = load i8**, i8*** %409, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i32 1
  store i8** %411, i8*** %409, align 8
  %412 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %413 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, -1
  store i32 %415, i32* %413, align 8
  br label %416

416:                                              ; preds = %407, %385
  br label %429

417:                                              ; preds = %380
  %418 = load %struct.bsdtar*, %struct.bsdtar** %3, align 8
  %419 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %418, i32 0, i32 0
  %420 = load i8*, i8** %419, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %428

422:                                              ; preds = %417
  %423 = load i8*, i8** %8, align 8
  %424 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %425 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %424, i32 0, i32 0
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i8* %423, i8* %426)
  store i32 63, i32* %2, align 4
  br label %435

428:                                              ; preds = %417
  br label %429

429:                                              ; preds = %428, %416
  %430 = load %struct.bsdtar_option*, %struct.bsdtar_option** %5, align 8
  %431 = getelementptr inbounds %struct.bsdtar_option, %struct.bsdtar_option* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  store i32 %432, i32* %2, align 4
  br label %435

433:                                              ; preds = %276
  %434 = load i32, i32* %10, align 4
  store i32 %434, i32* %2, align 4
  br label %435

435:                                              ; preds = %433, %429, %422, %401, %368, %359, %248, %218, %206, %149, %140, %129, %103, %85, %32
  %436 = load i32, i32* %2, align 4
  ret i32 %436
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
