; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_parse.c_parse_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i64, i64, i8* }

@parse_date.months = internal global [11 x i32] [i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16
@NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"numeric day of week expected.\00", align 1
@SEMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"numeric year expected.\00", align 1
@SLASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"expected slash separating year from month.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"numeric month expected.\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"expected slash separating month from day.\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"numeric day of month expected.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"numeric hour expected.\00", align 1
@COLON = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"expected colon separating hour from minute.\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"numeric minute expected.\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"semicolon expected.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_date(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @next_token(i8** %7, i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @NUMBER, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = call i32 @parse_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SEMI, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @skip_to_semi(i32* %19)
  br label %21

21:                                               ; preds = %18, %13
  store i32 0, i32* %2, align 4
  br label %275

22:                                               ; preds = %1
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @atoi(i8* %23)
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 8
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @next_token(i8** %7, i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @NUMBER, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = call i32 @parse_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SEMI, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @skip_to_semi(i32* %37)
  br label %39

39:                                               ; preds = %36, %31
  store i32 0, i32* %2, align 4
  br label %275

40:                                               ; preds = %22
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1900
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1900
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @next_token(i8** %7, i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SLASH, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = call i32 @parse_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SEMI, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @skip_to_semi(i32* %64)
  br label %66

66:                                               ; preds = %63, %58
  store i32 0, i32* %2, align 4
  br label %275

67:                                               ; preds = %52
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @next_token(i8** %7, i32* %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @NUMBER, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = call i32 @parse_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @SEMI, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @skip_to_semi(i32* %79)
  br label %81

81:                                               ; preds = %78, %73
  store i32 0, i32* %2, align 4
  br label %275

82:                                               ; preds = %67
  %83 = load i8*, i8** %7, align 8
  %84 = call i8* @atoi(i8* %83)
  %85 = getelementptr i8, i8* %84, i64 -1
  %86 = ptrtoint i8* %85 to i32
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @next_token(i8** %7, i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SLASH, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %82
  %94 = call i32 @parse_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @SEMI, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = call i32 @skip_to_semi(i32* %99)
  br label %101

101:                                              ; preds = %98, %93
  store i32 0, i32* %2, align 4
  br label %275

102:                                              ; preds = %82
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @next_token(i8** %7, i32* %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @NUMBER, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = call i32 @parse_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @SEMI, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @skip_to_semi(i32* %114)
  br label %116

116:                                              ; preds = %113, %108
  store i32 0, i32* %2, align 4
  br label %275

117:                                              ; preds = %102
  %118 = load i8*, i8** %7, align 8
  %119 = call i8* @atoi(i8* %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  store i32 %120, i32* %121, align 8
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @next_token(i8** %7, i32* %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @NUMBER, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %117
  %128 = call i32 @parse_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @SEMI, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @skip_to_semi(i32* %133)
  br label %135

135:                                              ; preds = %132, %127
  store i32 0, i32* %2, align 4
  br label %275

136:                                              ; preds = %117
  %137 = load i8*, i8** %7, align 8
  %138 = call i8* @atoi(i8* %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  store i32 %139, i32* %140, align 4
  %141 = load i32*, i32** %3, align 8
  %142 = call i32 @next_token(i8** %7, i32* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @COLON, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %136
  %147 = call i32 @parse_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @SEMI, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32*, i32** %3, align 8
  %153 = call i32 @skip_to_semi(i32* %152)
  br label %154

154:                                              ; preds = %151, %146
  store i32 0, i32* %2, align 4
  br label %275

155:                                              ; preds = %136
  %156 = load i32*, i32** %3, align 8
  %157 = call i32 @next_token(i8** %7, i32* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @NUMBER, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = call i32 @parse_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @SEMI, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @skip_to_semi(i32* %167)
  br label %169

169:                                              ; preds = %166, %161
  store i32 0, i32* %2, align 4
  br label %275

170:                                              ; preds = %155
  %171 = load i8*, i8** %7, align 8
  %172 = call i8* @atoi(i8* %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  store i32 %173, i32* %174, align 8
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @next_token(i8** %7, i32* %175)
  store i32 %176, i32* %5, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @COLON, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %189

180:                                              ; preds = %170
  %181 = call i32 @parse_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @SEMI, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @skip_to_semi(i32* %186)
  br label %188

188:                                              ; preds = %185, %180
  store i32 0, i32* %2, align 4
  br label %275

189:                                              ; preds = %170
  %190 = load i32*, i32** %3, align 8
  %191 = call i32 @next_token(i8** %7, i32* %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @NUMBER, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %189
  %196 = call i32 @parse_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @SEMI, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32*, i32** %3, align 8
  %202 = call i32 @skip_to_semi(i32* %201)
  br label %203

203:                                              ; preds = %200, %195
  store i32 0, i32* %2, align 4
  br label %275

204:                                              ; preds = %189
  %205 = load i8*, i8** %7, align 8
  %206 = call i8* @atoi(i8* %205)
  %207 = ptrtoint i8* %206 to i32
  %208 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  store i32 %207, i32* %208, align 4
  %209 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 7
  store i64 0, i64* %209, align 8
  %210 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 6
  store i64 0, i64* %210, align 8
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 @next_token(i8** %7, i32* %211)
  store i32 %212, i32* %5, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @SEMI, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %204
  %217 = call i32 @parse_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %218 = load i32*, i32** %3, align 8
  %219 = call i32 @skip_to_semi(i32* %218)
  store i32 0, i32* %2, align 4
  br label %275

220:                                              ; preds = %204
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 70
  %224 = mul nsw i32 365, %223
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 69
  %228 = sdiv i32 %227, 4
  %229 = add nsw i32 %224, %228
  %230 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %220
  %234 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [11 x i32], [11 x i32]* @parse_date.months, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  br label %241

240:                                              ; preds = %220
  br label %241

241:                                              ; preds = %240, %233
  %242 = phi i32 [ %239, %233 ], [ 0, %240 ]
  %243 = add nsw i32 %229, %242
  %244 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %254

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sub nsw i32 %249, 72
  %251 = and i32 %250, 3
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  br label %254

254:                                              ; preds = %247, %241
  %255 = phi i1 [ false, %241 ], [ %253, %247 ]
  %256 = zext i1 %255 to i32
  %257 = add nsw i32 %243, %256
  %258 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %257, %259
  %261 = sub nsw i32 %260, 1
  %262 = mul nsw i32 %261, 24
  %263 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %262, %264
  %266 = mul nsw i32 %265, 60
  %267 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %266, %268
  %270 = mul nsw i32 %269, 60
  %271 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %270, %272
  store i32 %273, i32* %4, align 4
  %274 = load i32, i32* %4, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %254, %216, %203, %188, %169, %154, %135, %116, %101, %81, %66, %39, %21
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @next_token(i8**, i32*) #1

declare dso_local i32 @parse_warn(i8*) #1

declare dso_local i32 @skip_to_semi(i32*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
