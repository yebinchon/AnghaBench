; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_pit_readback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpit.c_pit_readback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpit = type { i32 }

@TIMER_RB_CTR_0 = common dso_local global i32 0, align 4
@TIMER_RB_CTR_1 = common dso_local global i32 0, align 4
@TIMER_RB_CTR_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vatpit*, i32)* @pit_readback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_readback(%struct.vatpit* %0, i32 %1) #0 {
  %3 = alloca %struct.vatpit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vatpit* %0, %struct.vatpit** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TIMER_RB_CTR_0, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pit_readback1(%struct.vatpit* %11, i32 0, i32 %12)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TIMER_RB_CTR_1, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pit_readback1(%struct.vatpit* %23, i32 1, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %22, %17, %14
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TIMER_RB_CTR_2, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.vatpit*, %struct.vatpit** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pit_readback1(%struct.vatpit* %35, i32 2, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29, %26
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @pit_readback1(%struct.vatpit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
