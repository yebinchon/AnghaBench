; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_re_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_subst.c_re_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@RE_WSTART_LEN = common dso_local global i64 0, align 8
@RE_WSTOP_LEN = common dso_local global i64 0, align 8
@O_MAGIC = common dso_local global i32 0, align 4
@RE_WSTART = common dso_local global i32 0, align 4
@RE_WSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32**, i64*, i32*)* @re_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @re_conv(%struct.TYPE_5__* %0, i32** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %100, %4
  %22 = load i64, i64* %11, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %21
  %25 = load i32*, i32** %15, align 8
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %96 [
    i32 92, label %27
    i32 126, label %75
    i32 46, label %87
    i32 91, label %87
    i32 42, label %87
  ]

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = icmp ugt i64 %28, 1
  br i1 %29, label %30, label %71

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %11, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %15, align 8
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %67 [
    i32 60, label %36
    i32 62, label %41
    i32 126, label %46
    i32 46, label %58
    i32 91, label %58
    i32 42, label %58
  ]

36:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  %37 = load i64, i64* @RE_WSTART_LEN, align 8
  %38 = add i64 %37, 1
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %12, align 8
  br label %70

41:                                               ; preds = %30
  store i32 1, i32* %13, align 4
  %42 = load i64, i64* @RE_WSTOP_LEN, align 8
  %43 = add i64 %42, 1
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %12, align 8
  br label %70

46:                                               ; preds = %30
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = load i32, i32* @O_MAGIC, align 4
  %49 = call i32 @O_ISSET(%struct.TYPE_5__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  store i32 1, i32* %13, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %51, %46
  br label %70

58:                                               ; preds = %30, %30, %30
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = load i32, i32* @O_MAGIC, align 4
  %61 = call i32 @O_ISSET(%struct.TYPE_5__* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %63, %58
  br label %70

67:                                               ; preds = %30
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, 2
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %67, %66, %57, %41, %36
  br label %74

71:                                               ; preds = %27
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %71, %70
  br label %99

75:                                               ; preds = %24
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %77 = load i32, i32* @O_MAGIC, align 4
  %78 = call i32 @O_ISSET(%struct.TYPE_5__* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %80, %75
  br label %99

87:                                               ; preds = %24, %24, %24
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = load i32, i32* @O_MAGIC, align 4
  %90 = call i32 @O_ISSET(%struct.TYPE_5__* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  store i32 1, i32* %13, align 4
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, 2
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %92, %87
  br label %99

96:                                               ; preds = %24
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %99

99:                                               ; preds = %96, %95, %86, %74
  br label %100

100:                                              ; preds = %99
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %11, align 8
  br label %21

105:                                              ; preds = %21
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i32*, i32** %9, align 8
  store i32 0, i32* %109, align 4
  store i32 0, i32* %5, align 4
  br label %258

110:                                              ; preds = %105
  %111 = load i32*, i32** %9, align 8
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @GET_SPACE_RETW(%struct.TYPE_5__* %112, i32* %113, i64 %114, i64 %115)
  %117 = load i32**, i32*** %7, align 8
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %15, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %11, align 8
  %121 = load i32*, i32** %14, align 8
  store i32* %121, i32** %16, align 8
  br label %122

122:                                              ; preds = %243, %110
  %123 = load i64, i64* %11, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %248

125:                                              ; preds = %122
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %237 [
    i32 92, label %128
    i32 126, label %201
    i32 46, label %224
    i32 91, label %224
    i32 42, label %224
  ]

128:                                              ; preds = %125
  %129 = load i64, i64* %11, align 8
  %130 = icmp ugt i64 %129, 1
  br i1 %130, label %131, label %197

131:                                              ; preds = %128
  %132 = load i64, i64* %11, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %11, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %15, align 8
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %189 [
    i32 60, label %137
    i32 62, label %145
    i32 126, label %153
    i32 46, label %176
    i32 91, label %176
    i32 42, label %176
  ]

137:                                              ; preds = %131
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* @RE_WSTART, align 4
  %140 = load i64, i64* @RE_WSTART_LEN, align 8
  %141 = call i32 @MEMCPY(i32* %138, i32 %139, i64 %140)
  %142 = load i64, i64* @RE_WSTART_LEN, align 8
  %143 = load i32*, i32** %16, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 %142
  store i32* %144, i32** %16, align 8
  br label %196

145:                                              ; preds = %131
  %146 = load i32*, i32** %16, align 8
  %147 = load i32, i32* @RE_WSTOP, align 4
  %148 = load i64, i64* @RE_WSTOP_LEN, align 8
  %149 = call i32 @MEMCPY(i32* %146, i32 %147, i64 %148)
  %150 = load i64, i64* @RE_WSTOP_LEN, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 %150
  store i32* %152, i32** %16, align 8
  br label %196

153:                                              ; preds = %131
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %155 = load i32, i32* @O_MAGIC, align 4
  %156 = call i32 @O_ISSET(%struct.TYPE_5__* %154, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32*, i32** %16, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %16, align 8
  store i32 126, i32* %159, align 4
  br label %175

161:                                              ; preds = %153
  %162 = load i32*, i32** %16, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @MEMCPY(i32* %162, i32 %165, i64 %168)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i32*, i32** %16, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 %172
  store i32* %174, i32** %16, align 8
  br label %175

175:                                              ; preds = %161, %158
  br label %196

176:                                              ; preds = %131, %131, %131
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = load i32, i32* @O_MAGIC, align 4
  %179 = call i32 @O_ISSET(%struct.TYPE_5__* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32*, i32** %16, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %16, align 8
  store i32 92, i32* %182, align 4
  br label %184

184:                                              ; preds = %181, %176
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %16, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %16, align 8
  store i32 %186, i32* %187, align 4
  br label %196

189:                                              ; preds = %131
  %190 = load i32*, i32** %16, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %16, align 8
  store i32 92, i32* %190, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %16, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %16, align 8
  store i32 %193, i32* %194, align 4
  br label %196

196:                                              ; preds = %189, %184, %175, %145, %137
  br label %200

197:                                              ; preds = %128
  %198 = load i32*, i32** %16, align 8
  %199 = getelementptr inbounds i32, i32* %198, i32 1
  store i32* %199, i32** %16, align 8
  store i32 92, i32* %198, align 4
  br label %200

200:                                              ; preds = %197, %196
  br label %242

201:                                              ; preds = %125
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %203 = load i32, i32* @O_MAGIC, align 4
  %204 = call i32 @O_ISSET(%struct.TYPE_5__* %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %201
  %207 = load i32*, i32** %16, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @MEMCPY(i32* %207, i32 %210, i64 %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32*, i32** %16, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 %217
  store i32* %219, i32** %16, align 8
  br label %223

220:                                              ; preds = %201
  %221 = load i32*, i32** %16, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %16, align 8
  store i32 126, i32* %221, align 4
  br label %223

223:                                              ; preds = %220, %206
  br label %242

224:                                              ; preds = %125, %125, %125
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %226 = load i32, i32* @O_MAGIC, align 4
  %227 = call i32 @O_ISSET(%struct.TYPE_5__* %225, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load i32*, i32** %16, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %16, align 8
  store i32 92, i32* %230, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = load i32*, i32** %15, align 8
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %16, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** %16, align 8
  store i32 %234, i32* %235, align 4
  br label %242

237:                                              ; preds = %125
  %238 = load i32*, i32** %15, align 8
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %16, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %16, align 8
  store i32 %239, i32* %240, align 4
  br label %242

242:                                              ; preds = %237, %232, %223, %200
  br label %243

243:                                              ; preds = %242
  %244 = load i32*, i32** %15, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %15, align 8
  %246 = load i64, i64* %11, align 8
  %247 = add i64 %246, -1
  store i64 %247, i64* %11, align 8
  br label %122

248:                                              ; preds = %122
  %249 = load i32*, i32** %14, align 8
  %250 = load i32**, i32*** %7, align 8
  store i32* %249, i32** %250, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = load i32*, i32** %14, align 8
  %253 = ptrtoint i32* %251 to i64
  %254 = ptrtoint i32* %252 to i64
  %255 = sub i64 %253, %254
  %256 = sdiv exact i64 %255, 4
  %257 = load i64*, i64** %8, align 8
  store i64 %256, i64* %257, align 8
  store i32 0, i32* %5, align 4
  br label %258

258:                                              ; preds = %248, %108
  %259 = load i32, i32* %5, align 4
  ret i32 %259
}

declare dso_local i32 @O_ISSET(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_5__*, i32*, i64, i64) #1

declare dso_local i32 @MEMCPY(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
