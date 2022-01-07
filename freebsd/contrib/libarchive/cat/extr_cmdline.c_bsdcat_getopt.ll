; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_cmdline.c_bsdcat_getopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cat/extr_cmdline.c_bsdcat_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdcat_option = type { i8*, i32, i64 }
%struct.bsdcat = type { i8*, i32, i8**, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@short_options = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Option -%c requires an argument\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-W \00", align 1
@tar_longopts = common dso_local global %struct.bsdcat_option* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Option %s%s is not supported\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Ambiguous option %s%s (matches --%s and --%s)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Option %s%s requires an argument\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Option %s%s does not allow an argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsdcat_getopt(%struct.bsdcat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsdcat*, align 8
  %4 = alloca %struct.bsdcat_option*, align 8
  %5 = alloca %struct.bsdcat_option*, align 8
  %6 = alloca %struct.bsdcat_option*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bsdcat* %0, %struct.bsdcat** %3, align 8
  store %struct.bsdcat_option* null, %struct.bsdcat_option** %5, align 8
  store %struct.bsdcat_option* null, %struct.bsdcat_option** %6, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 63, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %13 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %15 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %20 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %20, align 8
  %23 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %24 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %28 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %354

33:                                               ; preds = %18
  %34 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %35 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %34, i32 0, i32 1
  store i32 2, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %38 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %111

41:                                               ; preds = %36
  %42 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %43 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %42, i32 0, i32 2
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %354

49:                                               ; preds = %41
  %50 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %51 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 45
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %354

60:                                               ; preds = %49
  %61 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %62 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %61, i32 0, i32 2
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %70 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %70, align 8
  %73 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %74 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  store i32 -1, i32* %2, align 4
  br label %354

77:                                               ; preds = %60
  %78 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %79 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %79, align 8
  %82 = load i8*, i8** %80, align 8
  %83 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %84 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %86 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %90 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 45
  br i1 %95, label %96, label %103

96:                                               ; preds = %77
  %97 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %98 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %97, i32 0, i32 1
  store i32 4, i32* %98, align 8
  %99 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %100 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  store i8* %102, i8** %100, align 8
  br label %110

103:                                              ; preds = %77
  %104 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %105 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %104, i32 0, i32 1
  store i32 3, i32* %105, align 8
  %106 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %107 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %107, align 8
  br label %110

110:                                              ; preds = %103, %96
  br label %111

111:                                              ; preds = %110, %36
  %112 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %113 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 3
  br i1 %115, label %116, label %195

116:                                              ; preds = %111
  %117 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %118 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  %121 = load i8, i8* %119, align 1
  %122 = sext i8 %121 to i32
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %127 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %126, i32 0, i32 1
  store i32 2, i32* %127, align 8
  %128 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %129 = call i32 @bsdcat_getopt(%struct.bsdcat* %128)
  store i32 %129, i32* %2, align 4
  br label %354

130:                                              ; preds = %116
  %131 = load i8*, i8** @short_options, align 8
  %132 = load i32, i32* %10, align 4
  %133 = trunc i32 %132 to i8
  %134 = call i8* @strchr(i8* %131, i8 signext %133)
  store i8* %134, i8** %7, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = icmp eq i8* %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 63, i32* %2, align 4
  br label %354

138:                                              ; preds = %130
  %139 = load i8*, i8** %7, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %142, 58
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %144, %138
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %194

148:                                              ; preds = %145
  %149 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %150 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %148
  %157 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %158 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %157, i32 0, i32 2
  %159 = load i8**, i8*** %158, align 8
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %162 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  %163 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %164 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %156
  %168 = load i32, i32* %10, align 4
  %169 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  store i32 63, i32* %2, align 4
  br label %354

170:                                              ; preds = %156
  %171 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %172 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %171, i32 0, i32 2
  %173 = load i8**, i8*** %172, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %172, align 8
  %175 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %176 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %170, %148
  %180 = load i32, i32* %10, align 4
  %181 = icmp eq i32 %180, 87
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %184 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %183, i32 0, i32 1
  store i32 4, i32* %184, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %193

185:                                              ; preds = %179
  %186 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %187 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %186, i32 0, i32 1
  store i32 2, i32* %187, align 8
  %188 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %189 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %192 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %191, i32 0, i32 0
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %185, %182
  br label %194

194:                                              ; preds = %193, %145
  br label %195

195:                                              ; preds = %194, %111
  %196 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %197 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %352

200:                                              ; preds = %195
  %201 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %202 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %201, i32 0, i32 1
  store i32 2, i32* %202, align 8
  %203 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %204 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @strchr(i8* %205, i8 signext 61)
  store i8* %206, i8** %7, align 8
  %207 = load i8*, i8** %7, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %223

209:                                              ; preds = %200
  %210 = load i8*, i8** %7, align 8
  %211 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %212 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = ptrtoint i8* %210 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  store i64 %216, i64* %9, align 8
  %217 = load i8*, i8** %7, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = ptrtoint i8* %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %222 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %228

223:                                              ; preds = %200
  %224 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %225 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = call i64 @strlen(i8* %226)
  store i64 %227, i64* %9, align 8
  br label %228

228:                                              ; preds = %223, %209
  %229 = load %struct.bsdcat_option*, %struct.bsdcat_option** @tar_longopts, align 8
  store %struct.bsdcat_option* %229, %struct.bsdcat_option** %4, align 8
  br label %230

230:                                              ; preds = %272, %228
  %231 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  %232 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %275

235:                                              ; preds = %230
  %236 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  %237 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 0
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %243 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 0
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %241, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %235
  br label %272

250:                                              ; preds = %235
  %251 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %252 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %251, i32 0, i32 3
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  %255 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load i64, i64* %9, align 8
  %258 = call i64 @strncmp(i8* %253, i8* %256, i64 %257)
  %259 = icmp eq i64 %258, 0
  br i1 %259, label %260, label %271

260:                                              ; preds = %250
  %261 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  store %struct.bsdcat_option* %261, %struct.bsdcat_option** %6, align 8
  %262 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  store %struct.bsdcat_option* %262, %struct.bsdcat_option** %5, align 8
  %263 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  %264 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i64 @strlen(i8* %265)
  %267 = load i64, i64* %9, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  store %struct.bsdcat_option* null, %struct.bsdcat_option** %6, align 8
  br label %275

270:                                              ; preds = %260
  br label %271

271:                                              ; preds = %270, %250
  br label %272

272:                                              ; preds = %271, %249
  %273 = load %struct.bsdcat_option*, %struct.bsdcat_option** %4, align 8
  %274 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %273, i32 1
  store %struct.bsdcat_option* %274, %struct.bsdcat_option** %4, align 8
  br label %230

275:                                              ; preds = %269, %230
  %276 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %277 = icmp eq %struct.bsdcat_option* %276, null
  br i1 %277, label %278, label %284

278:                                              ; preds = %275
  %279 = load i8*, i8** %8, align 8
  %280 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %281 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %279, i8* %282)
  store i32 63, i32* %2, align 4
  br label %354

284:                                              ; preds = %275
  %285 = load %struct.bsdcat_option*, %struct.bsdcat_option** %6, align 8
  %286 = icmp ne %struct.bsdcat_option* %285, null
  br i1 %286, label %287, label %299

287:                                              ; preds = %284
  %288 = load i8*, i8** %8, align 8
  %289 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %290 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %293 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %292, i32 0, i32 0
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.bsdcat_option*, %struct.bsdcat_option** %6, align 8
  %296 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %288, i8* %291, i8* %294, i8* %297)
  store i32 63, i32* %2, align 4
  br label %354

299:                                              ; preds = %284
  %300 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %301 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %336

304:                                              ; preds = %299
  %305 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %306 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = icmp eq i8* %307, null
  br i1 %308, label %309, label %335

309:                                              ; preds = %304
  %310 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %311 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %310, i32 0, i32 2
  %312 = load i8**, i8*** %311, align 8
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %315 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %314, i32 0, i32 0
  store i8* %313, i8** %315, align 8
  %316 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %317 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %316, i32 0, i32 0
  %318 = load i8*, i8** %317, align 8
  %319 = icmp eq i8* %318, null
  br i1 %319, label %320, label %326

320:                                              ; preds = %309
  %321 = load i8*, i8** %8, align 8
  %322 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %323 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %321, i8* %324)
  store i32 63, i32* %2, align 4
  br label %354

326:                                              ; preds = %309
  %327 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %328 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %327, i32 0, i32 2
  %329 = load i8**, i8*** %328, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i32 1
  store i8** %330, i8*** %328, align 8
  %331 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %332 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %332, align 8
  br label %335

335:                                              ; preds = %326, %304
  br label %348

336:                                              ; preds = %299
  %337 = load %struct.bsdcat*, %struct.bsdcat** %3, align 8
  %338 = getelementptr inbounds %struct.bsdcat, %struct.bsdcat* %337, i32 0, i32 0
  %339 = load i8*, i8** %338, align 8
  %340 = icmp ne i8* %339, null
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load i8*, i8** %8, align 8
  %343 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %344 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 (i32, i8*, ...) @lafe_warnc(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %342, i8* %345)
  store i32 63, i32* %2, align 4
  br label %354

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %335
  %349 = load %struct.bsdcat_option*, %struct.bsdcat_option** %5, align 8
  %350 = getelementptr inbounds %struct.bsdcat_option, %struct.bsdcat_option* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  store i32 %351, i32* %2, align 4
  br label %354

352:                                              ; preds = %195
  %353 = load i32, i32* %10, align 4
  store i32 %353, i32* %2, align 4
  br label %354

354:                                              ; preds = %352, %348, %341, %320, %287, %278, %167, %137, %125, %68, %59, %48, %32
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lafe_warnc(i32, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
