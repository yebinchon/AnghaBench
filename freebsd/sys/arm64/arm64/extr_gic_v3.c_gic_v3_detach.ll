; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { %struct.TYPE_2__, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32** }

@.str = private unnamed_addr constant [32 x i8] c"Trying to detach registered PIC\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i64 0, align 8
@M_GIC_V3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gic_v3_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.gic_v3_softc* @device_get_softc(i32 %6)
  store %struct.gic_v3_softc* %7, %struct.gic_v3_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @device_is_attached(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  br label %19

19:                                               ; preds = %18, %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %23 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %33 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bus_release_resource(i32 %29, i32 %30, i32 %31, i32 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %20

43:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @mp_maxid, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %50 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @M_GIC_V3, align 4
  %57 = call i32 @free(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %44

61:                                               ; preds = %44
  %62 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %63 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @M_GIC_V3, align 4
  %66 = call i32 @free(i32* %64, i32 %65)
  %67 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %68 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @M_GIC_V3, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  ret i32 0
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
