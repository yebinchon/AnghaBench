; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_fill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { i64 }

@HMAP = common dso_local global %struct.TYPE_19__* null, align 8
@SC_SCR_REDRAW = common dso_local global i32 0, align 4
@TMAP = common dso_local global %struct.TYPE_19__* null, align 8
@OOBLNO = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vs_sm_fill(%struct.TYPE_20__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  br label %15

15:                                               ; preds = %22, %3
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %10, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = call i32 @SMAP_FLUSH(%struct.TYPE_19__* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 1
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  br label %15

25:                                               ; preds = %15
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = load i32, i32* @SC_SCR_REDRAW, align 4
  %28 = call i32 @F_SET(%struct.TYPE_20__* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %229 [
    i32 130, label %30
    i32 128, label %81
    i32 129, label %136
    i32 131, label %192
  ]

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = call i32 @HALFTEXT(%struct.TYPE_20__* %36)
  %38 = call i32 @vs_sm_nlines(%struct.TYPE_20__* %34, %struct.TYPE_19__* %9, i8* %35, i32 %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = call i32 @HALFTEXT(%struct.TYPE_20__* %39)
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  br label %86

43:                                               ; preds = %30
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %46 = call i32 @db_last(%struct.TYPE_20__* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %257

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i8* @vs_screens(%struct.TYPE_20__* %51, i8* %55, i32* null)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %62 = call i32 @HALFTEXT(%struct.TYPE_20__* %61)
  %63 = call i32 @vs_sm_nlines(%struct.TYPE_20__* %59, %struct.TYPE_19__* %9, i8* %60, i32 %62)
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %65 = call i32 @HALFTEXT(%struct.TYPE_20__* %64)
  %66 = icmp sle i32 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %210

80:                                               ; preds = %49
  br label %137

81:                                               ; preds = %25
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** @OOBLNO, align 8
  %84 = icmp ne i8* %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %223, %163, %85, %42
  %87 = load i8*, i8** %6, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %114

95:                                               ; preds = %81
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i8* @vs_screens(%struct.TYPE_20__* %96, i8* %101, i32* null)
  %103 = ptrtoint i8* %102 to i64
  store i64 %103, i64* %10, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %104, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %95
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %8, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %132, %114
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %10, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %119
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i64 1
  %128 = call i64 @vs_sm_next(%struct.TYPE_20__* %124, %struct.TYPE_19__* %125, %struct.TYPE_19__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %232

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 1
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %8, align 8
  br label %119

135:                                              ; preds = %119
  br label %231

136:                                              ; preds = %25
  br label %137

137:                                              ; preds = %136, %80
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = udiv i64 %141, 2
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i64 %142
  store %struct.TYPE_19__* %143, %struct.TYPE_19__** %8, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  store i32 1, i32* %151, align 4
  br label %152

152:                                              ; preds = %165, %137
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %155 = icmp ugt %struct.TYPE_19__* %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i64 -1
  %161 = call i32 @vs_sm_prev(%struct.TYPE_20__* %157, %struct.TYPE_19__* %158, %struct.TYPE_19__* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  br label %86

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 -1
  store %struct.TYPE_19__* %167, %struct.TYPE_19__** %8, align 8
  br label %152

168:                                              ; preds = %152
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = udiv i64 %172, 2
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i64 %173
  store %struct.TYPE_19__* %174, %struct.TYPE_19__** %8, align 8
  br label %175

175:                                              ; preds = %188, %168
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %178 = icmp ult %struct.TYPE_19__* %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i64 1
  %184 = call i64 @vs_sm_next(%struct.TYPE_20__* %180, %struct.TYPE_19__* %181, %struct.TYPE_19__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %179
  br label %232

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 1
  store %struct.TYPE_19__* %190, %struct.TYPE_19__** %8, align 8
  br label %175

191:                                              ; preds = %175
  br label %231

192:                                              ; preds = %25
  %193 = load i8*, i8** %6, align 8
  %194 = load i8*, i8** @OOBLNO, align 8
  %195 = icmp ne i8* %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %192
  %197 = load i8*, i8** %6, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  store i64 0, i64* %202, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %204 = load i8*, i8** %6, align 8
  %205 = call i8* @vs_screens(%struct.TYPE_20__* %203, i8* %204, i32* null)
  %206 = ptrtoint i8* %205 to i32
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %196, %192
  br label %210

210:                                              ; preds = %209, %67
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  store %struct.TYPE_19__* %211, %struct.TYPE_19__** %8, align 8
  br label %212

212:                                              ; preds = %225, %210
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %215 = icmp ugt %struct.TYPE_19__* %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %212
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i64 -1
  %221 = call i32 @vs_sm_prev(%struct.TYPE_20__* %217, %struct.TYPE_19__* %218, %struct.TYPE_19__* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  store i8* inttoptr (i64 1 to i8*), i8** %6, align 8
  br label %86

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 -1
  store %struct.TYPE_19__* %227, %struct.TYPE_19__** %8, align 8
  br label %212

228:                                              ; preds = %212
  br label %231

229:                                              ; preds = %25
  %230 = call i32 (...) @abort() #3
  unreachable

231:                                              ; preds = %228, %191, %135
  store i32 0, i32* %4, align 4
  br label %257

232:                                              ; preds = %186, %130
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  store i32 1, i32* %234, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 2
  store i64 0, i64* %236, align 8
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  store i32 1, i32* %238, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** @HMAP, align 8
  store %struct.TYPE_19__* %239, %struct.TYPE_19__** %8, align 8
  br label %240

240:                                              ; preds = %253, %232
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** @TMAP, align 8
  %243 = icmp ult %struct.TYPE_19__* %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i64 1
  %249 = call i64 @vs_sm_next(%struct.TYPE_20__* %245, %struct.TYPE_19__* %246, %struct.TYPE_19__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  store i32 1, i32* %4, align 4
  br label %257

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 1
  store %struct.TYPE_19__* %255, %struct.TYPE_19__** %8, align 8
  br label %240

256:                                              ; preds = %240
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %256, %251, %231, %48
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local i32 @SMAP_FLUSH(%struct.TYPE_19__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @vs_sm_nlines(%struct.TYPE_20__*, %struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @HALFTEXT(%struct.TYPE_20__*) #1

declare dso_local i32 @db_last(%struct.TYPE_20__*, i32*) #1

declare dso_local i8* @vs_screens(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i64 @vs_sm_next(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vs_sm_prev(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
