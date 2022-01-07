; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_encode1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_encode1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i32*, i64, %struct.TYPE_2__*, i32 (%struct.termp*, i32)* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@TERMP_NOBUF = common dso_local global i32 0, align 4
@ASCII_HYPH = common dso_local global i32 0, align 4
@TERMFONT_NONE = common dso_local global i32 0, align 4
@TERMP_BACKBEFORE = common dso_local global i32 0, align 4
@TERMFONT_UNDER = common dso_local global i32 0, align 4
@TERMFONT_BI = common dso_local global i32 0, align 4
@TERMFONT_BOLD = common dso_local global i32 0, align 4
@ASCII_NBRSP = common dso_local global i32 0, align 4
@TERMP_BACKAFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i32)* @encode1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode1(%struct.termp* %0, i32 %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.termp*, %struct.termp** %3, align 8
  %7 = getelementptr inbounds %struct.termp, %struct.termp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @TERMP_NOBUF, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.termp*, %struct.termp** %3, align 8
  %14 = getelementptr inbounds %struct.termp, %struct.termp* %13, i32 0, i32 5
  %15 = load i32 (%struct.termp*, i32)*, i32 (%struct.termp*, i32)** %14, align 8
  %16 = load %struct.termp*, %struct.termp** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %15(%struct.termp* %16, i32 %17)
  br label %272

19:                                               ; preds = %2
  %20 = load %struct.termp*, %struct.termp** %3, align 8
  %21 = getelementptr inbounds %struct.termp, %struct.termp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 7
  %24 = load %struct.termp*, %struct.termp** %3, align 8
  %25 = getelementptr inbounds %struct.termp, %struct.termp* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %23, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = getelementptr inbounds %struct.termp, %struct.termp* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.termp*, %struct.termp** %3, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 7
  %38 = call i32 @adjbuf(%struct.TYPE_2__* %33, i32 %37)
  br label %39

39:                                               ; preds = %30, %19
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ASCII_HYPH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp sgt i32 %44, 127
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @isgraph(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46, %43, %39
  %51 = load %struct.termp*, %struct.termp** %3, align 8
  %52 = getelementptr inbounds %struct.termp, %struct.termp* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.termp*, %struct.termp** %3, align 8
  %55 = getelementptr inbounds %struct.termp, %struct.termp* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @TERMFONT_NONE, align 4
  br label %61

61:                                               ; preds = %59, %50
  %62 = phi i32 [ %58, %50 ], [ %60, %59 ]
  store i32 %62, i32* %5, align 4
  %63 = load %struct.termp*, %struct.termp** %3, align 8
  %64 = getelementptr inbounds %struct.termp, %struct.termp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %123

69:                                               ; preds = %61
  %70 = load %struct.termp*, %struct.termp** %3, align 8
  %71 = getelementptr inbounds %struct.termp, %struct.termp* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.termp*, %struct.termp** %3, align 8
  %76 = getelementptr inbounds %struct.termp, %struct.termp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %74, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %99, label %84

84:                                               ; preds = %69
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.termp*, %struct.termp** %3, align 8
  %91 = getelementptr inbounds %struct.termp, %struct.termp* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %89, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %104

99:                                               ; preds = %84, %69
  %100 = load %struct.termp*, %struct.termp** %3, align 8
  %101 = getelementptr inbounds %struct.termp, %struct.termp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %101, align 4
  br label %116

104:                                              ; preds = %84
  %105 = load %struct.termp*, %struct.termp** %3, align 8
  %106 = getelementptr inbounds %struct.termp, %struct.termp* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.termp*, %struct.termp** %3, align 8
  %111 = getelementptr inbounds %struct.termp, %struct.termp* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  store i8 8, i8* %115, align 1
  br label %116

116:                                              ; preds = %104, %99
  %117 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.termp*, %struct.termp** %3, align 8
  %120 = getelementptr inbounds %struct.termp, %struct.termp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %116, %61
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @TERMFONT_UNDER, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @TERMFONT_BI, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %127, %123
  %132 = load %struct.termp*, %struct.termp** %3, align 8
  %133 = getelementptr inbounds %struct.termp, %struct.termp* %132, i32 0, i32 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.termp*, %struct.termp** %3, align 8
  %138 = getelementptr inbounds %struct.termp, %struct.termp* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %136, i64 %141
  store i8 95, i8* %142, align 1
  %143 = load %struct.termp*, %struct.termp** %3, align 8
  %144 = getelementptr inbounds %struct.termp, %struct.termp* %143, i32 0, i32 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.termp*, %struct.termp** %3, align 8
  %149 = getelementptr inbounds %struct.termp, %struct.termp* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i8, i8* %147, i64 %152
  store i8 8, i8* %153, align 1
  br label %154

154:                                              ; preds = %131, %127
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @TERMFONT_BOLD, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @TERMFONT_BI, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %204

162:                                              ; preds = %158, %154
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @ASCII_HYPH, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load %struct.termp*, %struct.termp** %3, align 8
  %168 = getelementptr inbounds %struct.termp, %struct.termp* %167, i32 0, i32 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.termp*, %struct.termp** %3, align 8
  %173 = getelementptr inbounds %struct.termp, %struct.termp* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %171, i64 %176
  store i8 45, i8* %177, align 1
  br label %192

178:                                              ; preds = %162
  %179 = load i32, i32* %4, align 4
  %180 = trunc i32 %179 to i8
  %181 = load %struct.termp*, %struct.termp** %3, align 8
  %182 = getelementptr inbounds %struct.termp, %struct.termp* %181, i32 0, i32 4
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.termp*, %struct.termp** %3, align 8
  %187 = getelementptr inbounds %struct.termp, %struct.termp* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %185, i64 %190
  store i8 %180, i8* %191, align 1
  br label %192

192:                                              ; preds = %178, %166
  %193 = load %struct.termp*, %struct.termp** %3, align 8
  %194 = getelementptr inbounds %struct.termp, %struct.termp* %193, i32 0, i32 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.termp*, %struct.termp** %3, align 8
  %199 = getelementptr inbounds %struct.termp, %struct.termp* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %197, i64 %202
  store i8 8, i8* %203, align 1
  br label %204

204:                                              ; preds = %192, %158
  %205 = load %struct.termp*, %struct.termp** %3, align 8
  %206 = getelementptr inbounds %struct.termp, %struct.termp* %205, i32 0, i32 4
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.termp*, %struct.termp** %3, align 8
  %211 = getelementptr inbounds %struct.termp, %struct.termp* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp sle i32 %209, %212
  br i1 %213, label %221, label %214

214:                                              ; preds = %204
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 32
  br i1 %216, label %217, label %234

217:                                              ; preds = %214
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @ASCII_NBRSP, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %217, %204
  %222 = load i32, i32* %4, align 4
  %223 = trunc i32 %222 to i8
  %224 = load %struct.termp*, %struct.termp** %3, align 8
  %225 = getelementptr inbounds %struct.termp, %struct.termp* %224, i32 0, i32 4
  %226 = load %struct.TYPE_2__*, %struct.TYPE_2__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.termp*, %struct.termp** %3, align 8
  %230 = getelementptr inbounds %struct.termp, %struct.termp* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %228, i64 %232
  store i8 %223, i8* %233, align 1
  br label %234

234:                                              ; preds = %221, %217, %214
  %235 = load %struct.termp*, %struct.termp** %3, align 8
  %236 = getelementptr inbounds %struct.termp, %struct.termp* %235, i32 0, i32 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.termp*, %struct.termp** %3, align 8
  %241 = getelementptr inbounds %struct.termp, %struct.termp* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %234
  %246 = load %struct.termp*, %struct.termp** %3, align 8
  %247 = getelementptr inbounds %struct.termp, %struct.termp* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.termp*, %struct.termp** %3, align 8
  %250 = getelementptr inbounds %struct.termp, %struct.termp* %249, i32 0, i32 4
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 2
  store i32 %248, i32* %252, align 8
  br label %253

253:                                              ; preds = %245, %234
  %254 = load %struct.termp*, %struct.termp** %3, align 8
  %255 = getelementptr inbounds %struct.termp, %struct.termp* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @TERMP_BACKAFTER, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %253
  %261 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %262 = load %struct.termp*, %struct.termp** %3, align 8
  %263 = getelementptr inbounds %struct.termp, %struct.termp* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load i32, i32* @TERMP_BACKAFTER, align 4
  %267 = xor i32 %266, -1
  %268 = load %struct.termp*, %struct.termp** %3, align 8
  %269 = getelementptr inbounds %struct.termp, %struct.termp* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %12, %260, %253
  ret void
}

declare dso_local i32 @adjbuf(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @isgraph(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
