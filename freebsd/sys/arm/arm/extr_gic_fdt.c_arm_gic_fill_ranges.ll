; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_arm_gic_fill_ranges.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic_fdt.c_arm_gic_fill_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_fdt_softc = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.arm_gic_fdt_softc*)* @arm_gic_fill_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_fill_ranges(i32 %0, %struct.arm_gic_fdt_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_gic_fdt_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.arm_gic_fdt_softc* %1, %struct.arm_gic_fdt_softc** %5, align 8
  store i32 1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OF_parent(i32 %12)
  %14 = call i32 @OF_getencprop(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %15 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %16 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %19 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %18, i32 0, i32 0
  %20 = call i32 @OF_getencprop(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %19, i32 4)
  %21 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %22 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %21, i32 0, i32 1
  store i32 2, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %25 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %24, i32 0, i32 1
  %26 = call i32 @OF_getencprop(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 4)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @OF_getproplen(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %233

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %37 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %42 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %35, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %49 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %52 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %233

57:                                               ; preds = %32
  %58 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %59 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 12
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = load i32, i32* @M_WAITOK, align 4
  %67 = call i8* @malloc(i32 %64, i32 %65, i32 %66)
  %68 = bitcast i8* %67 to %struct.TYPE_3__*
  %69 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %70 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @M_DEVBUF, align 4
  %74 = load i32, i32* @M_WAITOK, align 4
  %75 = call i8* @malloc(i32 %72, i32 %73, i32 %74)
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** %7, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @OF_getencprop(i32 %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %78, i32 %79)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %222, %57
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %84 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %225

88:                                               ; preds = %81
  %89 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %90 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 0, i32* %96, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %130, %88
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %100 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %105 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 32
  store i32 %113, i32* %111, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %121 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %119
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %103
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %97

133:                                              ; preds = %97
  %134 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %135 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  store i32 0, i32* %11, align 4
  br label %142

142:                                              ; preds = %173, %133
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %148 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 32
  store i32 %156, i32* %154, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %164 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %162
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %146
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %142

176:                                              ; preds = %142
  %177 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %178 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 2
  store i32 0, i32* %184, align 4
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %218, %176
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %188 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %185
  %192 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %193 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 32
  store i32 %201, i32* %199, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %209 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %207
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %191
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %11, align 4
  br label %185

221:                                              ; preds = %185
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %9, align 4
  br label %81

225:                                              ; preds = %81
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* @M_DEVBUF, align 4
  %228 = call i32 @free(i32* %226, i32 %227)
  %229 = load %struct.arm_gic_fdt_softc*, %struct.arm_gic_fdt_softc** %5, align 8
  %230 = getelementptr inbounds %struct.arm_gic_fdt_softc, %struct.arm_gic_fdt_softc* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %225, %56, %31
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i32 @OF_getproplen(i32, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
