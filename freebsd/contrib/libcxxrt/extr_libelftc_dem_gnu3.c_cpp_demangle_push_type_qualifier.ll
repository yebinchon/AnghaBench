; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_push_type_qualifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_push_type_qualifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i32 }
%struct.vector_type_qualifier = type { i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i32 }
%struct.vector_str = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" complex\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" imaginary\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" __vector(%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i8*)* @cpp_demangle_push_type_qualifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %0, %struct.vector_type_qualifier* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca %struct.vector_type_qualifier*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.vector_str, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store %struct.vector_type_qualifier* %1, %struct.vector_type_qualifier** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %15 = icmp eq %struct.cpp_demangle_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %18 = icmp eq %struct.vector_type_qualifier* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %355

20:                                               ; preds = %16
  %21 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %22 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %355

26:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = call i32 @vector_str_init(%struct.vector_str* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %355

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = call i32 @vector_str_push(%struct.vector_str* %8, i8* %34, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %348

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %26
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %344, %41
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %347

45:                                               ; preds = %42
  %46 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %47 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, 1
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %344 [
    i32 132, label %53
    i32 131, label %72
    i32 136, label %91
    i32 133, label %110
    i32 134, label %129
    i32 130, label %208
    i32 129, label %227
    i32 135, label %246
    i32 128, label %265
  ]

53:                                               ; preds = %45
  %54 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %55 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %348

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %348

65:                                               ; preds = %61
  %66 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %67 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %66, %struct.vector_str* %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  br label %348

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %58
  br label %344

72:                                               ; preds = %45
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %74 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %348

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %348

84:                                               ; preds = %80
  %85 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %86 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %85, %struct.vector_str* %8)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %348

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %77
  br label %344

91:                                               ; preds = %45
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %93 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 8)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %348

96:                                               ; preds = %91
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  br label %348

103:                                              ; preds = %99
  %104 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %105 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %104, %struct.vector_str* %8)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %348

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %96
  br label %344

110:                                              ; preds = %45
  %111 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %112 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  br label %348

115:                                              ; preds = %110
  %116 = load i8*, i8** %7, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 10)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  br label %348

122:                                              ; preds = %118
  %123 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %124 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %123, %struct.vector_str* %8)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %348

127:                                              ; preds = %122
  br label %128

128:                                              ; preds = %127, %115
  br label %344

129:                                              ; preds = %45
  %130 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %131 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = load i64, i64* %10, align 8
  %137 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %138 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = icmp ugt i64 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %135, %129
  br label %348

145:                                              ; preds = %135
  %146 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %147 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @strlen(i8* %152)
  store i64 %153, i64* %11, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145
  br label %348

156:                                              ; preds = %145
  %157 = load i64, i64* %11, align 8
  %158 = add i64 %157, 2
  %159 = call i8* @malloc(i64 %158)
  store i8* %159, i8** %13, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %348

162:                                              ; preds = %156
  %163 = load i8*, i8** %13, align 8
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, 2
  %166 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %167 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i8**, i8*** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds i8*, i8** %169, i64 %170
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @snprintf(i8* %163, i64 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  %174 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, 1
  %178 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %174, i8* %175, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %162
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @free(i8* %181)
  br label %348

183:                                              ; preds = %162
  %184 = load i8*, i8** %7, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %203

186:                                              ; preds = %183
  %187 = load i8*, i8** %13, align 8
  %188 = load i64, i64* %11, align 8
  %189 = add i64 %188, 1
  %190 = call i32 @vector_str_push(%struct.vector_str* %8, i8* %187, i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @free(i8* %193)
  br label %348

195:                                              ; preds = %186
  %196 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %197 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %196, %struct.vector_str* %8)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load i8*, i8** %13, align 8
  %201 = call i32 @free(i8* %200)
  br label %348

202:                                              ; preds = %195
  br label %203

203:                                              ; preds = %202, %183
  %204 = load i8*, i8** %13, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load i64, i64* %10, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %10, align 8
  br label %344

208:                                              ; preds = %45
  %209 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %210 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  br label %348

213:                                              ; preds = %208
  %214 = load i8*, i8** %7, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 9)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  br label %348

220:                                              ; preds = %216
  %221 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %222 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %221, %struct.vector_str* %8)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  br label %348

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %213
  br label %344

227:                                              ; preds = %45
  %228 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %229 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %228, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 9)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  br label %348

232:                                              ; preds = %227
  %233 = load i8*, i8** %7, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %245

235:                                              ; preds = %232
  %236 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i64 9)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  br label %348

239:                                              ; preds = %235
  %240 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %241 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %240, %struct.vector_str* %8)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %244, label %243

243:                                              ; preds = %239
  br label %348

244:                                              ; preds = %239
  br label %245

245:                                              ; preds = %244, %232
  br label %344

246:                                              ; preds = %45
  %247 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %248 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  br label %348

251:                                              ; preds = %246
  %252 = load i8*, i8** %7, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %264

254:                                              ; preds = %251
  %255 = call i32 @vector_str_push(%struct.vector_str* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 6)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  br label %348

258:                                              ; preds = %254
  %259 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %260 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %259, %struct.vector_str* %8)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  br label %348

263:                                              ; preds = %258
  br label %264

264:                                              ; preds = %263, %251
  br label %344

265:                                              ; preds = %45
  %266 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %267 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %280, label %271

271:                                              ; preds = %265
  %272 = load i64, i64* %10, align 8
  %273 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %274 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = icmp ugt i64 %272, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %271, %265
  br label %348

281:                                              ; preds = %271
  %282 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %283 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i8**, i8*** %284, align 8
  %286 = load i64, i64* %10, align 8
  %287 = getelementptr inbounds i8*, i8** %285, i64 %286
  %288 = load i8*, i8** %287, align 8
  %289 = call i64 @strlen(i8* %288)
  store i64 %289, i64* %11, align 8
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  br label %348

292:                                              ; preds = %281
  %293 = load i64, i64* %11, align 8
  %294 = add i64 %293, 12
  %295 = call i8* @malloc(i64 %294)
  store i8* %295, i8** %13, align 8
  %296 = icmp eq i8* %295, null
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %348

298:                                              ; preds = %292
  %299 = load i8*, i8** %13, align 8
  %300 = load i64, i64* %11, align 8
  %301 = add i64 %300, 12
  %302 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %6, align 8
  %303 = getelementptr inbounds %struct.vector_type_qualifier, %struct.vector_type_qualifier* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i8**, i8*** %304, align 8
  %306 = load i64, i64* %10, align 8
  %307 = getelementptr inbounds i8*, i8** %305, i64 %306
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 @snprintf(i8* %299, i64 %301, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %308)
  %310 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %311 = load i8*, i8** %13, align 8
  %312 = load i64, i64* %11, align 8
  %313 = add i64 %312, 11
  %314 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %310, i8* %311, i64 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %298
  %317 = load i8*, i8** %13, align 8
  %318 = call i32 @free(i8* %317)
  br label %348

319:                                              ; preds = %298
  %320 = load i8*, i8** %7, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %339

322:                                              ; preds = %319
  %323 = load i8*, i8** %13, align 8
  %324 = load i64, i64* %11, align 8
  %325 = add i64 %324, 11
  %326 = call i32 @vector_str_push(%struct.vector_str* %8, i8* %323, i64 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %331, label %328

328:                                              ; preds = %322
  %329 = load i8*, i8** %13, align 8
  %330 = call i32 @free(i8* %329)
  br label %348

331:                                              ; preds = %322
  %332 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %333 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %332, %struct.vector_str* %8)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %331
  %336 = load i8*, i8** %13, align 8
  %337 = call i32 @free(i8* %336)
  br label %348

338:                                              ; preds = %331
  br label %339

339:                                              ; preds = %338, %319
  %340 = load i8*, i8** %13, align 8
  %341 = call i32 @free(i8* %340)
  %342 = load i64, i64* %10, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %10, align 8
  br label %344

344:                                              ; preds = %45, %339, %264, %245, %226, %203, %128, %109, %90, %71
  %345 = load i64, i64* %9, align 8
  %346 = add i64 %345, -1
  store i64 %346, i64* %9, align 8
  br label %42

347:                                              ; preds = %42
  store i32 1, i32* %12, align 4
  br label %348

348:                                              ; preds = %347, %335, %328, %316, %297, %291, %280, %262, %257, %250, %243, %238, %231, %224, %219, %212, %199, %192, %180, %161, %155, %144, %126, %121, %114, %107, %102, %95, %88, %83, %76, %69, %64, %57, %39
  %349 = load i8*, i8** %7, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = call i32 @vector_str_dest(%struct.vector_str* %8)
  br label %353

353:                                              ; preds = %351, %348
  %354 = load i32, i32* %12, align 4
  store i32 %354, i32* %4, align 4
  br label %355

355:                                              ; preds = %353, %32, %25, %19
  %356 = load i32, i32* %4, align 4
  ret i32 %356
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
