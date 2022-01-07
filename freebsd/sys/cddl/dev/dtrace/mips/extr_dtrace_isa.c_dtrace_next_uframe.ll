; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_next_uframe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_next_uframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i8* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@cpu_core = common dso_local global %struct.TYPE_8__* null, align 8
@curcpu = common dso_local global i64 0, align 8
@MAX_FUNCTION_SIZE = common dso_local global i32 0, align 4
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@MAX_PROLOGUE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @dtrace_next_uframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_next_uframe(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cpu_core, align 8
  %17 = load i64, i64* @curcpu, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32* %19, i32** %15, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %78, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MAX_FUNCTION_SIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i8* @dtrace_fuword32(i8* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = load volatile i32, i32* %33, align 4
  %35 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %242

39:                                               ; preds = %24
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, -32768
  %42 = icmp eq i32 %41, 666730496
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, -32768
  %46 = icmp eq i32 %45, 1740472320
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %39
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %12, align 4
  store i32 1, i32* %9, align 4
  br label %83

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, -32768
  %55 = icmp eq i32 %54, 1008467968
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, -32768
  %67 = icmp eq i32 %66, 666697728
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, -32768
  %71 = icmp eq i32 %70, 1740439552
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %64
  br label %83

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 65011720
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %83

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %80, 4
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %8, align 4
  br label %20

83:                                               ; preds = %76, %72, %47, %20
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %248

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %227

90:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %225, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MAX_PROLOGUE_SIZE, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %98, %100
  br label %102

102:                                              ; preds = %95, %91
  %103 = phi i1 [ false, %91 ], [ %101, %95 ]
  br i1 %103, label %104, label %226

104:                                              ; preds = %102
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i8* @dtrace_fuword32(i8* %109)
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  switch i32 %114, label %214 [
    i32 128, label %115
    i32 129, label %156
    i32 133, label %196
    i32 132, label %196
    i32 131, label %196
    i32 130, label %196
  ]

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 29
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %214

121:                                              ; preds = %115
  %122 = load i32, i32* %11, align 4
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 1, %125
  %127 = and i32 %122, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %214

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* %11, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %11, align 4
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 31
  br i1 %140, label %141, label %155

141:                                              ; preds = %130
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i16
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %143, %148
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = call i8* @dtrace_fuword32(i8* %151)
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %141, %130
  br label %214

156:                                              ; preds = %104
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 29
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %214

162:                                              ; preds = %156
  %163 = load i32, i32* %11, align 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 1, %166
  %168 = and i32 %163, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  br label %214

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* %11, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 31
  br i1 %181, label %182, label %195

182:                                              ; preds = %171
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i16
  %189 = sext i16 %188 to i32
  %190 = add nsw i32 %184, %189
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @dtrace_fuword64(i8* %192)
  %194 = load i32*, i32** %7, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %182, %171
  br label %214

196:                                              ; preds = %104, %104, %104, %104
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 29
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 29
  br i1 %205, label %206, label %207

206:                                              ; preds = %201, %196
  br label %214

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i16
  %212 = sext i16 %211 to i32
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %207, %104, %206, %195, %170, %161, %155, %129, %120
  %215 = load i32, i32* %8, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 %216, 4
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %8, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = load volatile i32, i32* %219, align 4
  %221 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %242

225:                                              ; preds = %214
  br label %91

226:                                              ; preds = %102
  br label %227

227:                                              ; preds = %226, %87
  %228 = load i32*, i32** %5, align 8
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %7, align 8
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %229, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %227
  store i32 -1, i32* %4, align 4
  br label %248

234:                                              ; preds = %227
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* %235, align 4
  %237 = load i32*, i32** %5, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %13, align 4
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, %238
  store i32 %241, i32* %239, align 4
  store i32 0, i32* %4, align 4
  br label %248

242:                                              ; preds = %224, %38
  %243 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %244 = xor i32 %243, -1
  %245 = load i32*, i32** %15, align 8
  %246 = load volatile i32, i32* %245, align 4
  %247 = and i32 %246, %244
  store volatile i32 %247, i32* %245, align 4
  store i32 -1, i32* %4, align 4
  br label %248

248:                                              ; preds = %242, %234, %233, %86
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local i8* @dtrace_fuword32(i8*) #1

declare dso_local i32 @dtrace_fuword64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
