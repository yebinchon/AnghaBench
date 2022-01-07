; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/extr_timesoftfloat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [1161 x i8] c"timesoftfloat [<option>...] <function>\0A  <option>:  (* is default)\0A    -help            --Write this message and exit.\0A    -nearesteven     --Only time rounding to nearest/even.\0A    -tozero          --Only time rounding to zero.\0A    -down            --Only time rounding down.\0A    -up              --Only time rounding up.\0A    -tininessbefore  --Only time underflow tininess before rounding.\0A    -tininessafter   --Only time underflow tininess after rounding.\0A  <function>:\0A    int32_to_<float>                 <float>_add   <float>_eq\0A    <float>_to_int32                 <float>_sub   <float>_le\0A    <float>_to_int32_round_to_zero   <float>_mul   <float>_lt\0A    int64_to_<float>                 <float>_div   <float>_eq_signaling\0A    <float>_to_int64                 <float>_rem   <float>_le_quiet\0A    <float>_to_int64_round_to_zero                 <float>_lt_quiet\0A    <float>_to_<float>\0A    <float>_round_to_int\0A    <float>_sqrt\0A    -all1            --All 1-operand functions.\0A    -all2            --All 2-operand functions.\0A    -all             --All functions.\0A  <float>:\0A    float32          --Single precision.\0A    float64          --Double precision.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"nearesteven\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nearest_even\00", align 1
@ROUND_NEAREST_EVEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"tozero\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"to_zero\00", align 1
@ROUND_TO_ZERO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@ROUND_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@ROUND_UP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"tininessbefore\00", align 1
@TININESS_BEFORE_ROUNDING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"tininessafter\00", align 1
@TININESS_AFTER_ROUNDING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"all1\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"all2\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@NUM_FUNCTIONS = common dso_local global i64 0, align 8
@functions = common dso_local global %struct.TYPE_2__* null, align 8
@.str.13 = private unnamed_addr constant [32 x i8] c"Invalid option or function `%s'\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Function argument required\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %46

16:                                               ; preds = %2
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %5, align 8
  br label %22

22:                                               ; preds = %151, %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %156

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* @stdout, align 4
  %48 = call i32 @fputs(i8* getelementptr inbounds ([1161 x i8], [1161 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %241

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %50
  %59 = load i32, i32* @ROUND_NEAREST_EVEN, align 4
  store i32 %59, i32* %11, align 4
  br label %150

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @ROUND_TO_ZERO, align 4
  store i32 %69, i32* %11, align 4
  br label %149

70:                                               ; preds = %64
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @ROUND_DOWN, align 4
  store i32 %75, i32* %11, align 4
  br label %148

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ROUND_UP, align 4
  store i32 %81, i32* %11, align 4
  br label %147

82:                                               ; preds = %76
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @TININESS_BEFORE_ROUNDING, align 4
  store i32 %87, i32* %12, align 4
  br label %146

88:                                               ; preds = %82
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @TININESS_AFTER_ROUNDING, align 4
  store i32 %93, i32* %12, align 4
  br label %145

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %144

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 2, i32* %9, align 4
  br label %143

106:                                              ; preds = %100
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %142

112:                                              ; preds = %106
  store i64 1, i64* %8, align 8
  br label %113

113:                                              ; preds = %128, %112
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @NUM_FUNCTIONS, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @strcmp(i8* %118, i8* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %131

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %8, align 8
  br label %113

131:                                              ; preds = %126, %113
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @NUM_FUNCTIONS, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %131
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %110
  br label %143

143:                                              ; preds = %142, %104
  br label %144

144:                                              ; preds = %143, %98
  br label %145

145:                                              ; preds = %144, %92
  br label %146

146:                                              ; preds = %145, %86
  br label %147

147:                                              ; preds = %146, %80
  br label %148

148:                                              ; preds = %147, %74
  br label %149

149:                                              ; preds = %148, %68
  br label %150

150:                                              ; preds = %149, %58
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %4, align 4
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i32 1
  store i8** %155, i8*** %5, align 8
  br label %22

156:                                              ; preds = %30
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = call i32 (i8*, ...) @fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i64, i64* %8, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i64, i64* %8, align 8
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @timeFunction(i64 %165, i32 %166, i32 %167, i32 %168)
  br label %239

170:                                              ; preds = %161
  %171 = load i32, i32* %9, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  store i64 1, i64* %8, align 8
  br label %174

174:                                              ; preds = %192, %173
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @NUM_FUNCTIONS, align 8
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %174
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i64, i64* %8, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i32 @timeFunction(i64 %186, i32 %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %178
  br label %192

192:                                              ; preds = %191
  %193 = load i64, i64* %8, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %8, align 8
  br label %174

195:                                              ; preds = %174
  br label %238

196:                                              ; preds = %170
  %197 = load i32, i32* %9, align 4
  %198 = icmp eq i32 %197, 2
  br i1 %198, label %199, label %222

199:                                              ; preds = %196
  store i64 1, i64* %8, align 8
  br label %200

200:                                              ; preds = %218, %199
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @NUM_FUNCTIONS, align 8
  %203 = icmp ult i64 %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @functions, align 8
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load i64, i64* %8, align 8
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @timeFunction(i64 %212, i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %204
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %8, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %8, align 8
  br label %200

221:                                              ; preds = %200
  br label %237

222:                                              ; preds = %196
  store i64 1, i64* %8, align 8
  br label %223

223:                                              ; preds = %233, %222
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* @NUM_FUNCTIONS, align 8
  %226 = icmp ult i64 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %223
  %228 = load i64, i64* %8, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @timeFunction(i64 %228, i32 %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %8, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %8, align 8
  br label %223

236:                                              ; preds = %223
  br label %237

237:                                              ; preds = %236, %221
  br label %238

238:                                              ; preds = %237, %195
  br label %239

239:                                              ; preds = %238, %164
  %240 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %239, %46
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fail(i8*, ...) #1

declare dso_local i32 @timeFunction(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
