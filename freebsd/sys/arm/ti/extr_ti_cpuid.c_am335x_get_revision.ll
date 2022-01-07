; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_cpuid.c_am335x_get_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_cpuid.c_am335x_get_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdtbus_bs_tag = common dso_local global i32 0, align 4
@AM335X_CONTROL_BASE = common dso_local global i32 0, align 4
@AM335X_CONTROL_SIZE = common dso_local global i32 0, align 4
@AM335X_CONTROL_DEVICE_ID = common dso_local global i32 0, align 4
@chip_revision = common dso_local global i8* null, align 8
@AM335X_CONTROL_DEV_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Texas Instruments AM335%c Processor, Revision ES%u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @am335x_get_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_get_revision() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @fdtbus_bs_tag, align 4
  %7 = load i32, i32* @AM335X_CONTROL_BASE, align 4
  %8 = load i32, i32* @AM335X_CONTROL_SIZE, align 4
  %9 = call i32 @bus_space_map(i32 %6, i32 %7, i32 %8, i32 0, i32* %3)
  %10 = load i32, i32* @fdtbus_bs_tag, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @AM335X_CONTROL_DEVICE_ID, align 4
  %13 = call i8* @bus_space_read_4(i32 %10, i32 %11, i32 %12)
  store i8* %13, i8** @chip_revision, align 8
  %14 = load i32, i32* @fdtbus_bs_tag, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AM335X_CONTROL_DEV_FEATURE, align 4
  %17 = call i8* @bus_space_read_4(i32 %14, i32 %15, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @fdtbus_bs_tag, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AM335X_CONTROL_SIZE, align 4
  %22 = call i32 @bus_space_unmap(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %1, align 4
  switch i32 %23, label %30 [
    i32 16712578, label %24
    i32 553583490, label %25
    i32 16712579, label %26
    i32 16647043, label %27
    i32 553583491, label %28
    i32 553517955, label %29
  ]

24:                                               ; preds = %0
  store i8 50, i8* %2, align 1
  br label %31

25:                                               ; preds = %0
  store i8 52, i8* %2, align 1
  br label %31

26:                                               ; preds = %0
  store i8 54, i8* %2, align 1
  br label %31

27:                                               ; preds = %0
  store i8 55, i8* %2, align 1
  br label %31

28:                                               ; preds = %0
  store i8 56, i8* %2, align 1
  br label %31

29:                                               ; preds = %0
  store i8 57, i8* %2, align 1
  br label %31

30:                                               ; preds = %0
  store i8 120, i8* %2, align 1
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %26, %25, %24
  %32 = load i8*, i8** @chip_revision, align 8
  %33 = call i32 @AM335X_DEVREV(i8* %32)
  switch i32 %33, label %37 [
    i32 0, label %34
    i32 1, label %35
    i32 2, label %36
  ]

34:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %40

35:                                               ; preds = %31
  store i32 2, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %40

36:                                               ; preds = %31
  store i32 2, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %40

37:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  %38 = load i8*, i8** @chip_revision, align 8
  %39 = call i32 @AM335X_DEVREV(i8* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %36, %35, %34
  %41 = load i8, i8* %2, align 1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8 signext %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i8* @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @AM335X_DEVREV(i8*) #1

declare dso_local i32 @printf(i8*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
