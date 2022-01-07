; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_has_internal_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_has_internal_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"allwinner,use-internal-phy\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"allwinner,sun8i-h3-mdio-internal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @awg_has_internal_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_has_internal_phy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @ofw_bus_get_node(i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @OF_hasprop(i64 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @awg_get_phy_node(i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @OF_parent(i64 %18)
  %20 = call i64 @ofw_bus_node_is_compatible(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @awg_get_phy_node(i32) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @OF_parent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
