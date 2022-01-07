; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/iconv_std/extr_citrus_iconv_std.c__citrus_iconv_std_iconv_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_iconv = type { %struct.TYPE_2__*, %struct._citrus_iconv_std_context* }
%struct.TYPE_2__ = type { i64, i32, i32, %struct._citrus_iconv_std_shared* }
%struct._citrus_iconv_std_shared = type { i32, i64 }
%struct._citrus_iconv_std_context = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E_NO_CORRESPONDING_CHAR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@_CITRUS_ICONV_F_HIDE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_iconv*, i8**, i64*, i8**, i64*, i32, i64*)* @_citrus_iconv_std_iconv_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_iconv_std_iconv_convert(%struct._citrus_iconv* noalias %0, i8** noalias %1, i64* noalias %2, i8** noalias %3, i64* noalias %4, i32 %5, i64* noalias %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct._citrus_iconv*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct._citrus_iconv_std_shared*, align 8
  %17 = alloca %struct._citrus_iconv_std_context*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct._citrus_iconv* %0, %struct._citrus_iconv** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %26 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %27 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %29, align 8
  store %struct._citrus_iconv_std_shared* %30, %struct._citrus_iconv_std_shared** %16, align 8
  %31 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %32 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %31, i32 0, i32 1
  %33 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %32, align 8
  store %struct._citrus_iconv_std_context* %33, %struct._citrus_iconv_std_context** %17, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %21, align 8
  %34 = load i8**, i8*** %10, align 8
  %35 = icmp eq i8** %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %7
  %37 = load i8**, i8*** %10, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %36, %7
  %41 = load i8**, i8*** %12, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %40
  %44 = load i8**, i8*** %12, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %49 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %48, i32 0, i32 1
  %50 = call i32 @save_encoding_state(i32* %49)
  %51 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %52 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %51, i32 0, i32 0
  %53 = call i32 @save_encoding_state(i32* %52)
  store i64 0, i64* %23, align 8
  %54 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %55 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %54, i32 0, i32 0
  %56 = load i8**, i8*** %12, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i64*, i64** %13, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @put_state_resetx(i32* %55, i8* %57, i64 %59, i64* %23)
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %242

64:                                               ; preds = %47
  %65 = load i64, i64* %23, align 8
  %66 = icmp eq i64 %65, -2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %24, align 4
  br label %242

69:                                               ; preds = %64
  %70 = load i64, i64* %23, align 8
  %71 = load i8**, i8*** %12, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %70
  store i8* %73, i8** %71, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %74
  store i64 %77, i64* %75, align 8
  br label %82

78:                                               ; preds = %43, %40
  %79 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %80 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %79, i32 0, i32 0
  %81 = call i32 @init_encoding_state(i32* %80)
  br label %82

82:                                               ; preds = %78, %69
  %83 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %84 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %83, i32 0, i32 1
  %85 = call i32 @init_encoding_state(i32* %84)
  %86 = load i64*, i64** %15, align 8
  store i64 0, i64* %86, align 8
  store i32 0, i32* %8, align 4
  br label %252

87:                                               ; preds = %36
  br label %88

88:                                               ; preds = %219, %87
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %94 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %93, i32 0, i32 1
  %95 = call i32 @get_state_desc_gen(i32* %94, i32* %25)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %25, align 4
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %25, align 4
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %92
  br label %239

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %88
  %104 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %105 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %104, i32 0, i32 1
  %106 = call i32 @save_encoding_state(i32* %105)
  %107 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %108 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %107, i32 0, i32 0
  %109 = call i32 @save_encoding_state(i32* %108)
  %110 = load i8**, i8*** %10, align 8
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %20, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %22, align 8
  %112 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %113 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %112, i32 0, i32 1
  %114 = load i64*, i64** %11, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %117 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @mbtocsx(i32* %113, i32* %18, i32* %19, i8** %20, i64 %115, i64* %22, i32 %120)
  store i32 %121, i32* %24, align 4
  %122 = load i32, i32* %24, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %103
  br label %242

125:                                              ; preds = %103
  %126 = load i64, i64* %22, align 8
  %127 = icmp eq i64 %126, -2
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %130 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %129, i32 0, i32 1
  %131 = call i32 @get_state_desc_gen(i32* %130, i32* %25)
  store i32 %131, i32* %24, align 4
  %132 = load i32, i32* %24, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %24, align 4
  br label %242

136:                                              ; preds = %128
  %137 = load i32, i32* %25, align 4
  switch i32 %137, label %139 [
    i32 129, label %138
    i32 128, label %138
  ]

138:                                              ; preds = %136, %136
  br label %219

139:                                              ; preds = %136
  %140 = load i32, i32* @EINVAL, align 4
  store i32 %140, i32* %24, align 4
  br label %242

141:                                              ; preds = %125
  %142 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %16, align 8
  %143 = call i32 @do_conv(%struct._citrus_iconv_std_shared* %142, i32* %18, i32* %19)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %200

146:                                              ; preds = %141
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* @E_NO_CORRESPONDING_CHAR, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %199

150:                                              ; preds = %146
  %151 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %152 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %150
  %158 = load i32, i32* @EILSEQ, align 4
  store i32 %158, i32* %24, align 4
  br label %242

159:                                              ; preds = %150
  %160 = load i64, i64* %21, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %21, align 8
  store i64 0, i64* %23, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @_CITRUS_ICONV_F_HIDE_INVALID, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %198

166:                                              ; preds = %159
  %167 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %168 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %198, label %173

173:                                              ; preds = %166
  %174 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %16, align 8
  %175 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %173
  %179 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %180 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %179, i32 0, i32 0
  %181 = load i8**, i8*** %12, align 8
  %182 = load i8*, i8** %181, align 8
  %183 = load i64*, i64** %13, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load %struct._citrus_iconv_std_shared*, %struct._citrus_iconv_std_shared** %16, align 8
  %186 = getelementptr inbounds %struct._citrus_iconv_std_shared, %struct._citrus_iconv_std_shared* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %189 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @wctombx(i32* %180, i8* %182, i64 %184, i32 %187, i64* %23, i32 %192)
  store i32 %193, i32* %24, align 4
  %194 = load i32, i32* %24, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %178
  br label %242

197:                                              ; preds = %178
  br label %198

198:                                              ; preds = %197, %173, %166, %159
  br label %219

199:                                              ; preds = %146
  br label %242

200:                                              ; preds = %141
  %201 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %202 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %201, i32 0, i32 0
  %203 = load i8**, i8*** %12, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = load i64*, i64** %13, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %18, align 4
  %208 = load i32, i32* %19, align 4
  %209 = load %struct._citrus_iconv*, %struct._citrus_iconv** %9, align 8
  %210 = getelementptr inbounds %struct._citrus_iconv, %struct._citrus_iconv* %209, i32 0, i32 0
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @cstombx(i32* %202, i8* %204, i64 %206, i32 %207, i32 %208, i64* %23, i32 %213)
  store i32 %214, i32* %24, align 4
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %200
  br label %242

218:                                              ; preds = %200
  br label %219

219:                                              ; preds = %218, %198, %138
  %220 = load i8*, i8** %20, align 8
  %221 = load i8**, i8*** %10, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = ptrtoint i8* %220 to i64
  %224 = ptrtoint i8* %222 to i64
  %225 = sub i64 %223, %224
  %226 = load i64*, i64** %11, align 8
  %227 = load i64, i64* %226, align 8
  %228 = sub i64 %227, %225
  store i64 %228, i64* %226, align 8
  %229 = load i8*, i8** %20, align 8
  %230 = load i8**, i8*** %10, align 8
  store i8* %229, i8** %230, align 8
  %231 = load i64, i64* %23, align 8
  %232 = load i64*, i64** %13, align 8
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %233, %231
  store i64 %234, i64* %232, align 8
  %235 = load i64, i64* %23, align 8
  %236 = load i8**, i8*** %12, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 %235
  store i8* %238, i8** %236, align 8
  br label %88

239:                                              ; preds = %101
  %240 = load i64, i64* %21, align 8
  %241 = load i64*, i64** %15, align 8
  store i64 %240, i64* %241, align 8
  store i32 0, i32* %8, align 4
  br label %252

242:                                              ; preds = %217, %199, %196, %157, %139, %134, %124, %67, %63
  %243 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %244 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %243, i32 0, i32 1
  %245 = call i32 @restore_encoding_state(i32* %244)
  %246 = load %struct._citrus_iconv_std_context*, %struct._citrus_iconv_std_context** %17, align 8
  %247 = getelementptr inbounds %struct._citrus_iconv_std_context, %struct._citrus_iconv_std_context* %246, i32 0, i32 0
  %248 = call i32 @restore_encoding_state(i32* %247)
  %249 = load i64, i64* %21, align 8
  %250 = load i64*, i64** %15, align 8
  store i64 %249, i64* %250, align 8
  %251 = load i32, i32* %24, align 4
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %242, %239, %82
  %253 = load i32, i32* %8, align 4
  ret i32 %253
}

declare dso_local i32 @save_encoding_state(i32*) #1

declare dso_local i32 @put_state_resetx(i32*, i8*, i64, i64*) #1

declare dso_local i32 @init_encoding_state(i32*) #1

declare dso_local i32 @get_state_desc_gen(i32*, i32*) #1

declare dso_local i32 @mbtocsx(i32*, i32*, i32*, i8**, i64, i64*, i32) #1

declare dso_local i32 @do_conv(%struct._citrus_iconv_std_shared*, i32*, i32*) #1

declare dso_local i32 @wctombx(i32*, i8*, i64, i32, i64*, i32) #1

declare dso_local i32 @cstombx(i32*, i8*, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @restore_encoding_state(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
