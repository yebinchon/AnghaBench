; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }

@SEQ_ABBREV = common dso_local global i32 0, align 4
@CH_ABBREVIATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32*, i32, i32*, i32*)* @txt_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_abbrev(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %12, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %259

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @VIP(i32* %30)
  store i32* %31, i32** %14, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %19, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %19, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %16, align 8
  store i64 1, i64* %18, align 8
  %42 = load i64, i64* %19, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %29
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @isblank(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %29
  br label %114

55:                                               ; preds = %48
  %56 = load i32*, i32** %16, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @inword(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i64, i64* %19, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %19, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %16, align 8
  %67 = load i64, i64* %18, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %69, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %62
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 -1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @inword(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75, %62
  br label %83

82:                                               ; preds = %75
  br label %62

83:                                               ; preds = %81
  br label %113

84:                                               ; preds = %55
  br label %85

85:                                               ; preds = %111, %84
  %86 = load i64, i64* %19, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %19, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 -1
  store i32* %89, i32** %16, align 8
  %90 = load i64, i64* %18, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %85
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 -1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @inword(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i32*, i32** %16, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 -1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @isblank(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98, %85
  br label %112

111:                                              ; preds = %104
  br label %85

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %54
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %114
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %117
  %124 = load i64, i64* %19, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp eq i64 %124, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %123, %117
  %131 = load i32*, i32** %16, align 8
  %132 = load i64, i64* %18, align 8
  %133 = call i64 @ex_is_abbrev(i32* %131, i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32*, i32** %13, align 8
  store i32 1, i32* %136, align 4
  store i32 0, i32* %7, align 4
  br label %259

137:                                              ; preds = %130
  %138 = load i32*, i32** %13, align 8
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %137
  br label %146

140:                                              ; preds = %123
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %259

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %139
  br label %147

147:                                              ; preds = %146, %114
  %148 = load i32*, i32** %8, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i32, i32* @SEQ_ABBREV, align 4
  %152 = call %struct.TYPE_6__* @seq_find(i32* %148, i32* null, i32* null, i32* %149, i64 %150, i32 %151, i32* null)
  store %struct.TYPE_6__* %152, %struct.TYPE_6__** %17, align 8
  %153 = icmp eq %struct.TYPE_6__* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  br label %259

155:                                              ; preds = %147
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %15, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* @CH_ABBREVIATED, align 4
  %160 = call i64 @v_event_push(i32* %158, i32* null, i32* %15, i32 1, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 1, i32* %7, align 4
  br label %259

163:                                              ; preds = %155
  %164 = load i32*, i32** %8, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @CH_ABBREVIATED, align 4
  %172 = call i64 @v_event_push(i32* %164, i32* null, i32* %167, i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  store i32 1, i32* %7, align 4
  br label %259

175:                                              ; preds = %163
  %176 = load i64, i64* %18, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = sub i64 %180, %176
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 8
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %18, align 8
  %188 = icmp uge i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %175
  %190 = load i64, i64* %18, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, %190
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %192, align 8
  br label %255

197:                                              ; preds = %175
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %235

202:                                              ; preds = %197
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i64, i64* %18, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @MEMMOVE(i32* %215, i32* %230, i32 %233)
  br label %235

235:                                              ; preds = %202, %197
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load i64, i64* %18, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = sub i64 %243, %247
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = sub i64 %252, %248
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %250, align 4
  br label %255

255:                                              ; preds = %235, %189
  %256 = load i64, i64* %18, align 8
  %257 = trunc i64 %256 to i32
  %258 = load i32*, i32** %12, align 8
  store i32 %257, i32* %258, align 4
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %255, %174, %162, %154, %144, %135, %28
  %260 = load i32, i32* %7, align 4
  ret i32 %260
}

declare dso_local i32* @VIP(i32*) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i64 @inword(i32) #1

declare dso_local i64 @ex_is_abbrev(i32*, i64) #1

declare dso_local %struct.TYPE_6__* @seq_find(i32*, i32*, i32*, i32*, i64, i32, i32*) #1

declare dso_local i64 @v_event_push(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @MEMMOVE(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
