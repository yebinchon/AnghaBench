; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_do_gic_v3_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_do_gic_v3_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i32 }
%struct.gic_v3_softc = type { i64 }
%struct.intr_map_data_msi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, i64*, i32*, i32*)* @do_gic_v3_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_gic_v3_map_intr(i32 %0, %struct.intr_map_data* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intr_map_data*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gic_v3_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.intr_map_data_msi*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.gic_v3_softc* @device_get_softc(i32 %17)
  store %struct.gic_v3_softc* %18, %struct.gic_v3_softc** %12, align 8
  %19 = load %struct.intr_map_data*, %struct.intr_map_data** %8, align 8
  %20 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %32 [
    i32 134, label %22
  ]

22:                                               ; preds = %5
  %23 = load %struct.intr_map_data*, %struct.intr_map_data** %8, align 8
  %24 = bitcast %struct.intr_map_data* %23 to %struct.intr_map_data_msi*
  store %struct.intr_map_data_msi* %24, %struct.intr_map_data_msi** %15, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.intr_map_data_msi*, %struct.intr_map_data_msi** %15, align 8
  %27 = call i32 @gic_map_msi(i32 %25, %struct.intr_map_data_msi* %26, i64* %16, i32* %13, i32* %14)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %67

31:                                               ; preds = %22
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  br label %67

34:                                               ; preds = %31
  %35 = load i64, i64* %16, align 8
  %36 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %12, align 8
  %37 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %67

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %45 [
    i32 133, label %44
    i32 131, label %44
    i32 132, label %44
  ]

44:                                               ; preds = %42, %42, %42
  br label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %6, align 4
  br label %67

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  switch i32 %48, label %50 [
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
  ]

49:                                               ; preds = %47, %47, %47
  br label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  br label %67

52:                                               ; preds = %49
  %53 = load i64, i64* %16, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63, %60
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %50, %45, %40, %32, %29
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i32 @gic_map_msi(i32, %struct.intr_map_data_msi*, i64*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
