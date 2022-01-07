; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_gic_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i32 }

@mp_ncpus = common dso_local global i32 0, align 4
@MAXCPU = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@arm_gic_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_gic_softc*, i64, i32*)* @gic_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_bind(%struct.arm_gic_softc* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_gic_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.arm_gic_softc* %0, %struct.arm_gic_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @mp_ncpus, align 4
  %12 = call i64 @min(i32 %11, i32 8)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAXCPU, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @CPU_ISSET(i64 %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %57

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %14

29:                                               ; preds = %14
  store i64 0, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i64, i64* %8, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @CPU_ISSET(i64 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i64*, i64** @arm_gic_map, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %30

50:                                               ; preds = %30
  %51 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %5, align 8
  %52 = call i64 @GICD_ITARGETSR(i32 0)
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @gic_d_write_1(%struct.arm_gic_softc* %51, i64 %54, i64 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %23
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i64 @CPU_ISSET(i64, i32*) #1

declare dso_local i32 @gic_d_write_1(%struct.arm_gic_softc*, i64, i64) #1

declare dso_local i64 @GICD_ITARGETSR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
