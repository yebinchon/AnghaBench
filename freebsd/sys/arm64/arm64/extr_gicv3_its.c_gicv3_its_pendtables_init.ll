; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_pendtables_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_gicv3_its_pendtables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { i64*, i32 }

@mp_maxid = common dso_local global i32 0, align 4
@LPI_PENDTAB_SIZE = common dso_local global i32 0, align 4
@M_GICV3_ITS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@LPI_PENDTAB_MAX_ADDR = common dso_local global i32 0, align 4
@LPI_PENDTAB_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gicv3_its_softc*)* @gicv3_its_pendtables_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gicv3_its_pendtables_init(%struct.gicv3_its_softc* %0) #0 {
  %2 = alloca %struct.gicv3_its_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.gicv3_its_softc* %0, %struct.gicv3_its_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @mp_maxid, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %10, i32 0, i32 1
  %12 = call i64 @CPU_ISSET(i32 %9, i32* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %39

15:                                               ; preds = %8
  %16 = load i32, i32* @LPI_PENDTAB_SIZE, align 4
  %17 = load i32, i32* @M_GICV3_ITS, align 4
  %18 = load i32, i32* @M_WAITOK, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @LPI_PENDTAB_MAX_ADDR, align 4
  %22 = load i32, i32* @LPI_PENDTAB_ALIGN, align 4
  %23 = call i64 @contigmalloc(i32 %16, i32 %17, i32 %20, i32 0, i32 %21, i32 %22, i32 0)
  %24 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %25 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 %23, i64* %29, align 8
  %30 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %2, align 8
  %31 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @LPI_PENDTAB_SIZE, align 4
  %38 = call i32 @cpu_dcache_wb_range(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %15, %14
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

declare dso_local i64 @CPU_ISSET(i32, i32*) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_dcache_wb_range(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
