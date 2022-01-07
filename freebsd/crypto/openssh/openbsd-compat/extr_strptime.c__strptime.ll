; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strptime.c__strptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_strptime.c__strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@_strptime.century = internal global i32 0, align 4
@_strptime.relyear = internal global i32 0, align 4
@TM_YEAR_BASE = common dso_local global i32 0, align 4
@_ALT_E = common dso_local global i32 0, align 4
@_ALT_O = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1
@abday = common dso_local global i32* null, align 8
@abmon = common dso_local global i32* null, align 8
@am_pm = common dso_local global i32* null, align 8
@d_fmt = common dso_local global i32 0, align 4
@d_t_fmt = common dso_local global i32 0, align 4
@day = common dso_local global i32* null, align 8
@mon = common dso_local global i32* null, align 8
@t_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, %struct.tm*, i32)* @_strptime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_strptime(i8* %0, i8* %1, %struct.tm* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.tm* %2, %struct.tm** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @TM_YEAR_BASE, align 4
  store i32 %18, i32* @_strptime.century, align 4
  store i32 -1, i32* @_strptime.relyear, align 4
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %240, %39, %19
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %10, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %241

26:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  %27 = load i8, i8* %10, align 1
  %28 = call i64 @isspace(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @isspace(i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %21

42:                                               ; preds = %26
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  %45 = load i8, i8* %43, align 1
  store i8 %45, i8* %10, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 37
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %56

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %71, %66, %49
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  %53 = load i8, i8* %51, align 1
  store i8 %53, i8* %10, align 1
  %54 = zext i8 %53 to i32
  switch i32 %54, label %239 [
    i32 37, label %55
    i32 69, label %66
    i32 79, label %71
    i32 68, label %76
    i32 82, label %84
    i32 114, label %92
    i32 84, label %100
    i32 67, label %108
    i32 100, label %117
    i32 101, label %117
    i32 107, label %126
    i32 72, label %128
    i32 108, label %137
    i32 73, label %139
    i32 106, label %148
    i32 77, label %160
    i32 109, label %169
    i32 83, label %182
    i32 85, label %191
    i32 87, label %191
    i32 119, label %198
    i32 89, label %207
    i32 121, label %219
    i32 110, label %228
    i32 116, label %228
  ]

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i8, i8* %10, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  %61 = load i8, i8* %59, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i8* null, i8** %5, align 8
  br label %277

65:                                               ; preds = %56
  br label %240

66:                                               ; preds = %50
  %67 = call i32 @_LEGAL_ALT(i32 0)
  %68 = load i32, i32* @_ALT_E, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  br label %50

71:                                               ; preds = %50
  %72 = call i32 @_LEGAL_ALT(i32 0)
  %73 = load i32, i32* @_ALT_O, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %50

76:                                               ; preds = %50
  %77 = call i32 @_LEGAL_ALT(i32 0)
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.tm*, %struct.tm** %8, align 8
  %80 = call i8* @_strptime(i8* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %79, i32 0)
  store i8* %80, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  store i8* null, i8** %5, align 8
  br label %277

83:                                               ; preds = %76
  br label %240

84:                                               ; preds = %50
  %85 = call i32 @_LEGAL_ALT(i32 0)
  %86 = load i8*, i8** %11, align 8
  %87 = load %struct.tm*, %struct.tm** %8, align 8
  %88 = call i8* @_strptime(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %87, i32 0)
  store i8* %88, i8** %11, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i8* null, i8** %5, align 8
  br label %277

91:                                               ; preds = %84
  br label %240

92:                                               ; preds = %50
  %93 = call i32 @_LEGAL_ALT(i32 0)
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.tm*, %struct.tm** %8, align 8
  %96 = call i8* @_strptime(i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %95, i32 0)
  store i8* %96, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  store i8* null, i8** %5, align 8
  br label %277

99:                                               ; preds = %92
  br label %240

100:                                              ; preds = %50
  %101 = call i32 @_LEGAL_ALT(i32 0)
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.tm*, %struct.tm** %8, align 8
  %104 = call i8* @_strptime(i8* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %103, i32 0)
  store i8* %104, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i8* null, i8** %5, align 8
  br label %277

107:                                              ; preds = %100
  br label %240

108:                                              ; preds = %50
  %109 = load i32, i32* @_ALT_E, align 4
  %110 = call i32 @_LEGAL_ALT(i32 %109)
  %111 = call i32 @_conv_num(i8** %11, i32* %14, i32 0, i32 99)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i8* null, i8** %5, align 8
  br label %277

114:                                              ; preds = %108
  %115 = load i32, i32* %14, align 4
  %116 = mul nsw i32 %115, 100
  store i32 %116, i32* @_strptime.century, align 4
  br label %240

117:                                              ; preds = %50, %50
  %118 = load i32, i32* @_ALT_O, align 4
  %119 = call i32 @_LEGAL_ALT(i32 %118)
  %120 = load %struct.tm*, %struct.tm** %8, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 2
  %122 = call i32 @_conv_num(i8** %11, i32* %121, i32 1, i32 31)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i8* null, i8** %5, align 8
  br label %277

125:                                              ; preds = %117
  br label %240

126:                                              ; preds = %50
  %127 = call i32 @_LEGAL_ALT(i32 0)
  br label %128

128:                                              ; preds = %50, %126
  %129 = load i32, i32* @_ALT_O, align 4
  %130 = call i32 @_LEGAL_ALT(i32 %129)
  %131 = load %struct.tm*, %struct.tm** %8, align 8
  %132 = getelementptr inbounds %struct.tm, %struct.tm* %131, i32 0, i32 3
  %133 = call i32 @_conv_num(i8** %11, i32* %132, i32 0, i32 23)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  store i8* null, i8** %5, align 8
  br label %277

136:                                              ; preds = %128
  br label %240

137:                                              ; preds = %50
  %138 = call i32 @_LEGAL_ALT(i32 0)
  br label %139

139:                                              ; preds = %50, %137
  %140 = load i32, i32* @_ALT_O, align 4
  %141 = call i32 @_LEGAL_ALT(i32 %140)
  %142 = load %struct.tm*, %struct.tm** %8, align 8
  %143 = getelementptr inbounds %struct.tm, %struct.tm* %142, i32 0, i32 3
  %144 = call i32 @_conv_num(i8** %11, i32* %143, i32 1, i32 12)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  store i8* null, i8** %5, align 8
  br label %277

147:                                              ; preds = %139
  br label %240

148:                                              ; preds = %50
  %149 = call i32 @_LEGAL_ALT(i32 0)
  %150 = load %struct.tm*, %struct.tm** %8, align 8
  %151 = getelementptr inbounds %struct.tm, %struct.tm* %150, i32 0, i32 4
  %152 = call i32 @_conv_num(i8** %11, i32* %151, i32 1, i32 366)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %148
  store i8* null, i8** %5, align 8
  br label %277

155:                                              ; preds = %148
  %156 = load %struct.tm*, %struct.tm** %8, align 8
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 4
  br label %240

160:                                              ; preds = %50
  %161 = load i32, i32* @_ALT_O, align 4
  %162 = call i32 @_LEGAL_ALT(i32 %161)
  %163 = load %struct.tm*, %struct.tm** %8, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 5
  %165 = call i32 @_conv_num(i8** %11, i32* %164, i32 0, i32 59)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  store i8* null, i8** %5, align 8
  br label %277

168:                                              ; preds = %160
  br label %240

169:                                              ; preds = %50
  %170 = load i32, i32* @_ALT_O, align 4
  %171 = call i32 @_LEGAL_ALT(i32 %170)
  %172 = load %struct.tm*, %struct.tm** %8, align 8
  %173 = getelementptr inbounds %struct.tm, %struct.tm* %172, i32 0, i32 1
  %174 = call i32 @_conv_num(i8** %11, i32* %173, i32 1, i32 12)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  store i8* null, i8** %5, align 8
  br label %277

177:                                              ; preds = %169
  %178 = load %struct.tm*, %struct.tm** %8, align 8
  %179 = getelementptr inbounds %struct.tm, %struct.tm* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 4
  br label %240

182:                                              ; preds = %50
  %183 = load i32, i32* @_ALT_O, align 4
  %184 = call i32 @_LEGAL_ALT(i32 %183)
  %185 = load %struct.tm*, %struct.tm** %8, align 8
  %186 = getelementptr inbounds %struct.tm, %struct.tm* %185, i32 0, i32 6
  %187 = call i32 @_conv_num(i8** %11, i32* %186, i32 0, i32 61)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %182
  store i8* null, i8** %5, align 8
  br label %277

190:                                              ; preds = %182
  br label %240

191:                                              ; preds = %50, %50
  %192 = load i32, i32* @_ALT_O, align 4
  %193 = call i32 @_LEGAL_ALT(i32 %192)
  %194 = call i32 @_conv_num(i8** %11, i32* %14, i32 0, i32 53)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  store i8* null, i8** %5, align 8
  br label %277

197:                                              ; preds = %191
  br label %240

198:                                              ; preds = %50
  %199 = load i32, i32* @_ALT_O, align 4
  %200 = call i32 @_LEGAL_ALT(i32 %199)
  %201 = load %struct.tm*, %struct.tm** %8, align 8
  %202 = getelementptr inbounds %struct.tm, %struct.tm* %201, i32 0, i32 0
  %203 = call i32 @_conv_num(i8** %11, i32* %202, i32 0, i32 6)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  store i8* null, i8** %5, align 8
  br label %277

206:                                              ; preds = %198
  br label %240

207:                                              ; preds = %50
  %208 = load i32, i32* @_ALT_E, align 4
  %209 = call i32 @_LEGAL_ALT(i32 %208)
  %210 = call i32 @_conv_num(i8** %11, i32* %14, i32 0, i32 9999)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %207
  store i8* null, i8** %5, align 8
  br label %277

213:                                              ; preds = %207
  store i32 -1, i32* @_strptime.relyear, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @TM_YEAR_BASE, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load %struct.tm*, %struct.tm** %8, align 8
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %217, i32 0, i32 7
  store i32 %216, i32* %218, align 4
  br label %240

219:                                              ; preds = %50
  %220 = load i32, i32* @_ALT_E, align 4
  %221 = load i32, i32* @_ALT_O, align 4
  %222 = or i32 %220, %221
  %223 = call i32 @_LEGAL_ALT(i32 %222)
  %224 = call i32 @_conv_num(i8** %11, i32* @_strptime.relyear, i32 0, i32 99)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %219
  store i8* null, i8** %5, align 8
  br label %277

227:                                              ; preds = %219
  br label %240

228:                                              ; preds = %50, %50
  %229 = call i32 @_LEGAL_ALT(i32 0)
  br label %230

230:                                              ; preds = %235, %228
  %231 = load i8*, i8** %11, align 8
  %232 = load i8, i8* %231, align 1
  %233 = call i64 @isspace(i8 zeroext %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i8*, i8** %11, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %11, align 8
  br label %230

238:                                              ; preds = %230
  br label %240

239:                                              ; preds = %50
  store i8* null, i8** %5, align 8
  br label %277

240:                                              ; preds = %238, %227, %213, %206, %197, %190, %177, %168, %155, %147, %136, %125, %114, %107, %99, %91, %83, %65
  br label %21

241:                                              ; preds = %21
  %242 = load i32, i32* @_strptime.relyear, align 4
  %243 = icmp ne i32 %242, -1
  br i1 %243, label %244, label %275

244:                                              ; preds = %241
  %245 = load i32, i32* @_strptime.century, align 4
  %246 = load i32, i32* @TM_YEAR_BASE, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = load i32, i32* @_strptime.relyear, align 4
  %250 = icmp sle i32 %249, 68
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = load i32, i32* @_strptime.relyear, align 4
  %253 = add nsw i32 %252, 2000
  %254 = load i32, i32* @TM_YEAR_BASE, align 4
  %255 = sub nsw i32 %253, %254
  %256 = load %struct.tm*, %struct.tm** %8, align 8
  %257 = getelementptr inbounds %struct.tm, %struct.tm* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 4
  br label %265

258:                                              ; preds = %248
  %259 = load i32, i32* @_strptime.relyear, align 4
  %260 = add nsw i32 %259, 1900
  %261 = load i32, i32* @TM_YEAR_BASE, align 4
  %262 = sub nsw i32 %260, %261
  %263 = load %struct.tm*, %struct.tm** %8, align 8
  %264 = getelementptr inbounds %struct.tm, %struct.tm* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 4
  br label %265

265:                                              ; preds = %258, %251
  br label %274

266:                                              ; preds = %244
  %267 = load i32, i32* @_strptime.relyear, align 4
  %268 = load i32, i32* @_strptime.century, align 4
  %269 = add nsw i32 %267, %268
  %270 = load i32, i32* @TM_YEAR_BASE, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load %struct.tm*, %struct.tm** %8, align 8
  %273 = getelementptr inbounds %struct.tm, %struct.tm* %272, i32 0, i32 7
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %266, %265
  br label %275

275:                                              ; preds = %274, %241
  %276 = load i8*, i8** %11, align 8
  store i8* %276, i8** %5, align 8
  br label %277

277:                                              ; preds = %275, %239, %226, %212, %205, %196, %189, %176, %167, %154, %146, %135, %124, %113, %106, %98, %90, %82, %64
  %278 = load i8*, i8** %5, align 8
  ret i8* %278
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @_LEGAL_ALT(i32) #1

declare dso_local i32 @_conv_num(i8**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
