; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_cmdq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_cmdq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { i32, i32, i64 }

@ITS_CMDQ_SIZE = common dso_local global i32 0, align 4
@M_GICV3_ITS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ITS_CMDQ_ALIGN = common dso_local global i32 0, align 4
@GITS_CBASER_VALID = common dso_local global i32 0, align 4
@GITS_CBASER_CACHE_NIWAWB = common dso_local global i32 0, align 4
@GITS_CBASER_CACHE_SHIFT = common dso_local global i32 0, align 4
@GITS_CBASER_SHARE_IS = common dso_local global i32 0, align 4
@GITS_CBASER_SHARE_SHIFT = common dso_local global i32 0, align 4
@GITS_CBASER = common dso_local global i32 0, align 4
@GITS_CBASER_SHARE_MASK = common dso_local global i32 0, align 4
@GITS_CBASER_SHARE_NS = common dso_local global i32 0, align 4
@GITS_CBASER_CACHE_MASK = common dso_local global i32 0, align 4
@GITS_CBASER_CACHE_NIN = common dso_local global i32 0, align 4
@ITS_FLAGS_CMDQ_FLUSH = common dso_local global i32 0, align 4
@GITS_CWRITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gicv3_its_softc*)* @gicv3_its_cmdq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicv3_its_cmdq_init(%struct.gicv3_its_softc* %0) #0 {
  %2 = alloca %struct.gicv3_its_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gicv3_its_softc* %0, %struct.gicv3_its_softc** %2, align 8
  %6 = load i32, i32* @ITS_CMDQ_SIZE, align 4
  %7 = load i32, i32* @M_GICV3_ITS, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ITS_CMDQ_ALIGN, align 4
  %12 = call i32 @contigmalloc(i32 %6, i32 %7, i32 %10, i32 0, i64 281474976710655, i32 %11, i32 0)
  %13 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %14 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %16 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %18 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vtophys(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @GITS_CBASER_VALID, align 4
  %22 = load i32, i32* @GITS_CBASER_CACHE_NIWAWB, align 4
  %23 = load i32, i32* @GITS_CBASER_CACHE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GITS_CBASER_SHARE_IS, align 4
  %29 = load i32, i32* @GITS_CBASER_SHARE_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = load i32, i32* @ITS_CMDQ_SIZE, align 4
  %33 = sdiv i32 %32, 4096
  %34 = sub nsw i32 %33, 1
  %35 = or i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %37 = load i32, i32* @GITS_CBASER, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @gic_its_write_8(%struct.gicv3_its_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %41 = load i32, i32* @GITS_CBASER, align 4
  %42 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GITS_CBASER_SHARE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @GITS_CBASER_SHARE_IS, align 4
  %47 = load i32, i32* @GITS_CBASER_SHARE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @GITS_CBASER_SHARE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @GITS_CBASER_SHARE_NS, align 4
  %55 = load i32, i32* @GITS_CBASER_SHARE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %50
  %59 = load i32, i32* @GITS_CBASER_CACHE_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @GITS_CBASER_SHARE_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* @GITS_CBASER_CACHE_NIN, align 4
  %68 = load i32, i32* @GITS_CBASER_CACHE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @GITS_CBASER_SHARE_NS, align 4
  %73 = load i32, i32* @GITS_CBASER_SHARE_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %78 = load i32, i32* @GITS_CBASER, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @gic_its_write_8(%struct.gicv3_its_softc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %58, %50
  %82 = load i32, i32* @ITS_FLAGS_CMDQ_FLUSH, align 4
  %83 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %84 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %1
  %88 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %89 = load i32, i32* @GITS_CWRITER, align 4
  %90 = call i32 @gic_its_write_8(%struct.gicv3_its_softc* %88, i32 %89, i32 0)
  ret void
}

declare dso_local i32 @contigmalloc(i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @gic_its_write_8(%struct.gicv3_its_softc*, i32, i32) #1

declare dso_local i32 @gic_its_read_8(%struct.gicv3_its_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
