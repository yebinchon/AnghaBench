; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pruss_softc = type { i64, i64, i32, %struct.TYPE_4__*, i64*, i64* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TI_PRUSS_HOST_IRQS = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IRQ %d KQueue not empty!\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_pruss_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pruss_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pruss_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ti_pruss_softc* @device_get_softc(i32 %5)
  store %struct.ti_pruss_softc* %6, %struct.ti_pruss_softc** %3, align 8
  %7 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %8 = call i32 @ti_pruss_interrupts_clear(%struct.ti_pruss_softc* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %127, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TI_PRUSS_HOST_IRQS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %130

13:                                               ; preds = %9
  %14 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ti_pruss_interrupts_enable(%struct.ti_pruss_softc* %14, i32 %15, i32 0)
  %17 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %17, i32 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %27, i32 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %34, i32 0, i32 5
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @bus_teardown_intr(i32 %26, i64 %33, i64 %40)
  br label %42

42:                                               ; preds = %25, %13
  %43 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %42
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @SYS_RES_IRQ, align 4
  %54 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %54, i32 0, i32 4
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @rman_get_rid(i64 %60)
  %62 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %62, i32 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @bus_release_resource(i32 %52, i32 %53, i32 %61, i64 %68)
  br label %70

70:                                               ; preds = %51, %42
  %71 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %72 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = call i32 @knlist_clear(i32* %78, i32 0)
  %80 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = call i32 @mtx_lock(i32* %86)
  %88 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %89 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = call i32 @knlist_empty(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %70
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %70
  %102 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %103 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @mtx_unlock(i32* %108)
  %110 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %111 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = call i32 @knlist_destroy(i32* %117)
  %119 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %120 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 @mtx_destroy(i32* %125)
  br label %127

127:                                              ; preds = %101
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %9

130:                                              ; preds = %9
  %131 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %132 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %131, i32 0, i32 2
  %133 = call i32 @mtx_destroy(i32* %132)
  %134 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %135 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @SYS_RES_MEMORY, align 4
  %141 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @rman_get_rid(i64 %143)
  %145 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %146 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @bus_release_resource(i32 %139, i32 %140, i32 %144, i64 %147)
  br label %149

149:                                              ; preds = %138, %130
  %150 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %151 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @destroy_dev(i64 %157)
  br label %159

159:                                              ; preds = %154, %149
  ret i32 0
}

declare dso_local %struct.ti_pruss_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_pruss_interrupts_clear(%struct.ti_pruss_softc*) #1

declare dso_local i32 @ti_pruss_interrupts_enable(%struct.ti_pruss_softc*, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_get_rid(i64) #1

declare dso_local i32 @knlist_clear(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @knlist_empty(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @knlist_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @destroy_dev(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
