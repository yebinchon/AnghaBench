; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___get_marvell_phy_link_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___get_marvell_phy_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @__get_marvell_phy_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_marvell_phy_link_state(%struct.TYPE_5__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 255
  %11 = call i32 @cvmx_mdio_read(i32 %8, i32 %10, i32 17)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 255
  %20 = call i32 @cvmx_mdio_read(i32 %17, i32 %19, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 2048
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 2048
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 13
  %37 = and i32 %36, 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 14
  %42 = and i32 %41, 3
  switch i32 %42, label %54 [
    i32 0, label %43
    i32 1, label %46
    i32 2, label %49
    i32 3, label %52
  ]

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 10, i32* %45, align 8
  br label %54

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 100, i32* %48, align 8
  br label %54

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  store i32 1000, i32* %51, align 8
  br label %54

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %0, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %32, %52, %49, %46, %43
  br label %55

55:                                               ; preds = %54, %28
  ret void
}

declare dso_local i32 @cvmx_mdio_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
