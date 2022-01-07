; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_nextwctype.c_nextwctype_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_nextwctype.c_nextwctype_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }

@_CACHED_RUNES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nextwctype_l(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @FIX_LOCALE(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_8__* @XLOCALE_CTYPE(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %13, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @_CACHED_RUNES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %3
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %44, %25
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @_CACHED_RUNES, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %4, align 8
  br label %237

44:                                               ; preds = %32
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %28

47:                                               ; preds = %28
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %47, %3
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %56, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %64, %55, %50
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %11, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %111, %71
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %83 = load i64, i64* %8, align 8
  %84 = lshr i64 %83, 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  store %struct.TYPE_7__* %85, %struct.TYPE_7__** %12, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp ule i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ule i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %115

98:                                               ; preds = %91, %81
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ugt i64 %99, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 1
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %11, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %104, %98
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = lshr i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %78

114:                                              ; preds = %78
  store i64 -1, i64* %4, align 8
  br label %237

115:                                              ; preds = %97
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp ule i64 %124, %125
  br i1 %126, label %127, label %177

127:                                              ; preds = %121
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ule i64 %128, %131
  br i1 %132, label %133, label %177

133:                                              ; preds = %127
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %166

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %162, %138
  %140 = load i64, i64* %5, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ule i64 %140, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %149, %152
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i64, i64* %5, align 8
  store i64 %160, i64* %4, align 8
  br label %237

161:                                              ; preds = %145
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %5, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %5, align 8
  br label %139

165:                                              ; preds = %139
  br label %176

166:                                              ; preds = %133
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %166
  %174 = load i64, i64* %5, align 8
  store i64 %174, i64* %4, align 8
  br label %237

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %165
  br label %177

177:                                              ; preds = %176, %127, %121
  br label %178

178:                                              ; preds = %235, %177
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 1
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %12, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i64 %186
  %188 = icmp ult %struct.TYPE_7__* %180, %187
  br i1 %188, label %189, label %236

189:                                              ; preds = %178
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %5, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %225

197:                                              ; preds = %189
  br label %198

198:                                              ; preds = %221, %197
  %199 = load i64, i64* %5, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ule i64 %199, %202
  br i1 %203, label %204, label %224

204:                                              ; preds = %198
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* %5, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = sub i64 %208, %211
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %6, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %204
  %219 = load i64, i64* %5, align 8
  store i64 %219, i64* %4, align 8
  br label %237

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %5, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %5, align 8
  br label %198

224:                                              ; preds = %198
  br label %235

225:                                              ; preds = %189
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i64, i64* %5, align 8
  store i64 %233, i64* %4, align 8
  br label %237

234:                                              ; preds = %225
  br label %235

235:                                              ; preds = %234, %224
  br label %178

236:                                              ; preds = %178
  store i64 -1, i64* %4, align 8
  br label %237

237:                                              ; preds = %236, %232, %218, %173, %159, %114, %42
  %238 = load i64, i64* %4, align 8
  ret i64 %238
}

declare dso_local i32 @FIX_LOCALE(i32) #1

declare dso_local %struct.TYPE_8__* @XLOCALE_CTYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
