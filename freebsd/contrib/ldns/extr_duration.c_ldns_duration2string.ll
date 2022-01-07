; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_duration.c_ldns_duration2string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_duration.c_ldns_duration2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%uY\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%uM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%uW\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%uD\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%uH\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%uS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ldns_duration2string(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %326

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @digits_in_number(i64 %21)
  %23 = add i64 %18, %22
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %16, %11
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @digits_in_number(i64 %34)
  %36 = add i64 %31, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @digits_in_number(i64 %47)
  %49 = add i64 %44, %48
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @digits_in_number(i64 %60)
  %62 = add i64 %57, %61
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %55, %50
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @digits_in_number(i64 %73)
  %75 = add i64 %70, %74
  store i64 %75, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @digits_in_number(i64 %86)
  %88 = add i64 %83, %87
  store i64 %88, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %81, %76
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @digits_in_number(i64 %99)
  %101 = add i64 %96, %100
  store i64 %101, i64* %6, align 8
  store i32 1, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %89
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i64, i64* %6, align 8
  %110 = call i64 @calloc(i64 %109, i32 1)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %4, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 80, i8* %113, align 1
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8 0, i8* %115, align 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %108
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @digits_in_number(i64 %123)
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 2
  %127 = call i64 @calloc(i64 %126, i32 1)
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %5, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add i64 %130, 2
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @snprintf(i8* %129, i64 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i8*, i8** %4, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, 2
  %141 = call i8* @strncat(i8* %137, i8* %138, i64 %140)
  store i8* %141, i8** %4, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @free(i8* %142)
  br label %144

144:                                              ; preds = %120, %108
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %173

149:                                              ; preds = %144
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @digits_in_number(i64 %152)
  store i64 %153, i64* %6, align 8
  %154 = load i64, i64* %6, align 8
  %155 = add i64 %154, 2
  %156 = call i64 @calloc(i64 %155, i32 1)
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %5, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 @snprintf(i8* %158, i64 %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i8*, i8** %4, align 8
  %167 = load i8*, i8** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = add i64 %168, 2
  %170 = call i8* @strncat(i8* %166, i8* %167, i64 %169)
  store i8* %170, i8** %4, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = call i32 @free(i8* %171)
  br label %173

173:                                              ; preds = %149, %144
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %173
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @digits_in_number(i64 %181)
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, 2
  %185 = call i64 @calloc(i64 %184, i32 1)
  %186 = inttoptr i64 %185 to i8*
  store i8* %186, i8** %5, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %188, 2
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = call i32 @snprintf(i8* %187, i64 %189, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %193)
  %195 = load i8*, i8** %4, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = load i64, i64* %6, align 8
  %198 = add i64 %197, 2
  %199 = call i8* @strncat(i8* %195, i8* %196, i64 %198)
  store i8* %199, i8** %4, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = call i32 @free(i8* %200)
  br label %202

202:                                              ; preds = %178, %173
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %231

207:                                              ; preds = %202
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @digits_in_number(i64 %210)
  store i64 %211, i64* %6, align 8
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, 2
  %214 = call i64 @calloc(i64 %213, i32 1)
  %215 = inttoptr i64 %214 to i8*
  store i8* %215, i8** %5, align 8
  %216 = load i8*, i8** %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = add i64 %217, 2
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @snprintf(i8* %216, i64 %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %222)
  %224 = load i8*, i8** %4, align 8
  %225 = load i8*, i8** %5, align 8
  %226 = load i64, i64* %6, align 8
  %227 = add i64 %226, 2
  %228 = call i8* @strncat(i8* %224, i8* %225, i64 %227)
  store i8* %228, i8** %4, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = call i32 @free(i8* %229)
  br label %231

231:                                              ; preds = %207, %202
  %232 = load i32, i32* %7, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i8*, i8** %4, align 8
  %236 = call i8* @strncat(i8* %235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  store i8* %236, i8** %4, align 8
  br label %237

237:                                              ; preds = %234, %231
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 4
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @digits_in_number(i64 %245)
  store i64 %246, i64* %6, align 8
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, 2
  %249 = call i64 @calloc(i64 %248, i32 1)
  %250 = inttoptr i64 %249 to i8*
  store i8* %250, i8** %5, align 8
  %251 = load i8*, i8** %5, align 8
  %252 = load i64, i64* %6, align 8
  %253 = add i64 %252, 2
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 @snprintf(i8* %251, i64 %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  %259 = load i8*, i8** %4, align 8
  %260 = load i8*, i8** %5, align 8
  %261 = load i64, i64* %6, align 8
  %262 = add i64 %261, 2
  %263 = call i8* @strncat(i8* %259, i8* %260, i64 %262)
  store i8* %263, i8** %4, align 8
  %264 = load i8*, i8** %5, align 8
  %265 = call i32 @free(i8* %264)
  br label %266

266:                                              ; preds = %242, %237
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = icmp sgt i64 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %266
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = call i64 @digits_in_number(i64 %274)
  store i64 %275, i64* %6, align 8
  %276 = load i64, i64* %6, align 8
  %277 = add i64 %276, 2
  %278 = call i64 @calloc(i64 %277, i32 1)
  %279 = inttoptr i64 %278 to i8*
  store i8* %279, i8** %5, align 8
  %280 = load i8*, i8** %5, align 8
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, 2
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = trunc i64 %285 to i32
  %287 = call i32 @snprintf(i8* %280, i64 %282, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %286)
  %288 = load i8*, i8** %4, align 8
  %289 = load i8*, i8** %5, align 8
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, 2
  %292 = call i8* @strncat(i8* %288, i8* %289, i64 %291)
  store i8* %292, i8** %4, align 8
  %293 = load i8*, i8** %5, align 8
  %294 = call i32 @free(i8* %293)
  br label %295

295:                                              ; preds = %271, %266
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 6
  %298 = load i64, i64* %297, align 8
  %299 = icmp sgt i64 %298, 0
  br i1 %299, label %300, label %324

300:                                              ; preds = %295
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 6
  %303 = load i64, i64* %302, align 8
  %304 = call i64 @digits_in_number(i64 %303)
  store i64 %304, i64* %6, align 8
  %305 = load i64, i64* %6, align 8
  %306 = add i64 %305, 2
  %307 = call i64 @calloc(i64 %306, i32 1)
  %308 = inttoptr i64 %307 to i8*
  store i8* %308, i8** %5, align 8
  %309 = load i8*, i8** %5, align 8
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, 2
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = trunc i64 %314 to i32
  %316 = call i32 @snprintf(i8* %309, i64 %311, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %315)
  %317 = load i8*, i8** %4, align 8
  %318 = load i8*, i8** %5, align 8
  %319 = load i64, i64* %6, align 8
  %320 = add i64 %319, 2
  %321 = call i8* @strncat(i8* %317, i8* %318, i64 %320)
  store i8* %321, i8** %4, align 8
  %322 = load i8*, i8** %5, align 8
  %323 = call i32 @free(i8* %322)
  br label %324

324:                                              ; preds = %300, %295
  %325 = load i8*, i8** %4, align 8
  store i8* %325, i8** %2, align 8
  br label %326

326:                                              ; preds = %324, %10
  %327 = load i8*, i8** %2, align 8
  ret i8* %327
}

declare dso_local i64 @digits_in_number(i64) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i8* @strncat(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
