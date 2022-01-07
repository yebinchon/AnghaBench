; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_computematchjumps.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_computematchjumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }
%struct.re_guts = type { i32, i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.re_guts*)* @computematchjumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computematchjumps(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.re_guts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.re_guts* %1, %struct.re_guts** %4, align 8
  %9 = load %struct.parse*, %struct.parse** %3, align 8
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %241

14:                                               ; preds = %2
  %15 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %16 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %27 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %241

28:                                               ; preds = %14
  %29 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %30 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %38 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %40 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @free(i32* %44)
  br label %241

46:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %67, %46
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %50 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %55 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 2, %56
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %62 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  br label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %72 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %76 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %139, %70
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %144

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %111, %81
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %90 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %95 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %102 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %100, %107
  br label %109

109:                                              ; preds = %93, %87
  %110 = phi i1 [ false, %87 ], [ %108, %93 ]
  br i1 %110, label %111, label %138

111:                                              ; preds = %109
  %112 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %113 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %120 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sub nsw i32 %123, 1
  %125 = call i8* @MIN(i32 %118, i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %128 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load i32*, i32** %8, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %6, align 4
  br label %87

138:                                              ; preds = %109
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %6, align 4
  br label %78

144:                                              ; preds = %78
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %172, %144
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %145
  %150 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %151 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %158 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %161, %162
  %164 = call i8* @MIN(i32 %156, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %167 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 %165, i32* %171, align 4
  br label %172

172:                                              ; preds = %149
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %145

175:                                              ; preds = %145
  %176 = load i32*, i32** %8, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %237, %175
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %184 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %238

187:                                              ; preds = %181
  br label %188

188:                                              ; preds = %200, %187
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %195 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp slt i32 %193, %196
  br label %198

198:                                              ; preds = %192, %188
  %199 = phi i1 [ false, %188 ], [ %197, %192 ]
  br i1 %199, label %200, label %225

200:                                              ; preds = %198
  %201 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %202 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %209 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %212, %213
  %215 = call i8* @MIN(i32 %207, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %218 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %188

225:                                              ; preds = %198
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %228 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %225
  %232 = load i32*, i32** %8, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %231, %225
  br label %181

238:                                              ; preds = %181
  %239 = load i32*, i32** %8, align 8
  %240 = call i32 @free(i32* %239)
  br label %241

241:                                              ; preds = %238, %43, %25, %13
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
