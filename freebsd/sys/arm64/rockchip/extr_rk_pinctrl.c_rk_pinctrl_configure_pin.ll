; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_configure_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_configure_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_pinctrl_softc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 (%struct.rk_pinctrl_softc*, i32)*, %struct.TYPE_3__*, %struct.syscon* (%struct.rk_pinctrl_softc*, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.syscon = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unknown pin %d in bank %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unknown pin stride width %d in bank %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_pinctrl_softc*, i32*)* @rk_pinctrl_configure_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_pinctrl_configure_pin(%struct.rk_pinctrl_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.rk_pinctrl_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.syscon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rk_pinctrl_softc* %0, %struct.rk_pinctrl_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @OF_node_from_xref(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sdiv i32 %31, 8
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %69, %2
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %33
  %42 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %41
  %55 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %56 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %72

68:                                               ; preds = %54, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %33

72:                                               ; preds = %67, %33
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %75 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %73, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %82 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @device_printf(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  br label %248

87:                                               ; preds = %72
  %88 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %89 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load %struct.syscon* (%struct.rk_pinctrl_softc*, i32)*, %struct.syscon* (%struct.rk_pinctrl_softc*, i32)** %91, align 8
  %93 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call %struct.syscon* %92(%struct.rk_pinctrl_softc* %93, i32 %94)
  store %struct.syscon* %95, %struct.syscon** %6, align 8
  %96 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %97 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %14, align 4
  %106 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %107 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %149 [
    i32 4, label %116
    i32 3, label %129
    i32 2, label %143
  ]

116:                                              ; preds = %87
  %117 = load i32, i32* %9, align 4
  %118 = srem i32 %117, 8
  %119 = icmp sge i32 %118, 4
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %9, align 4
  %125 = srem i32 %124, 4
  %126 = mul nsw i32 %125, 4
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = shl i32 15, %127
  store i32 %128, i32* %13, align 4
  br label %165

129:                                              ; preds = %87
  %130 = load i32, i32* %9, align 4
  %131 = srem i32 %130, 8
  %132 = icmp sge i32 %131, 5
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %9, align 4
  %138 = srem i32 %137, 8
  %139 = srem i32 %138, 5
  %140 = mul nsw i32 %139, 3
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = shl i32 7, %141
  store i32 %142, i32* %13, align 4
  br label %165

143:                                              ; preds = %87
  %144 = load i32, i32* %9, align 4
  %145 = srem i32 %144, 8
  %146 = mul nsw i32 %145, 2
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = shl i32 3, %147
  store i32 %148, i32* %13, align 4
  br label %165

149:                                              ; preds = %87
  %150 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %151 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %154 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @device_printf(i32 %152, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163)
  br label %248

165:                                              ; preds = %143, %136, %123
  %166 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @rk_pinctrl_get_fixup(%struct.rk_pinctrl_softc* %166, i32 %167, i32 %168, i32* %14, i32* %13, i32* %12)
  %170 = load %struct.syscon*, %struct.syscon** %6, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %12, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 16
  %178 = or i32 %175, %177
  %179 = call i32 @SYSCON_MODIFY_4(%struct.syscon* %170, i32 %171, i32 %172, i32 %178)
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @rk_pinctrl_parse_bias(i32 %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp sge i32 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %165
  %185 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %186 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32 (%struct.rk_pinctrl_softc*, i32)*, i32 (%struct.rk_pinctrl_softc*, i32)** %188, align 8
  %190 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 %189(%struct.rk_pinctrl_softc* %190, i32 %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %7, align 4
  %194 = mul nsw i32 %193, 16
  %195 = load i32, i32* %9, align 4
  %196 = sdiv i32 %195, 8
  %197 = mul nsw i32 %196, 4
  %198 = add nsw i32 %194, %197
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %14, align 4
  %201 = load i32, i32* %9, align 4
  %202 = srem i32 %201, 8
  %203 = mul nsw i32 %202, 2
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = shl i32 3, %204
  %206 = shl i32 %205, 16
  store i32 %206, i32* %13, align 4
  %207 = load %struct.syscon*, %struct.syscon** %6, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* %13, align 4
  %214 = shl i32 %213, 16
  %215 = or i32 %212, %214
  %216 = call i32 @SYSCON_MODIFY_4(%struct.syscon* %207, i32 %208, i32 %209, i32 %215)
  br label %217

217:                                              ; preds = %184, %165
  %218 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @rk_pinctrl_parse_drive(%struct.rk_pinctrl_softc* %218, i32 %219, i32 %220, i32 %221, i32* %15, i32* %14)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %242

225:                                              ; preds = %217
  %226 = load i32, i32* %9, align 4
  %227 = srem i32 %226, 8
  %228 = mul nsw i32 %227, 2
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = shl i32 3, %229
  %231 = shl i32 %230, 16
  store i32 %231, i32* %13, align 4
  %232 = load %struct.syscon*, %struct.syscon** %6, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* %12, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* %13, align 4
  %239 = shl i32 %238, 16
  %240 = or i32 %237, %239
  %241 = call i32 @SYSCON_MODIFY_4(%struct.syscon* %232, i32 %233, i32 %234, i32 %240)
  br label %242

242:                                              ; preds = %225, %217
  %243 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %3, align 8
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @rk_pinctrl_handle_io(%struct.rk_pinctrl_softc* %243, i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %17, align 4
  br label %248

248:                                              ; preds = %242, %149, %80
  ret void
}

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @rk_pinctrl_get_fixup(%struct.rk_pinctrl_softc*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SYSCON_MODIFY_4(%struct.syscon*, i32, i32, i32) #1

declare dso_local i32 @rk_pinctrl_parse_bias(i32) #1

declare dso_local i32 @rk_pinctrl_parse_drive(%struct.rk_pinctrl_softc*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @rk_pinctrl_handle_io(%struct.rk_pinctrl_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
