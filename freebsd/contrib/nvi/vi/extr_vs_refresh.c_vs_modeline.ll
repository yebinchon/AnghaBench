; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_refresh.c_vs_modeline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_refresh.c_vs_modeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, i32, i64, %struct.TYPE_25__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i32, i64)*, i32 (%struct.TYPE_26__*)* }

@vs_modeline.modes = internal constant [5 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"215|Append\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"216|Change\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"217|Command\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"218|Insert\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"219|Replace\00", align 1
@O_RULER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%lu,%lu\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@O_SHOWMODE = common dso_local global i32 0, align 4
@F_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @vs_modeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vs_modeline(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  store i8* null, i8** %10, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %3, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_26__*, i32, i64)*, i32 (%struct.TYPE_26__*, i32, i64)** %20, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %24 = call i32 @LASTLINE(%struct.TYPE_26__* %23)
  %25 = call i32 %21(%struct.TYPE_26__* %22, i32 %24, i64 0)
  store i64 0, i64* %6, align 8
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %27 = call i64 @IS_SPLIT(%struct.TYPE_26__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %155

29:                                               ; preds = %1
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strlen(i32 %40)
  %42 = add nsw i64 %41, 1
  %43 = load i8*, i8** %13, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i32 @CHAR2INT(%struct.TYPE_26__* %30, i32 %35, i64 %42, i8* %43, i64 %44)
  %46 = load i8*, i8** %13, align 8
  %47 = load i64, i64* %15, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %14, align 8
  store i32 0, i32* %11, align 4
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 2
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %100, %29
  %55 = load i8*, i8** %14, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %14, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ugt i8* %56, %57
  br i1 %58, label %59, label %101

59:                                               ; preds = %54
  %60 = load i8*, i8** %14, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  br label %101

67:                                               ; preds = %59
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @KEY_COL(%struct.TYPE_26__* %68, i8 signext %70)
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %67
  store i32 3, i32* %11, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = call i32 @KEY_LEN(%struct.TYPE_26__* %77, i8 signext 46)
  %79 = mul nsw i32 %78, 3
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %81 = call i32 @KEY_LEN(%struct.TYPE_26__* %80, i8 signext 32)
  %82 = add nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %6, align 8
  br label %86

86:                                               ; preds = %90, %76
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %14, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %94 = load i8*, i8** %14, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @KEY_COL(%struct.TYPE_26__* %93, i8 signext %95)
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %97, %96
  store i64 %98, i64* %6, align 8
  br label %86

99:                                               ; preds = %86
  br label %101

100:                                              ; preds = %67
  br label %54

101:                                              ; preds = %99, %64, %54
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %11, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %111, align 8
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %115 = call i8* @KEY_NAME(%struct.TYPE_26__* %114, i8 signext 46)
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %117 = call i32 @KEY_LEN(%struct.TYPE_26__* %116, i8 signext 46)
  %118 = sext i32 %117 to i64
  %119 = call i32 %112(%struct.TYPE_26__* %113, i8* %115, i64 %118)
  br label %105

120:                                              ; preds = %105
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %122, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %126 = call i8* @KEY_NAME(%struct.TYPE_26__* %125, i8 signext 32)
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %128 = call i32 @KEY_LEN(%struct.TYPE_26__* %127, i8 signext 32)
  %129 = sext i32 %128 to i64
  %130 = call i32 %123(%struct.TYPE_26__* %124, i8* %126, i64 %129)
  br label %131

131:                                              ; preds = %120, %101
  br label %132

132:                                              ; preds = %151, %131
  %133 = load i8*, i8** %14, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %139, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %143 = load i8*, i8** %14, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i8* @KEY_NAME(%struct.TYPE_26__* %142, i8 signext %144)
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %147 = load i8*, i8** %14, align 8
  %148 = load i8, i8* %147, align 1
  %149 = call i64 @KEY_COL(%struct.TYPE_26__* %146, i8 signext %148)
  %150 = call i32 %140(%struct.TYPE_26__* %141, i8* %145, i64 %149)
  br label %151

151:                                              ; preds = %137
  %152 = load i8*, i8** %14, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %14, align 8
  br label %132

154:                                              ; preds = %132
  br label %155

155:                                              ; preds = %154, %1
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 2
  %158 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %157, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %160 = call i32 %158(%struct.TYPE_26__* %159)
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %4, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %167 = load i32, i32* @O_RULER, align 4
  %168 = call i64 @O_ISSET(%struct.TYPE_26__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %229

170:                                              ; preds = %155
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %172 = call i32 @vs_column(%struct.TYPE_26__* %171, i64* %5)
  %173 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* %5, align 8
  %179 = add i64 %178, 1
  %180 = trunc i64 %179 to i32
  %181 = call i64 @snprintf(i8* %173, i32 20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %177, i32 %180)
  store i64 %181, i64* %8, align 8
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, 1
  %185 = udiv i64 %184, 2
  %186 = sub i64 %182, %185
  %187 = udiv i64 %186, 2
  store i64 %187, i64* %9, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %9, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %170
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 1
  %194 = load i32 (%struct.TYPE_26__*, i32, i64)*, i32 (%struct.TYPE_26__*, i32, i64)** %193, align 8
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %197 = call i32 @LASTLINE(%struct.TYPE_26__* %196)
  %198 = load i64, i64* %9, align 8
  %199 = call i32 %194(%struct.TYPE_26__* %195, i32 %197, i64 %198)
  %200 = load i64, i64* %8, align 8
  %201 = load i64, i64* %6, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %6, align 8
  br label %221

203:                                              ; preds = %170
  %204 = load i64, i64* %6, align 8
  %205 = add i64 %204, 2
  %206 = load i64, i64* %8, align 8
  %207 = add i64 %205, %206
  %208 = load i64, i64* %4, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %220

210:                                              ; preds = %203
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 0
  %213 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %212, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %215 = call i32 %213(%struct.TYPE_26__* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i64 2)
  %216 = load i64, i64* %8, align 8
  %217 = add i64 2, %216
  %218 = load i64, i64* %6, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %6, align 8
  br label %220

220:                                              ; preds = %210, %203
  br label %221

221:                                              ; preds = %220, %191
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  %224 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %223, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %226 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %227 = load i64, i64* %8, align 8
  %228 = call i32 %224(%struct.TYPE_26__* %225, i8* %226, i64 %227)
  br label %229

229:                                              ; preds = %221, %155
  %230 = load i64, i64* %4, align 8
  store i64 %230, i64* %7, align 8
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %232 = load i32, i32* @O_SHOWMODE, align 4
  %233 = call i64 @O_ISSET(%struct.TYPE_26__* %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %256

235:                                              ; preds = %229
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @F_MODIFIED, align 4
  %240 = call i64 @F_ISSET(i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i64, i64* %7, align 8
  %244 = add i64 %243, -1
  store i64 %244, i64* %7, align 8
  br label %245

245:                                              ; preds = %242, %235
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds [5 x i8*], [5 x i8*]* @vs_modeline.modes, i64 0, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i8* @msg_cat(%struct.TYPE_26__* %246, i8* %251, i64* %8)
  store i8* %252, i8** %10, align 8
  %253 = load i64, i64* %8, align 8
  %254 = load i64, i64* %7, align 8
  %255 = sub i64 %254, %253
  store i64 %255, i64* %7, align 8
  br label %256

256:                                              ; preds = %245, %229
  %257 = load i64, i64* %7, align 8
  %258 = load i64, i64* %6, align 8
  %259 = add i64 %258, 2
  %260 = icmp ugt i64 %257, %259
  br i1 %260, label %261, label %301

261:                                              ; preds = %256
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 1
  %264 = load i32 (%struct.TYPE_26__*, i32, i64)*, i32 (%struct.TYPE_26__*, i32, i64)** %263, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %267 = call i32 @LASTLINE(%struct.TYPE_26__* %266)
  %268 = load i64, i64* %7, align 8
  %269 = call i32 %264(%struct.TYPE_26__* %265, i32 %267, i64 %268)
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %271 = load i32, i32* @O_SHOWMODE, align 4
  %272 = call i64 @O_ISSET(%struct.TYPE_26__* %270, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %261
  %275 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @F_MODIFIED, align 4
  %279 = call i64 @F_ISSET(i32 %277, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %274
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 0
  %284 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %283, align 8
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %287 = call i8* @KEY_NAME(%struct.TYPE_26__* %286, i8 signext 42)
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %289 = call i32 @KEY_LEN(%struct.TYPE_26__* %288, i8 signext 42)
  %290 = sext i32 %289 to i64
  %291 = call i32 %284(%struct.TYPE_26__* %285, i8* %287, i64 %290)
  br label %292

292:                                              ; preds = %281, %274
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %293, i32 0, i32 0
  %295 = load i32 (%struct.TYPE_26__*, i8*, i64)*, i32 (%struct.TYPE_26__*, i8*, i64)** %294, align 8
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %297 = load i8*, i8** %10, align 8
  %298 = load i64, i64* %8, align 8
  %299 = call i32 %295(%struct.TYPE_26__* %296, i8* %297, i64 %298)
  br label %300

300:                                              ; preds = %292, %261
  br label %301

301:                                              ; preds = %300, %256
  ret void
}

declare dso_local i32 @LASTLINE(%struct.TYPE_26__*) #1

declare dso_local i64 @IS_SPLIT(%struct.TYPE_26__*) #1

declare dso_local i32 @CHAR2INT(%struct.TYPE_26__*, i32, i64, i8*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @KEY_COL(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i32 @KEY_LEN(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i8* @KEY_NAME(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i64 @O_ISSET(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vs_column(%struct.TYPE_26__*, i64*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @F_ISSET(i32, i32) #1

declare dso_local i8* @msg_cat(%struct.TYPE_26__*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
