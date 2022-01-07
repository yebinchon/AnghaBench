; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/HZ/extr_citrus_hz.c__citrus_HZ_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, i32*, %struct.TYPE_20__* }

@EINVAL = common dso_local global i32 0, align 4
@ranges = common dso_local global %struct.TYPE_18__* null, align 8
@CTRL = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@ESCAPE_CHAR = common dso_local global i8* null, align 8
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i64, i32, %struct.TYPE_21__*, i64*)* @_citrus_HZ_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_HZ_wcrtomb_priv(%struct.TYPE_22__* noalias %0, i8* noalias %1, i64 %2, i32 %3, %struct.TYPE_21__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = icmp eq %struct.TYPE_20__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %6
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %7, align 4
  br label %323

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, 128
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  store i32 128, i32* %19, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, -129
  store i32 %38, i32* %11, align 4
  br label %40

39:                                               ; preds = %32
  store i32 0, i32* %19, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %11, align 4
  %42 = icmp sle i32 %41, 31
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = call %struct.TYPE_20__* @INIT0(%struct.TYPE_22__* %44)
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %14, align 8
  %46 = load i32, i32* %19, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi %struct.TYPE_19__* [ %51, %48 ], [ %55, %52 ]
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %16, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %59 = icmp eq %struct.TYPE_19__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %320

61:                                               ; preds = %56
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ranges, align 8
  %63 = load i64, i64* @CTRL, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i64 %63
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %17, align 8
  store i64 1, i64* %18, align 8
  br label %157

65:                                               ; preds = %40
  %66 = load i32, i32* %11, align 4
  %67 = icmp sle i32 %66, 127
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %16, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %73 = icmp eq %struct.TYPE_19__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %320

75:                                               ; preds = %68
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %14, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ranges, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i64 %82
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %17, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %18, align 8
  br label %156

87:                                               ; preds = %65
  %88 = load i32, i32* %11, align 4
  %89 = icmp sle i32 %88, 32639
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  store %struct.TYPE_19__* %93, %struct.TYPE_19__** %16, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %95 = icmp eq %struct.TYPE_19__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %320

97:                                               ; preds = %90
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %14, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ranges, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i64 %104
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %17, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %18, align 8
  br label %155

109:                                              ; preds = %87
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 24
  %112 = and i32 %111, 255
  store i32 %112, i32* %20, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %114 = call i32 @E0SET(%struct.TYPE_22__* %113)
  %115 = load i32, i32* %20, align 4
  %116 = call %struct.TYPE_20__* @find_escape(i32 %114, i32 %115)
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %14, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %118 = icmp eq %struct.TYPE_20__* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = call i32 @E1SET(%struct.TYPE_22__* %120)
  %122 = load i32, i32* %20, align 4
  %123 = call %struct.TYPE_20__* @find_escape(i32 %121, i32 %122)
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %14, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %125 = icmp eq %struct.TYPE_20__* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %320

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %109
  %129 = load i32, i32* %11, align 4
  %130 = and i32 %129, 16777215
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  br label %141

137:                                              ; preds = %128
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi %struct.TYPE_19__* [ %136, %133 ], [ %140, %137 ]
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %16, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %144 = icmp eq %struct.TYPE_19__* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %320

146:                                              ; preds = %141
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ranges, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i64 %150
  store %struct.TYPE_18__* %151, %struct.TYPE_18__** %17, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %18, align 8
  br label %155

155:                                              ; preds = %146, %97
  br label %156

156:                                              ; preds = %155, %75
  br label %157

157:                                              ; preds = %156, %61
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %162 = icmp ne %struct.TYPE_20__* %160, %161
  br i1 %162, label %163, label %263

163:                                              ; preds = %157
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = call %struct.TYPE_20__* @INIT0(%struct.TYPE_22__* %164)
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %15, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = call i64 @SET(%struct.TYPE_20__* %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %171 = call i64 @SET(%struct.TYPE_20__* %170)
  %172 = icmp eq i64 %169, %171
  br i1 %172, label %173, label %192

173:                                              ; preds = %163
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %175, align 8
  %177 = call %struct.TYPE_20__* @INIT(%struct.TYPE_20__* %176)
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %179 = icmp ne %struct.TYPE_20__* %177, %178
  br i1 %179, label %190, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %185 = icmp eq %struct.TYPE_20__* %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %189 = icmp eq %struct.TYPE_20__* %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %186, %180, %173
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %15, align 8
  br label %191

191:                                              ; preds = %190, %186
  br label %199

192:                                              ; preds = %163
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %195 = call %struct.TYPE_20__* @INIT(%struct.TYPE_20__* %194)
  store %struct.TYPE_20__* %195, %struct.TYPE_20__** %15, align 8
  %196 = icmp eq %struct.TYPE_20__* %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %15, align 8
  br label %198

198:                                              ; preds = %197, %192
  br label %199

199:                                              ; preds = %198, %191
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %201 = icmp ne %struct.TYPE_20__* %200, null
  br i1 %201, label %202, label %231

202:                                              ; preds = %199
  %203 = load i64, i64* %10, align 8
  %204 = icmp ult i64 %203, 2
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = load i32, i32* @E2BIG, align 4
  store i32 %206, i32* %7, align 4
  br label %323

207:                                              ; preds = %202
  %208 = load i64, i64* %10, align 8
  %209 = sub i64 %208, 2
  store i64 %209, i64* %10, align 8
  %210 = load i8*, i8** @ESCAPE_CHAR, align 8
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %216, align 8
  %219 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %211, i32* %219, align 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %221 = call i8* @ESC(%struct.TYPE_20__* %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 %222, i32* %230, align 4
  br label %231

231:                                              ; preds = %207, %199
  %232 = load i64, i64* %10, align 8
  %233 = icmp ult i64 %232, 2
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* @E2BIG, align 4
  store i32 %235, i32* %7, align 4
  br label %323

236:                                              ; preds = %231
  %237 = load i64, i64* %10, align 8
  %238 = sub i64 %237, 2
  store i64 %238, i64* %10, align 8
  %239 = load i8*, i8** @ESCAPE_CHAR, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %245, align 8
  %248 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32 %240, i32* %248, align 4
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %250 = call i8* @ESC(%struct.TYPE_20__* %249)
  %251 = ptrtoint i8* %250 to i32
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %256, align 8
  %259 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %251, i32* %259, align 4
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 2
  store %struct.TYPE_20__* %260, %struct.TYPE_20__** %262, align 8
  br label %263

263:                                              ; preds = %236, %157
  %264 = load i64, i64* %10, align 8
  %265 = load i64, i64* %18, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  %268 = load i32, i32* @E2BIG, align 4
  store i32 %268, i32* %7, align 4
  br label %323

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %293, %269
  %271 = load i64, i64* %18, align 8
  %272 = add i64 %271, -1
  store i64 %272, i64* %18, align 8
  %273 = icmp ugt i64 %271, 0
  br i1 %273, label %274, label %305

274:                                              ; preds = %270
  %275 = load i32, i32* %11, align 4
  %276 = load i64, i64* %18, align 8
  %277 = mul i64 %276, 8
  %278 = trunc i64 %277 to i32
  %279 = ashr i32 %275, %278
  %280 = and i32 %279, 255
  store i32 %280, i32* %20, align 4
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %20, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %292, label %286

286:                                              ; preds = %274
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %20, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %286, %274
  br label %320

293:                                              ; preds = %286
  %294 = load i32, i32* %20, align 4
  %295 = load i32, i32* %19, align 4
  %296 = or i32 %294, %295
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %297, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, 1
  store i64 %303, i64* %301, align 8
  %304 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 %296, i32* %304, align 4
  br label %270

305:                                              ; preds = %270
  %306 = load i8*, i8** %9, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @memcpy(i8* %306, i32* %309, i64 %312)
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64*, i64** %13, align 8
  store i64 %316, i64* %317, align 8
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 0
  store i64 0, i64* %319, align 8
  store i32 0, i32* %7, align 4
  br label %323

320:                                              ; preds = %292, %145, %126, %96, %74, %60
  %321 = load i64*, i64** %13, align 8
  store i64 -1, i64* %321, align 8
  %322 = load i32, i32* @EILSEQ, align 4
  store i32 %322, i32* %7, align 4
  br label %323

323:                                              ; preds = %320, %305, %267, %234, %205, %30
  %324 = load i32, i32* %7, align 4
  ret i32 %324
}

declare dso_local %struct.TYPE_20__* @INIT0(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_20__* @find_escape(i32, i32) #1

declare dso_local i32 @E0SET(%struct.TYPE_22__*) #1

declare dso_local i32 @E1SET(%struct.TYPE_22__*) #1

declare dso_local i64 @SET(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @INIT(%struct.TYPE_20__*) #1

declare dso_local i8* @ESC(%struct.TYPE_20__*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
