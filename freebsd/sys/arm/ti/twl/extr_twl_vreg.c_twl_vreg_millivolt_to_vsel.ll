; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_millivolt_to_vsel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_millivolt_to_vsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32 }
%struct.twl_regulator_entry = type { i64*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UNDF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*)* @twl_vreg_millivolt_to_vsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_millivolt_to_vsel(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.twl_vreg_softc*, align 8
  %7 = alloca %struct.twl_regulator_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %6, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %6, align 8
  %15 = call i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc* %14)
  %16 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %7, align 8
  %17 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  store i32 2147483647, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %7, align 8
  %26 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %23
  %30 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %7, align 8
  %31 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UNDF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %60

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %7, align 8
  %43 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = sub nsw i32 %41, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @abs(i32 %51) #3
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @abs(i32 %56) #3
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %55, %40
  br label %60

60:                                               ; preds = %59, %39
  %61 = load i32, i32* %12, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i32, i32* %11, align 4
  %65 = icmp sgt i32 %64, 100
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = icmp ult i32 %67, 256
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %5, align 4
  br label %74

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %69, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
