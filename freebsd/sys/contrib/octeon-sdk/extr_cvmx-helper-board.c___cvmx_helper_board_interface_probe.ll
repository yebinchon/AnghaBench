; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_interface_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-helper-board.c___cvmx_helper_board_interface_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@CVMX_HELPER_INTERFACE_MODE_PICMG = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@CVMX_HELPER_INTERFACE_MODE_SPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cvmx_helper_board_interface_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = call %struct.TYPE_6__* (...) @cvmx_sysinfo_get()
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %41 [
    i32 140, label %9
    i32 132, label %9
    i32 130, label %9
    i32 131, label %9
    i32 141, label %14
    i32 128, label %19
    i32 135, label %24
    i32 136, label %29
    i32 134, label %30
    i32 133, label %35
    i32 129, label %36
  ]

9:                                                ; preds = %2, %2, %2, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 2, i32* %3, align 4
  br label %43

13:                                               ; preds = %9
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, i32* %3, align 4
  br label %43

18:                                               ; preds = %14
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %43

23:                                               ; preds = %19
  br label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %24
  br label %41

29:                                               ; preds = %2
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %43

34:                                               ; preds = %30
  br label %41

35:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 2, i32* %3, align 4
  br label %43

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %2, %34, %29, %28, %23, %18, %13
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %39, %35, %33, %27, %22, %17, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_6__* @cvmx_sysinfo_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
