; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_evalnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_evalnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32 }

@ROFFNUM_WHITE = common dso_local global i32 0, align 4
@MANDOCERR_DIVZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i32, i8*, i32*, i32*, i32)* @roff_evalnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_evalnum(%struct.roff* %0, i32 %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.roff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  store %struct.roff* %0, %struct.roff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* null, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  store i32* %14, i32** %11, align 8
  br label %20

20:                                               ; preds = %19, %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @ROFFNUM_WHITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %35, %25
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isspace(i8 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %26

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.roff*, %struct.roff** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @roff_evalpar(%struct.roff* %41, i32 %42, i8* %43, i32* %44, i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %266

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %129, %264
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @ROFFNUM_WHITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i8*, i8** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isspace(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %57

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %51
  %72 = load i8*, i8** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @roff_getop(i8* %72, i32* %73, i8* %16)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %265

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @ROFFNUM_WHITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %92, %82
  %84 = load i8*, i8** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isspace(i8 zeroext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %83

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.roff*, %struct.roff** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i8*, i8** %10, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @roff_evalpar(%struct.roff* %98, i32 %99, i8* %100, i32* %101, i32* %15, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %266

106:                                              ; preds = %97
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @ROFFNUM_WHITE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %121, %111
  %113 = load i8*, i8** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = call i64 @isspace(i8 zeroext %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %112

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %106
  %127 = load i32*, i32** %12, align 8
  %128 = icmp eq i32* null, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %51

130:                                              ; preds = %126
  %131 = load i8, i8* %16, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %262 [
    i32 43, label %133
    i32 45, label %138
    i32 42, label %143
    i32 47, label %148
    i32 37, label %164
    i32 60, label %180
    i32 62, label %187
    i32 108, label %194
    i32 103, label %201
    i32 61, label %208
    i32 33, label %215
    i32 38, label %222
    i32 58, label %233
    i32 105, label %244
    i32 97, label %253
  ]

133:                                              ; preds = %130
  %134 = load i32, i32* %15, align 4
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %264

138:                                              ; preds = %130
  %139 = load i32, i32* %15, align 4
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, %139
  store i32 %142, i32* %140, align 4
  br label %264

143:                                              ; preds = %130
  %144 = load i32, i32* %15, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %264

148:                                              ; preds = %130
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i32, i32* @MANDOCERR_DIVZERO, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 @mandoc_msg(i32 %152, i32 %153, i32 %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %156)
  %158 = load i32*, i32** %12, align 8
  store i32 0, i32* %158, align 4
  br label %264

159:                                              ; preds = %148
  %160 = load i32, i32* %15, align 4
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %161, align 4
  %163 = sdiv i32 %162, %160
  store i32 %163, i32* %161, align 4
  br label %264

164:                                              ; preds = %130
  %165 = load i32, i32* %15, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32, i32* @MANDOCERR_DIVZERO, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %10, align 8
  %173 = call i32 @mandoc_msg(i32 %168, i32 %169, i32 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %172)
  %174 = load i32*, i32** %12, align 8
  store i32 0, i32* %174, align 4
  br label %264

175:                                              ; preds = %164
  %176 = load i32, i32* %15, align 4
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %177, align 4
  %179 = srem i32 %178, %176
  store i32 %179, i32* %177, align 4
  br label %264

180:                                              ; preds = %130
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %15, align 4
  %184 = icmp slt i32 %182, %183
  %185 = zext i1 %184 to i32
  %186 = load i32*, i32** %12, align 8
  store i32 %185, i32* %186, align 4
  br label %264

187:                                              ; preds = %130
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp sgt i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = load i32*, i32** %12, align 8
  store i32 %192, i32* %193, align 4
  br label %264

194:                                              ; preds = %130
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp sle i32 %196, %197
  %199 = zext i1 %198 to i32
  %200 = load i32*, i32** %12, align 8
  store i32 %199, i32* %200, align 4
  br label %264

201:                                              ; preds = %130
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp sge i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = load i32*, i32** %12, align 8
  store i32 %206, i32* %207, align 4
  br label %264

208:                                              ; preds = %130
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp eq i32 %210, %211
  %213 = zext i1 %212 to i32
  %214 = load i32*, i32** %12, align 8
  store i32 %213, i32* %214, align 4
  br label %264

215:                                              ; preds = %130
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp ne i32 %217, %218
  %220 = zext i1 %219 to i32
  %221 = load i32*, i32** %12, align 8
  store i32 %220, i32* %221, align 4
  br label %264

222:                                              ; preds = %130
  %223 = load i32*, i32** %12, align 8
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* %15, align 4
  %228 = icmp ne i32 %227, 0
  br label %229

229:                                              ; preds = %226, %222
  %230 = phi i1 [ false, %222 ], [ %228, %226 ]
  %231 = zext i1 %230 to i32
  %232 = load i32*, i32** %12, align 8
  store i32 %231, i32* %232, align 4
  br label %264

233:                                              ; preds = %130
  %234 = load i32*, i32** %12, align 8
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load i32, i32* %15, align 4
  %239 = icmp ne i32 %238, 0
  br label %240

240:                                              ; preds = %237, %233
  %241 = phi i1 [ true, %233 ], [ %239, %237 ]
  %242 = zext i1 %241 to i32
  %243 = load i32*, i32** %12, align 8
  store i32 %242, i32* %243, align 4
  br label %264

244:                                              ; preds = %130
  %245 = load i32, i32* %15, align 4
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32, i32* %15, align 4
  %251 = load i32*, i32** %12, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %244
  br label %264

253:                                              ; preds = %130
  %254 = load i32, i32* %15, align 4
  %255 = load i32*, i32** %12, align 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp sgt i32 %254, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %253
  %259 = load i32, i32* %15, align 4
  %260 = load i32*, i32** %12, align 8
  store i32 %259, i32* %260, align 4
  br label %261

261:                                              ; preds = %258, %253
  br label %264

262:                                              ; preds = %130
  %263 = call i32 (...) @abort() #3
  unreachable

264:                                              ; preds = %261, %252, %240, %229, %215, %208, %201, %194, %187, %180, %175, %167, %159, %151, %143, %138, %133
  br label %51

265:                                              ; preds = %76
  store i32 1, i32* %7, align 4
  br label %266

266:                                              ; preds = %265, %105, %49
  %267 = load i32, i32* %7, align 4
  ret i32 %267
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @roff_evalpar(%struct.roff*, i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @roff_getop(i8*, i32*, i8*) #1

declare dso_local i32 @mandoc_msg(i32, i32, i32, i8*, i8*) #1

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
