; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_pl050.c_pl050_kmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@kmi_attached = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"arm,pl050\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"PL050 Keyboard/Mouse Interface\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pl050_kmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl050_kmi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @ofw_bus_status_okay(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i64, i64* @kmi_attached, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ofw_bus_is_compatible(i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_set_desc(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %18, %12, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i64 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
