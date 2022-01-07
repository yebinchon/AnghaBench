; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_device_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_device_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_dev = type { i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i64 }
%struct.gicv3_its_softc = type { i32, i32, i32 }

@M_GICV3_ITS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@GITS_TYPER = common dso_local global i32 0, align 4
@LPI_INT_TRANS_TAB_MAX_ADDR = common dso_local global i32 0, align 4
@LPI_INT_TRANS_TAB_ALIGN = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_dev* (i32, i32, i8*)* @its_device_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_dev* @its_device_get(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.its_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gicv3_its_softc*, align 8
  %9 = alloca %struct.its_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.gicv3_its_softc* @device_get_softc(i32 %12)
  store %struct.gicv3_its_softc* %13, %struct.gicv3_its_softc** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.its_dev* @its_device_find(i32 %14, i32 %15)
  store %struct.its_dev* %16, %struct.its_dev** %9, align 8
  %17 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %18 = icmp ne %struct.its_dev* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  store %struct.its_dev* %20, %struct.its_dev** %4, align 8
  br label %123

21:                                               ; preds = %3
  %22 = load i32, i32* @M_GICV3_ITS, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call %struct.its_dev* @malloc(i32 56, i32 %22, i32 %25)
  store %struct.its_dev* %26, %struct.its_dev** %9, align 8
  %27 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %28 = icmp eq %struct.its_dev* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store %struct.its_dev* null, %struct.its_dev** %4, align 8
  br label %123

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %33 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @its_get_devid(i32 %34)
  %36 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %37 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %39 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %43 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %47 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  %49 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %50 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @M_FIRSTFIT, align 4
  %54 = load i32, i32* @M_NOWAIT, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @vmem_alloc(i32 %51, i8* %52, i32 %55, i32* %10)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %30
  %59 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %60 = load i32, i32* @M_GICV3_ITS, align 4
  %61 = call i32 @free(%struct.its_dev* %59, i32 %60)
  store %struct.its_dev* null, %struct.its_dev** %4, align 8
  br label %123

62:                                               ; preds = %30
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %65 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %68 = load i32, i32* @GITS_TYPER, align 4
  %69 = call i32 @gic_its_read_8(%struct.gicv3_its_softc* %67, i32 %68)
  %70 = call i64 @GITS_TYPER_ITTES(i32 %69)
  store i64 %70, i64* %11, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @MAX(i8* %71, i32 2)
  %73 = load i64, i64* %11, align 8
  %74 = mul i64 %72, %73
  %75 = call i32 @roundup2(i64 %74, i32 256)
  %76 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %77 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %79 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @M_GICV3_ITS, align 4
  %82 = load i32, i32* @M_NOWAIT, align 4
  %83 = load i32, i32* @M_ZERO, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @LPI_INT_TRANS_TAB_MAX_ADDR, align 4
  %86 = load i32, i32* @LPI_INT_TRANS_TAB_ALIGN, align 4
  %87 = call i64 @contigmalloc(i32 %80, i32 %81, i32 %84, i32 0, i32 %85, i32 %86, i32 0)
  %88 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %89 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %91 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %62
  %95 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %96 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %99 = getelementptr inbounds %struct.its_dev, %struct.its_dev* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @vmem_free(i32 %97, i32 %101, i8* %102)
  %104 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %105 = load i32, i32* @M_GICV3_ITS, align 4
  %106 = call i32 @free(%struct.its_dev* %104, i32 %105)
  store %struct.its_dev* null, %struct.its_dev** %4, align 8
  br label %123

107:                                              ; preds = %62
  %108 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %109 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %108, i32 0, i32 0
  %110 = call i32 @mtx_lock_spin(i32* %109)
  %111 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %112 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %111, i32 0, i32 1
  %113 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %114 = load i32, i32* @entry, align 4
  %115 = call i32 @TAILQ_INSERT_TAIL(i32* %112, %struct.its_dev* %113, i32 %114)
  %116 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %8, align 8
  %117 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %116, i32 0, i32 0
  %118 = call i32 @mtx_unlock_spin(i32* %117)
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  %121 = call i32 @its_cmd_mapd(i32 %119, %struct.its_dev* %120, i32 1)
  %122 = load %struct.its_dev*, %struct.its_dev** %9, align 8
  store %struct.its_dev* %122, %struct.its_dev** %4, align 8
  br label %123

123:                                              ; preds = %107, %94, %58, %29, %19
  %124 = load %struct.its_dev*, %struct.its_dev** %4, align 8
  ret %struct.its_dev* %124
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local %struct.its_dev* @its_device_find(i32, i32) #1

declare dso_local %struct.its_dev* @malloc(i32, i32, i32) #1

declare dso_local i32 @its_get_devid(i32) #1

declare dso_local i64 @vmem_alloc(i32, i8*, i32, i32*) #1

declare dso_local i32 @free(%struct.its_dev*, i32) #1

declare dso_local i64 @GITS_TYPER_ITTES(i32) #1

declare dso_local i32 @gic_its_read_8(%struct.gicv3_its_softc*, i32) #1

declare dso_local i32 @roundup2(i64, i32) #1

declare dso_local i64 @MAX(i8*, i32) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmem_free(i32, i32, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.its_dev*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @its_cmd_mapd(i32, %struct.its_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
