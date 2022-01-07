; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_general_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_general_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i64, i8* }
%struct.TYPE_16__ = type { i8*, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__, i32, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }

@HX509_NAME_CONSTRAINT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_25__*, i32*)* @match_general_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_general_name(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_24__, align 8
  %15 = alloca %struct.TYPE_24__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %262 [
    i32 131, label %29
    i32 129, label %57
    i32 134, label %162
    i32 133, label %217
    i32 128, label %261
    i32 132, label %261
    i32 130, label %261
  ]

29:                                               ; preds = %3
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = call i32 @der_heim_oid_cmp(i32* %33, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %41, i32* %4, align 4
  br label %264

42:                                               ; preds = %29
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = call i32 @heim_any_cmp(i32* %46, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %54, i32* %4, align 4
  br label %264

55:                                               ; preds = %42
  %56 = load i32*, i32** %7, align 8
  store i32 1, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %264

57:                                               ; preds = %3
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @memchr(i8* %62, i8 signext 64, i64 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %57
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = call i32 @der_printable_string_cmp(%struct.TYPE_16__* %74, %struct.TYPE_16__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %81, i32* %4, align 4
  br label %264

82:                                               ; preds = %71
  br label %160

83:                                               ; preds = %57
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @memchr(i8* %88, i8 signext 64, i64 %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %98, i32* %4, align 4
  br label %264

99:                                               ; preds = %83
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %9, align 8
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %110 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub i64 %109, %118
  store i64 %119, i64* %10, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %99
  %124 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %124, i32* %4, align 4
  br label %264

125:                                              ; preds = %99
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i64, i64* %10, align 8
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  %130 = load i64, i64* %9, align 8
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i64, i64* %9, align 8
  %139 = call i32 @memcmp(i8* %132, i8* %137, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %142, i32* %4, align 4
  br label %264

143:                                              ; preds = %125
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %159

147:                                              ; preds = %143
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %9, align 8
  %151 = sub i64 %149, %150
  %152 = add i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 46
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %158, i32* %4, align 4
  br label %264

159:                                              ; preds = %147, %143
  br label %160

160:                                              ; preds = %159, %82
  %161 = load i32*, i32** %7, align 8
  store i32 1, i32* %161, align 4
  store i32 0, i32* %4, align 4
  br label %264

162:                                              ; preds = %3
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %11, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* %12, align 8
  %175 = icmp ugt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %177, i32* %4, align 4
  br label %264

178:                                              ; preds = %162
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  store i8* %183, i8** %13, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* %11, align 8
  %187 = sub i64 %185, %186
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* %11, align 8
  %195 = call i32 @memcmp(i8* %188, i8* %193, i64 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %178
  %198 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %198, i32* %4, align 4
  br label %264

199:                                              ; preds = %178
  %200 = load i64, i64* %12, align 8
  %201 = load i64, i64* %11, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %215

203:                                              ; preds = %199
  %204 = load i8*, i8** %13, align 8
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %11, align 8
  %207 = sub i64 %205, %206
  %208 = sub i64 %207, 1
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 46
  br i1 %212, label %213, label %215

213:                                              ; preds = %203
  %214 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %214, i32* %4, align 4
  br label %264

215:                                              ; preds = %203, %199
  %216 = load i32*, i32** %7, align 8
  store i32 1, i32* %216, align 4
  store i32 0, i32* %4, align 4
  br label %264

217:                                              ; preds = %3
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  store i32* null, i32** %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 0
  store i32 0, i32* %221, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 1
  store i32 %226, i32* %227, align 4
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  store i32* null, i32** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 1
  store i32 %244, i32* %245, align 4
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = call i32 @match_X501Name(%struct.TYPE_24__* %14, %struct.TYPE_24__* %15)
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %217
  %258 = load i32*, i32** %7, align 8
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %257, %217
  %260 = load i32, i32* %16, align 4
  store i32 %260, i32* %4, align 4
  br label %264

261:                                              ; preds = %3, %3, %3
  br label %262

262:                                              ; preds = %3, %261
  %263 = load i32, i32* @HX509_NAME_CONSTRAINT_ERROR, align 4
  store i32 %263, i32* %4, align 4
  br label %264

264:                                              ; preds = %262, %259, %215, %213, %197, %176, %160, %157, %141, %123, %97, %80, %55, %53, %40
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @der_heim_oid_cmp(i32*, i32*) #1

declare dso_local i32 @heim_any_cmp(i32*, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @der_printable_string_cmp(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local i32 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @match_X501Name(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
