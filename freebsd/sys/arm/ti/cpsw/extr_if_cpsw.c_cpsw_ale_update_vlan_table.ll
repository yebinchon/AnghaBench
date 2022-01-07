; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_update_vlan_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_ale_update_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }

@CPSW_MAX_ALE_ENTRIES = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_softc*, i32, i32, i32, i32, i32)* @cpsw_ale_update_vlan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ale_update_vlan_table(%struct.cpsw_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpsw_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32], align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %14, align 4
  store i32 5, i32* %15, align 4
  br label %18

18:                                               ; preds = %43, %6
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @CPSW_MAX_ALE_ENTRIES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %26 = call i32 @cpsw_ale_read_entry(%struct.cpsw_softc* %23, i32 %24, i32* %25)
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %31 = call i64 @ALE_TYPE(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %33, %29, %22
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %37 = call i32 @ALE_VLAN(i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %16, align 4
  br label %46

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %18

46:                                               ; preds = %40, %18
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %7, align 4
  br label %82

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %11, align 4
  %57 = and i32 %56, 7
  %58 = shl i32 %57, 24
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 %60, 16
  %62 = or i32 %58, %61
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %63, 7
  %65 = shl i32 %64, 8
  %66 = or i32 %62, %65
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 7
  %69 = or i32 %66, %68
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @ALE_TYPE_VLAN, align 4
  %72 = shl i32 %71, 28
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 16
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 0, i32* %77, align 4
  %78 = load %struct.cpsw_softc*, %struct.cpsw_softc** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %81 = call i32 @cpsw_ale_write_entry(%struct.cpsw_softc* %78, i32 %79, i32* %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %55, %52
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @cpsw_ale_read_entry(%struct.cpsw_softc*, i32, i32*) #1

declare dso_local i64 @ALE_TYPE(i32*) #1

declare dso_local i32 @ALE_VLAN(i32*) #1

declare dso_local i32 @cpsw_ale_write_entry(%struct.cpsw_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
