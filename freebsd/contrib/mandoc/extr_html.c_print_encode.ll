; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }

@print_encode.rejs = internal constant [10 x i8] c" \\<>&\22\91\92\93\00", align 1
@HTML_SKIPCHAR = common dso_local global i32 0, align 4
@TAG_BR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HTML_NOSPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"&#x%.4X;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.html*, i8*, i8*, i32)* @print_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_encode(%struct.html* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.html*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 0)
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %19, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %271, %236, %227, %223, %216, %213, %207, %199, %178, %169, %163, %162, %135, %122, %111, %39, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %272

27:                                               ; preds = %23
  %28 = load i32, i32* @HTML_SKIPCHAR, align 4
  %29 = load %struct.html*, %struct.html** %5, align 8
  %30 = getelementptr inbounds %struct.html, %struct.html* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 92, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, i32* @HTML_SKIPCHAR, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.html*, %struct.html** %5, align 8
  %43 = getelementptr inbounds %struct.html, %struct.html* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  br label %23

48:                                               ; preds = %34, %27
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcspn(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @print_encode.rejs, i64 0, i64 0))
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %66, %48
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %11, align 8
  %54 = icmp ne i64 %52, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ult i8* %56, %57
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %61, label %69

61:                                               ; preds = %59
  %62 = load %struct.html*, %struct.html** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @print_byte(%struct.html* %62, i8 signext %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  br label %51

69:                                               ; preds = %59
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = icmp uge i8* %73, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 145
  br i1 %85, label %86, label %112

86:                                               ; preds = %81, %76, %72
  %87 = load %struct.html*, %struct.html** %5, align 8
  %88 = load i32, i32* @TAG_BR, align 4
  %89 = call i32 @print_otag(%struct.html* %87, i32 %88, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %108, %86
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 145
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i1 [ true, %94 ], [ %103, %99 ]
  br label %106

106:                                              ; preds = %104, %90
  %107 = phi i1 [ false, %90 ], [ %105, %104 ]
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %6, align 8
  br label %90

111:                                              ; preds = %106
  br label %23

112:                                              ; preds = %81, %69
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = icmp uge i8* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %272

117:                                              ; preds = %112
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 32
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.html*, %struct.html** %5, align 8
  %124 = call i32 @print_endword(%struct.html* %123)
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %6, align 8
  br label %23

127:                                              ; preds = %117
  %128 = load %struct.html*, %struct.html** %5, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %6, align 8
  %131 = load i8, i8* %129, align 1
  %132 = sext i8 %131 to i32
  %133 = call i64 @print_escape(%struct.html* %128, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %23

136:                                              ; preds = %127
  %137 = call i32 @mandoc_escape(i8** %6, i8** %10, i32* %13)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  switch i32 %138, label %170 [
    i32 141, label %139
    i32 136, label %139
    i32 139, label %139
    i32 137, label %139
    i32 140, label %139
    i32 138, label %139
    i32 135, label %139
    i32 131, label %163
    i32 142, label %169
  ]

139:                                              ; preds = %136, %136, %136, %136, %136, %136, %136
  %140 = load i32, i32* %8, align 4
  %141 = icmp eq i32 0, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %139
  %143 = load i32, i32* @HTML_NOSPACE, align 4
  %144 = load %struct.html*, %struct.html** %5, align 8
  %145 = getelementptr inbounds %struct.html, %struct.html* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.html*, %struct.html** %5, align 8
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @html_setfont(%struct.html* %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = load %struct.html*, %struct.html** %5, align 8
  %154 = call i32 @print_metaf(%struct.html* %153)
  br label %155

155:                                              ; preds = %152, %142
  %156 = load i32, i32* @HTML_NOSPACE, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.html*, %struct.html** %5, align 8
  %159 = getelementptr inbounds %struct.html, %struct.html* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %155, %139
  br label %23

163:                                              ; preds = %136
  %164 = load i32, i32* @HTML_SKIPCHAR, align 4
  %165 = load %struct.html*, %struct.html** %5, align 8
  %166 = getelementptr inbounds %struct.html, %struct.html* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  br label %23

169:                                              ; preds = %136
  br label %23

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170
  %172 = load %struct.html*, %struct.html** %5, align 8
  %173 = getelementptr inbounds %struct.html, %struct.html* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @HTML_SKIPCHAR, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = load i32, i32* @HTML_SKIPCHAR, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.html*, %struct.html** %5, align 8
  %182 = getelementptr inbounds %struct.html, %struct.html* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %23

185:                                              ; preds = %171
  %186 = load i32, i32* %16, align 4
  switch i32 %186, label %236 [
    i32 128, label %187
    i32 133, label %193
    i32 130, label %201
    i32 129, label %209
    i32 143, label %213
    i32 144, label %216
    i32 134, label %217
    i32 132, label %224
  ]

187:                                              ; preds = %185
  %188 = load i8*, i8** %10, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 1
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 1
  %192 = call i32 @mchars_num2uc(i8* %189, i32 %191)
  store i32 %192, i32* %12, align 4
  br label %237

193:                                              ; preds = %185
  %194 = load i8*, i8** %10, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call i32 @mchars_num2char(i8* %194, i32 %195)
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %23

200:                                              ; preds = %193
  br label %237

201:                                              ; preds = %185
  %202 = load i8*, i8** %10, align 8
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @mchars_spec2cp(i8* %202, i32 %203)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp sle i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %23

208:                                              ; preds = %201
  br label %237

209:                                              ; preds = %185
  %210 = load i8*, i8** %10, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  store i32 %212, i32* %12, align 4
  br label %237

213:                                              ; preds = %185
  %214 = load %struct.html*, %struct.html** %5, align 8
  %215 = call i32 @print_word(%struct.html* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %23

216:                                              ; preds = %185
  store i32 1, i32* %14, align 4
  br label %23

217:                                              ; preds = %185
  %218 = load i8*, i8** %6, align 8
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp eq i32 0, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store i32 1, i32* %15, align 4
  br label %223

223:                                              ; preds = %222, %217
  br label %23

224:                                              ; preds = %185
  %225 = load i32, i32* %13, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %23

228:                                              ; preds = %224
  %229 = load i8*, i8** %10, align 8
  %230 = load i32, i32* %13, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  store i32 %235, i32* %12, align 4
  br label %237

236:                                              ; preds = %185
  br label %23

237:                                              ; preds = %228, %209, %208, %200, %187
  %238 = load i32, i32* %12, align 4
  %239 = icmp slt i32 %238, 32
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %12, align 4
  %242 = icmp ne i32 %241, 9
  br i1 %242, label %249, label %243

243:                                              ; preds = %240, %237
  %244 = load i32, i32* %12, align 4
  %245 = icmp sgt i32 %244, 126
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i32, i32* %12, align 4
  %248 = icmp slt i32 %247, 160
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %240
  store i32 65533, i32* %12, align 4
  br label %250

250:                                              ; preds = %249, %246, %243
  %251 = load i32, i32* %12, align 4
  %252 = icmp sgt i32 %251, 126
  br i1 %252, label %253, label %260

253:                                              ; preds = %250
  %254 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @snprintf(i8* %254, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %255)
  %257 = load %struct.html*, %struct.html** %5, align 8
  %258 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %259 = call i32 @print_word(%struct.html* %257, i8* %258)
  br label %271

260:                                              ; preds = %250
  %261 = load %struct.html*, %struct.html** %5, align 8
  %262 = load i32, i32* %12, align 4
  %263 = call i64 @print_escape(%struct.html* %261, i32 %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = load %struct.html*, %struct.html** %5, align 8
  %267 = load i32, i32* %12, align 4
  %268 = trunc i32 %267 to i8
  %269 = call i32 @print_byte(%struct.html* %266, i8 signext %268)
  br label %270

270:                                              ; preds = %265, %260
  br label %271

271:                                              ; preds = %270, %253
  br label %23

272:                                              ; preds = %116, %23
  %273 = load i32, i32* %15, align 4
  ret i32 %273
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

declare dso_local i32 @print_otag(%struct.html*, i32, i8*) #1

declare dso_local i32 @print_endword(%struct.html*) #1

declare dso_local i64 @print_escape(%struct.html*, i32) #1

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @html_setfont(%struct.html*, i32) #1

declare dso_local i32 @print_metaf(%struct.html*) #1

declare dso_local i32 @mchars_num2uc(i8*, i32) #1

declare dso_local i32 @mchars_num2char(i8*, i32) #1

declare dso_local i32 @mchars_spec2cp(i8*, i32) #1

declare dso_local i32 @print_word(%struct.html*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
