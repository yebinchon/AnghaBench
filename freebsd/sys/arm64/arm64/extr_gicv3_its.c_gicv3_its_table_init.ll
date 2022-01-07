; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@ITS_FLAGS_ERRATA_CAVIUM_22375 = common dso_local global i32 0, align 4
@GITS_TYPER = common dso_local global i32 0, align 4
@GITS_BASER_CACHE_WAWB = common dso_local global i32 0, align 4
@GITS_BASER_SHARE_IS = common dso_local global i32 0, align 4
@GITS_BASER_NUM = common dso_local global i32 0, align 4
@M_GICV3_ITS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GITS_BASER_VALID = common dso_local global i32 0, align 4
@GITS_BASER_CACHE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_TYPE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_ESIZE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_PA_MASK = common dso_local global i32 0, align 4
@GITS_BASER_SHARE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_PSZ_MASK = common dso_local global i32 0, align 4
@GITS_BASER_SIZE_MASK = common dso_local global i32 0, align 4
@GITS_BASER_CACHE_SHIFT = common dso_local global i32 0, align 4
@GITS_BASER_TYPE_SHIFT = common dso_local global i32 0, align 4
@GITS_BASER_ESIZE_SHIFT = common dso_local global i64 0, align 8
@GITS_BASER_SHARE_SHIFT = common dso_local global i32 0, align 4
@GITS_BASER_PSZ_4K = common dso_local global i32 0, align 4
@GITS_BASER_PSZ_SHIFT = common dso_local global i32 0, align 4
@GITS_BASER_PSZ_16K = common dso_local global i32 0, align 4
@GITS_BASER_PSZ_64K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"GITS_BASER%d: unable to be updated: %lx != %lx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gicv3_its_softc*)* @gicv3_its_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gicv3_its_table_init(i32 %0, %struct.gicv3_its_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gicv3_its_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gicv3_its_softc* %1, %struct.gicv3_its_softc** %5, align 8
  %21 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %22 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ITS_FLAGS_ERRATA_CAVIUM_22375, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 20, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %30 = load i32, i32* @GITS_TYPER, align 4
  %31 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %29, i32 %30)
  %32 = call i32 @GITS_TYPER_DEVB(i32 %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* @GITS_BASER_CACHE_WAWB, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* @GITS_BASER_SHARE_IS, align 4
  store i32 %35, i32* %10, align 4
  store i32 128, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %212, %34
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @GITS_BASER_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %215

40:                                               ; preds = %36
  %41 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @GITS_BASER(i32 %42)
  %44 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %41, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @GITS_BASER_TYPE(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @GITS_BASER_ESIZE(i32 %47)
  store i64 %48, i64* %13, align 8
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %62 [
    i32 134, label %50
    i32 131, label %59
    i32 132, label %59
    i32 133, label %59
  ]

50:                                               ; preds = %40
  %51 = load i32, i32* %20, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %15, align 8
  %56 = mul i64 %54, %55
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i64 @roundup2(i64 %57, i32 128)
  store i64 %58, i64* %14, align 8
  br label %63

59:                                               ; preds = %40, %40, %40
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %14, align 8
  br label %63

62:                                               ; preds = %40
  br label %212

63:                                               ; preds = %59, %50
  %64 = load i64, i64* %14, align 8
  %65 = call i64 @howmany(i64 %64, i32 130)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = mul i64 %66, 130
  %68 = load i32, i32* @M_GICV3_ITS, align 4
  %69 = load i32, i32* @M_WAITOK, align 4
  %70 = load i32, i32* @M_ZERO, align 4
  %71 = or i32 %69, %70
  %72 = call i64 @contigmalloc(i64 %67, i32 %68, i32 %71, i32 0, i64 281474976710655, i32 128, i32 0)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %75 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i64 %73, i64* %80, align 8
  %81 = load i64, i64* %17, align 8
  %82 = mul i64 %81, 130
  %83 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %84 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 %82, i64* %89, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @vtophys(i64 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %63, %180, %196, %197
  %93 = load i64, i64* %14, align 8
  %94 = load i32, i32* %19, align 4
  %95 = call i64 @howmany(i64 %93, i32 %94)
  store i64 %95, i64* %16, align 8
  %96 = load i32, i32* @GITS_BASER_VALID, align 4
  %97 = load i32, i32* @GITS_BASER_CACHE_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @GITS_BASER_TYPE_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @GITS_BASER_ESIZE_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @GITS_BASER_PA_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @GITS_BASER_SHARE_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @GITS_BASER_PSZ_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @GITS_BASER_SIZE_MASK, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* @GITS_BASER_VALID, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @GITS_BASER_CACHE_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @GITS_BASER_TYPE_SHIFT, align 4
  %121 = shl i32 %119, %120
  %122 = or i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %13, align 8
  %125 = sub i64 %124, 1
  %126 = load i64, i64* @GITS_BASER_ESIZE_SHIFT, align 8
  %127 = shl i64 %125, %126
  %128 = or i64 %123, %127
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = or i64 %128, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @GITS_BASER_SHARE_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = or i64 %131, %135
  %137 = load i64, i64* %16, align 8
  %138 = sub i64 %137, 1
  %139 = or i64 %136, %138
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = or i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %19, align 4
  switch i32 %144, label %163 [
    i32 130, label %145
    i32 129, label %151
    i32 128, label %157
  ]

145:                                              ; preds = %92
  %146 = load i32, i32* @GITS_BASER_PSZ_4K, align 4
  %147 = load i32, i32* @GITS_BASER_PSZ_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  br label %163

151:                                              ; preds = %92
  %152 = load i32, i32* @GITS_BASER_PSZ_16K, align 4
  %153 = load i32, i32* @GITS_BASER_PSZ_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  br label %163

157:                                              ; preds = %92
  %158 = load i32, i32* @GITS_BASER_PSZ_64K, align 4
  %159 = load i32, i32* @GITS_BASER_PSZ_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %92, %157, %151, %145
  %164 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @GITS_BASER(i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @gic_its_write_8(%struct.gicv3_its_softc* %164, i32 %166, i32 %167)
  %169 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %5, align 8
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @GITS_BASER(i32 %170)
  %172 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %169, i32 %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* @GITS_BASER_SHARE_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* @GITS_BASER_SHARE_MASK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %175, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %163
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @GITS_BASER_SHARE_MASK, align 4
  %183 = and i32 %181, %182
  %184 = load i32, i32* @GITS_BASER_SHARE_SHIFT, align 4
  %185 = ashr i32 %183, %184
  store i32 %185, i32* %10, align 4
  br label %92

186:                                              ; preds = %163
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* @GITS_BASER_PSZ_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @GITS_BASER_PSZ_MASK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %186
  %195 = load i32, i32* %19, align 4
  switch i32 %195, label %198 [
    i32 129, label %196
    i32 128, label %197
  ]

196:                                              ; preds = %194
  store i32 130, i32* %19, align 4
  br label %92

197:                                              ; preds = %194
  store i32 129, i32* %19, align 4
  br label %92

198:                                              ; preds = %194
  br label %199

199:                                              ; preds = %198, %186
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @device_printf(i32 %204, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* @ENXIO, align 4
  store i32 %209, i32* %3, align 4
  br label %216

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211, %62
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %18, align 4
  br label %36

215:                                              ; preds = %36
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %203
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @GITS_TYPER_DEVB(i32) #1

declare dso_local i32 @gic_its_read_8(%struct.gicv3_its_softc*, i32) #1

declare dso_local i32 @GITS_BASER(i32) #1

declare dso_local i32 @GITS_BASER_TYPE(i32) #1

declare dso_local i64 @GITS_BASER_ESIZE(i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i64 @howmany(i64, i32) #1

declare dso_local i64 @contigmalloc(i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @gic_its_write_8(%struct.gicv3_its_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
